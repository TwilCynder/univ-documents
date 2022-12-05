#!/usr/bin/python3
from multiprocessing import Process, Lock, Condition, Value

# Monitor start
class Court:
    def __init__(self):
        self.lock = Lock()  
        self.court = Condition(self.lock)  
        self.outside = Condition(self.lock)
        self.nb_players = Value('i', 0)

    def askCourt(self):
        with self.lock:
            while self.nb_players.value == 2:
                self.outside.wait()
            self.nb_players.value += 1
            print(self.nb_players.value, "players on the court")
            if self.nb_players.value == 1:
                self.outside.notify()
                self.court.wait()
            else:
                self.court.notify()
        
    def freeCourt(self):
        with self.lock:
            self.nb_players.value -= 1
            if self.nb_players.value == 0:
                self.outside.notify()
# Monitor end

def player(court):
    print("waiting")
    court.askCourt()
    print("playing")
    court.freeCourt()
    print("finished")

if __name__ == '__main__':
    court = Court()
    processes = []
    for i in range(10):
        p = Process(target=player, args=(court,))
        p.start()
        processes.append(p)

    for p in processes:
        p.join()
