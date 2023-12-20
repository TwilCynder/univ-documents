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
    "humidity": initValue(lambda sense : sense.get_humidity(), [0, 255, 0], 0, 100),
    #"temperature": initValue(lambda sense : sense.get_temperature(), [255, 128, 0]),
    "tempFromHumid": initValue(lambda sense : sense.get_temperature_from_humidity(), [255, 0, 0], -20, 40, 0, [0, 128, 255]),
    "tempFromPres" : initValue(lambda sense : sense.get_temperature_from_pressure(), [255, 0, 0], -20, 40, 0, [0, 128, 255]),
    "pressure": initValue(lambda sense : sense.get_pressure(), [255, 0, 255], 980, 1020, 1000, [255, 0, 158])
}
def getValues(sense):
    result = {}
    for k, v in simpleGetters.items():
        result[k] = v["getter"](sense)
        
    return result

values = getValues(sense)
print(values)
