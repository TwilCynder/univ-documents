import sys
import time
import random
from multiprocessing import Process, Lock, Condition, Value, Array

class RW:
    def __init__(self):
        self.lock = Lock()  
        self.lecteur = Condition(self.lock)
        self.redacteur = Condition(self.lock)
        self.nb_lect = Value('i', 0)
        self.ecriture = Value('b', 0)

        self.redacteur_en_attente = Value('i', 0)

    def start_read(self):
        with self.lock:
          while self.ecriture.value > 0:
            self.lecteur.wait()

          self.lecteur.notify()

          self.nb_lect.value += 1

          time.sleep(.1 + random.random())

    def end_read(self):
      with self.lock:

        self.nb_lect.value -= 1
        if self.redacteur_en_attente.value > 0:
          if self.nb_lect.value < 1:
            self.redacteur.notify()
        else:
          self.lecteur.notify()

    def start_write(self):
      with self.lock:
        
        while self.nb_lect.value > 0 or self.ecriture.value > 0:
          self.redacteur_en_attente.value += 1
          self.redacteur.wait()
          self.redacteur_en_attente.value -= 1

        self.ecriture.value = 1
        time.sleep(.1 + random.random())

    def end_write(self):
      with self.lock:
        self.ecriture.value = 0

        if self.redacteur_en_attente.value > 0:
          self.redacteur.notify()
        else:
          self.lecteur.notify()


def process_writer(identifier, synchro):
    time.sleep(.1 + random.random())           
    synchro.start_write()
  
    for _ in range(5):
        with open('LectRed_shared', 'a') as file_id:
            txt=' '+str(identifier)
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