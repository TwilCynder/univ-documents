import sys
import time
import random
from multiprocessing import Process, Lock, Condition, Value, Array

class ExtendedCondition:
  def __init__(self, lock, nb_prios):
    self.nb_prios = nb_prios
    self.conditions = [0] * nb_prios
    for i in range(nb_prios):
      self.conditions[i] = Condition(lock)
    self.compteurs = Array('i', [0] * nb_prios)
    
  def wait(self, prio):
    self.compteurs[prio] += 1
    self.conditions[prio].wait()

  def notify(self):
    for i in range(self.nb_prios):
      if self.compteurs[i] > 0:
        self.conditions[i].notify()
        self.compteurs[i] -= 1
        return

  def empty(self):
    for i in range(self.nb_prios):
      if self.compteurs[i] > 0:
        return False

    return True

class RW:
    def __init__(self):
        self.lock = Lock()  
        self.condition = ExtendedCondition(self.lock, 2)
        self.nb_lect = Value('i', 0)
        self.ecriture = Value('b', 0)

    def start_read(self):
        with self.lock:
          while self.ecriture.value > 0:
            print("Waiting")
            self.condition.wait(1)

          self.nb_lect.value += 1

          self.condition.notify()


    def end_read(self):
      with self.lock:

        self.nb_lect.value -= 1

        if self.nb_lect.value == 0:
          self.condition.notify()

    def start_write(self):
      with self.lock:
        if self.nb_lect.value > 0 or self.ecriture.value > 0:
          self.condition.wait(1)
        while self.nb_lect.value > 0 or self.ecriture.value > 0:
          self.condition.wait(0)

        self.ecriture.value = 1

    def end_write(self):
      with self.lock:
        self.ecriture.value = 0
      
        self.condition.notify()


def process_writer(identifier, synchro):
    synchro.start_write()
    for _ in range(5):
        with open('LectRed_shared', 'a') as file_id:
            txt = ' ' + str(identifier)
            file_id.write(txt)
            print('Writer', identifier, 'just wrote', txt)
        time.sleep(.1 + random.random())            
    synchro.end_write()
    
def process_reader(identifier, synchro):
    synchro.start_read()
    position = 0
    result = ''
    while True:
        time.sleep(.1 + random.random())            
        with open('LectRed_shared', 'r') as file_id:
            file_id.seek(position, 0)
            txt = file_id.read(1)
            if len(txt) == 0:
                break
            print('Reader', identifier, 'just read', txt)
            result += txt
            position+=1
    print(str(identifier)+':',result)
    synchro.end_read()
        
if __name__ == '__main__':
    if len(sys.argv) != 3:
        print("Usage: %s <Nb reader> <Nb writer> \n" % sys.argv[0])
        sys.exit(1)

    nb_reader = int(sys.argv[1])
    nb_writer = int(sys.argv[2])

    synchro = RW()

    # To initialize the common data
    with open('LectRed_shared', 'w') as file_id:
        file_id.write('')
    
    processes = []
    for id_writer in range(nb_writer):
        writer = Process(target=process_writer, args=(id_writer,synchro))
        writer.start()
        processes.append(writer)

    for id_reader in range(nb_reader):
        reader = Process(target=process_reader, args=(id_reader,synchro))
        reader.start()
        processes.append(reader)

    for process in processes:
        process.join()
