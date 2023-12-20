from sense_hat import SenseHat
from formats import NeoCayenneLPP
import time
from subprocess import PIPE, Popen
from lora import *

writeconfig = 1

sense = SenseHat()

def initValue(getter, color, lBound, hBound, mid = None, color2 = None):
    return {
        "getter": getter,
        "color": color,
        "lBound": lBound,
        "hBound": hBound,
        "mid": mid,
        "color2": color2
    }

simpleGetters = {
    "humidity": initValue(lambda sense : sense.get_humidity(), [0, 255, 0], 0, 100),
    #"temperature": initValue(lambda sense : sense.get_temperature(), [255, 128, 0]),
    "tempFromHumid": initValue(lambda sense : sense.get_temperature_from_humidity(), [255, 0, 0], -20, 40, 0, [0, 128, 255]),
    "tempFromPres" : initValue(lambda sense : sense.get_temperature_from_pressure(), [255, 0, 0], -20, 40, 0, [0, 128, 255]),
    "pressure": initValue(lambda sense : sense.get_pressure(), [255, 0, 255], 980, 1020, 1000, [255, 0, 158])
}

def updateMatrix(sense):
    sense.clear()
    line = 0
    for k, v in simpleGetters.items():
        value = v["getter"](sense)
        relvalue = 0
            
        if v["mid"] != None:
            if value < v["mid"]:
                color = v["color2"]
                range_ = v["mid"] - v["lBound"]
                relvalue = (v["mid"] - value) / range_
            else:
                color = v["color"]
                range_ = v["hBound"] - v["mid"]
                relvalue = (value - v["mid"]) / range_
        else:
            color = v["color"]
            range_ = v["hBound"] - v["lBound"]
            relvalue = (value - v["lBound"]) / range_
        
        print(k)
        print(relvalue)
        
        progress = 0
        for i in range(8):
            if progress > relvalue:
                break
            sense.set_pixel(i, line, color)   
            sense.set_pixel(i, line + 1, color)
            progress += 1/8
            
        line += 2 

def getValues(sense):
    result = {}
    for k, v in simpleGetters.items():
        result[k] = v["getter"](sense)
        
    return result

def encode(temperaturePress, temperatureHumidity, pressure, humidity):
    lpp = NeoCayenneLPP()
    lpp.add_temperature(0, temperatureHumidity + temperaturePress / 2)
    lpp.add_pressure(0, pressure)
    lpp.add_humidity(0, humidity)

    return lpp

sense.low_light = True

init_lora()

while True:
    values = getValues(sense)
    print(values)
    message = encode(
        humidity=values["humidity"], 
        pressure=values["pressure"], 
        temperatureHumidity=values["tempFromHumid"], 
        temperaturePress=values["tempFromPres"]
    )

    clear_recv()
    send_message(message)

    updateMatrix(sense)

    time.sleep(10)
