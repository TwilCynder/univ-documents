from sense_hat import SenseHat

sense = SenseHat()

def initValue(getter, color, name = ""):
    return {
        "getter": getter,
        "color": color,
        "name": name
    }

simpleGetters = {
    "humidity": initValue(lambda sense : sense.get_humidity(), [255, 0, 0]),
    "temperature": initValue(lambda sense : sense.get_temperature(), [255, 128, 0]),
    "tempFromHumid": initValue(lambda sense : sense.get_temperature_from_humidity(), [255, 200, 0]),
    "tempFromPres" : initValue(lambda sense : sense.get_temperature_from_pressure(), [0, 255, 0]),
    "pressure": initValue(lambda sense : sense.get_pressure(), [0, 0, 255])
}

def getValues(sense):
    result = {}
    for k, v in simpleGetters.items():
        result[k] = v["getter"](sense)
        
    return result

values = getValues(sense)
print(values)

for k, v in simpleGetters.items():
    sense.show_message("{:.2f}".format(values[k]), text_colour=v["color"])