from sense_hat import SenseHat
from formats import NeoCayenneLPP

def encode(temperaturePress, temperatureHumidity, pressure, humidity):
    lpp = NeoCayenneLPP()
    lpp.add_temperature(temperatureHumidity + temperaturePress / 2)
    lpp.add_pressure(pressure)
    lpp.add_humidity(humidity)

    return lpp

