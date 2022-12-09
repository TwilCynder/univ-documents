import time
import random
import sys
from multiprocessing import Process, Lock, Condition, Value, Array



### Monitor start
class Buffer:

    def __init__(self, nb_cases, nb_types):
        self.lock = Lock()  
        self.cond_prod = Condition(self.lock)
        self.cond_cons = [Condition(self.lock)] * nb_types
        self.nb_cases = nb_cases
        self.storage_val = Array('i', [-1] * nb_cases)
        self.storage_type = Array('i', [-1] * nb_cases)
        self.ptr_prod = Value('i', 0)
        self.ptr_cons = Value('i', 0)
        self.nb_vides = Value('i', nb_cases)

        self.conso_wait_counter = Array('i', [0] * nb_types)

    def plein(self):
      return self.nb_vides.value == 0

    def vide(self):
      return self.nb_vides.value == self.nb_cases

    def produce(self, msg_val, msg_type, msg_source):
      with self.lock:    
        while self.plein():
          self.cond_prod.wait()
        position = self.ptr_prod.value
        self.storage_val[position] = msg_val
        self.storage_type[position] = msg_type
        self.nb_vides.value -= 1
        self.ptr_prod.value = (position + 1) % self.nb_cases
        print('%3d produced %3d (type:%d) in place %3d and the buffer is\t\t %s \t and the types are \t %s' %
              (msg_source, msg_val, msg_type, position, self.storage_val[:], self.storage_type[:]))
        print("Next type : ", self.storage_type[self.ptr_cons.value])
        if (not self.vide()) and self.conso_wait_counter[self.storage_type[self.ptr_cons.value]] > 0:
          self.cond_cons[self.storage_type[self.ptr_cons.value]].notify()
        elif self.storage_type[self.ptr_prod.value]:
          self.cond_prod.notify()


    def consume(self, msg_type, id_cons):
      with self.lock:
        self.conso_wait_counter[msg_type] += 1
        print("Adding a conso to the Q", self.conso_wait_counter[msg_type])
        print(self.vide(), self.storage_type[self.ptr_cons.value] == msg_type)
        while (self.vide() or self.storage_type[self.ptr_cons.value] == msg_type):
          self.cond_cons[msg_type].wait()
          print("Notified")
        self.conso_wait_counter[msg_type] -= 1
        print("Removing a conso from the Q", self.conso_wait_counter[msg_type])
        position = self.ptr_cons.value
        result = self.storage_val[position]
        result_type = self.storage_type[position]
        self.storage_val[position] = -1
        self.storage_type[position] = -1
        self.nb_vides.value += 1
        self.ptr_cons.value = (position + 1) % self.nb_cases
        print('\t%3d consumed %3d (type:%d) in place %3d and the buffer is\t %s \t and the types are \t %s' %
              (id_cons, result, result_type, position, self.storage_val[:], self.storage_type[:]))

        print("Next type : ", self.storage_type[self.ptr_cons.value], self.conso_wait_counter[self.storage_type[self.ptr_cons.value]] )
        if (not self.vide()) and self.conso_wait_counter[self.storage_type[self.ptr_cons.value]] > 0:
          self.cond_cons[self.storage_type[self.ptr_cons.value]].notify()
        else:
          self.cond_prod.notify()
        return result

#### Monitor end

def producer(msg_val, msg_type, msg_source, nb_times, buffer):
    for _ in range(nb_times):
        time.sleep(.1 + random.random())
        buffer.produce(msg_val, msg_type, msg_source)
        msg_val += 1


def consumer(msg_type, id_cons, nb_times, buffer):
    for _ in range(nb_times):
        time.sleep(.5 + random.random())
        buffer.consume(msg_type, id_cons)


if __name__ == '__main__':
    if len(sys.argv) != 6:
        print("Usage: %s <Nb Prod <= 20> <Nb Conso <= 20> <Nb Cases <= 20> <Nb Actions Prod <= 20> <Nb Actions Conso <= 20>" % sys.argv[0])
        sys.exit(1)

    nb_prod = int(sys.argv[1])
    nb_cons = int(sys.argv[2])
    nb_cases = int(sys.argv[3])
    nb_times_prod = int(sys.argv[4])
    nb_times_cons = int(sys.argv[5])

    buffer = Buffer(nb_cases, 2)
    
    producers, consumers = [], []
    
    for id_prod in range(nb_prod):
        msg_val_start, msg_type, msg_source = id_prod * nb_times_prod, id_prod % 2, id_prod
        prod = Process(target=producer, args=(msg_val_start, msg_type, msg_source, nb_times_prod, buffer))
        prod.start()
        producers.append(prod)

    for id_cons in range(nb_cons):
        msg_type = id_cons % 2
        cons=Process(target=consumer, args=(msg_type, id_cons, nb_times_cons, buffer))
        cons.start()
        consumers.append(cons)

    for prod in producers:
        prod.join()

    for cons in consumers:
        cons.join()
