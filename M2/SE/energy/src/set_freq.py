import os
import sys

if len(sys.argv) < 2:
    print("Usage : ", sys.argv[0], " min|max|<freq>")
    exit(1)

target = sys.argv[1]
if not (target.isnumeric() or target == "min" or target == "max"):
    print("Usage : ", sys.argv[0], " min|max|<freq>")
    exit(1)


def int_from_file(filename):
    f = open(filename)
    res = f.read()
    return int(res)

freq_max = int_from_file("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq")
freq_min = int_from_file("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq")

def set_freq(freq):
    print(freq)
    os.system(f"echo {freq} | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq")

if target == "min":
    set_freq(freq_min)
elif target == "max":
    set_freq(freq_max)
else:
    if int(target) >= freq_min and int(target) <= freq_max:
        set_freq(target)