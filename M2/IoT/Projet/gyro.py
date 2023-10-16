import time
from sense_hat import SenseHat

sense = SenseHat()

sense.set_imu_config(False, False, True)

sense.set_imu_config(True, True, True)  #Magnetometer (compass), gyroscope, accelerometer 
#il faut tester mais sinon il faut désactiver le gyro et l'accelerometer pour avoir accès au compas et vice versa

#orientation
orientation_rad = sense.get_orientation_radians()
print(orientation_rad)

orientation_deg = sense.get_orientation_degrees()
print(orientation_deg)

orientation = sense.get_orientation()
print(orientation)


#compass
north=sense.get_compass()
print(north)

compass_raw=sense.get_compass_raw()
print(compass_raw)

#gyrosocpse
gyro_only=sense.get_gyroscope()
print(gyro_only)

gyro_raw=sense.get_gyroscope_raw()
print(gyro_raw)

#accelerometer
accel_only=sense.get_accelerometer()
print(accel_only)


accel_raw=sense.get_accelerometer_raw()
print(accel_only)



while True:
    accel_only=sense.get_accelerometer()
    print(accel_only)
    
    time.sleep(0.5)