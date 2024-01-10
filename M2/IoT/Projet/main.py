from sense_hat import SenseHat
from formats import NeoCayenneLPP

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
    "humidity": lambda sense : sense.get_humidity(),
    "tempFromHumid": lambda sense : sense.get_temperature_from_humidity(),
    "tempFromPres" : lambda sense : sense.get_temperature_from_pressure(),
    "pressure": lambda sense : sense.get_pressure()
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
    
def encode(temperaturePress, temperatureHumidity, pressure, humidity):
    lpp = NeoCayenneLPP()
    lpp.add_temperature()

def getValues(sense):
    result = {}
    for k, v in simpleGetters.items():
        result[k] = v["getter"](sense)
        
    return result

values = getValues(sense)
print(values)

#for k, v in simpleGetters.items():
#    sense.show_message("{:.2f}".format(values[k]), text_colour=v["color"])

sense.low_light = True
updateMatrix(sense)