import pandas as pd
import matplotlib.pyplot as plt
import os
import sys

def _read_csv(filename):
    df = pd.read_csv(filename, sep=' ', skipinitialspace=True)
    if df.columns[-1].startswith('Unnamed'):
        df.drop(columns=df.columns[-1:], axis=1, inplace=True)
    return df

def sum_energy(data):
    end_time = data["#timestamp"].max()
    start_time = data["#timestamp"].min()
    time = end_time - start_time

    cpu_sum = data["package-00"].sum()
    memory_sum = data["dram0"].sum()
    energy_sum_j = (cpu_sum + memory_sum) / 1000000
    print("Execution time : ", time)
    print("Consumed energy (Joules) : ", energy_sum_j)
    print("Average Power : ", energy_sum_j / time)

if len(sys.argv) < 2:
    print("Usage : ", sys.argv[0], " command_line")
    exit(1)

command = sys.argv[1]
os.system(f"../mojitos/bin/mojitos -r -f 10 -o /tmp/data.csv & pid=$! ; {command}; sudo-g5k kill $pid")

sum_energy(_read_csv('/tmp/data.csv'))