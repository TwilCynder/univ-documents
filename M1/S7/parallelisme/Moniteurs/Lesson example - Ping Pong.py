
from multiprocessing import Process, Value, Array, Lock, Condition

import os
import random
import sys
import time

class PingPong :
    def __init__ (self) :
        self.previous = Value('i', 1, lock=False)
        self.available = Value('i', 1, lock=False)
        self.verrou = Lock()
        self.acces = [Condition(self.verrou), Condition(self.verrou)]

    def acceder (self, rang, side) :
        with self.verrou :
            while self.previous.value == side or self.available.value==0:
                #print('Player', rang, "Blocked on side ", side)
                self.acces[side].wait()
                #print('Player', rang, "Unblocked on side ", side)
            #print('Player', rang, " has been granted access to ", side)
            self.available.value = 0

    def liberer (self, rang, side) :
        with self.verrou:
            self.available.value = 1
            self.previous.value = side
            #print('Player', rang, "Leaving on side ", side)
            self.acces[(side+1)%2].notify()

def player (rang, side, moniteur) :
    time.sleep(.1 + random.random())
    print("Player", rang, "asks", side)
    moniteur.acceder(rang, side)
    print("Player", rang, "enters", side)
    time.sleep(.2 + random.random())
    moniteur.liberer(rang, side)

####

if __name__ == '__main__' :

    if len(sys.argv) != 2 :
        print("Usage %s <nb players>", sys.argv[0])
        sys.exit(1)

    nbPlayers = int(sys.argv[1])

    processes = []
    table = PingPong()

    for rang_proc in range(nbPlayers) :
        proc = Process(target=player, args=(rang_proc, rang_proc%2, table))
        processes.append(proc)
        proc.start()

    for rang_proc in range(nbPlayers) :
        proc.join()
