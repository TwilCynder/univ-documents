from matplotlib import pyplot as plt
import networkx as nx
from mpi4py import MPI
import time
import math

def plot_graph(graph, save=False, display=True):
    g1=graph
    plt.tight_layout()
    nx.draw_networkx(g1, arrows=True)
    if save:
        plt.savefig("graph.png", format="PNG")
    if display:
        plt.show(block=True)

def split(x, size):
  n = math.floor(len(x) / size)
  r = len(x) // size
  res = []
  i = 0
  p = 0
  while p < len(x):
    s = n + 1 if i < r else n
    res.append(x[p:p+s])
    p += s
    i += 1
  print(res)
  return res

#graph = nx.scale_free_graph(20).reverse()
graph = nx.gnr_graph(30, .01).reverse()
#graph = nx.random_k_out_graph(20, 2, .8).reverse()

comm = MPI.COMM_WORLD
rank = comm.Get_rank()
nbProcesses = comm.Get_size()

print("Nb processes : ", nbProcesses, flush = True)

new_elements = [0] # We start at the root (node = 0)
old_elements = []  # We initialize the already seen nodes

start_time = time.time()

print("I am process", rank, flush = True)
keep_going = True
while keep_going: # as long as we have new node

    tmp = []
    if rank == 0:
      print(len(new_elements))
    local_elements = comm.scatter(split(new_elements, nbProcesses), root = 0)
    print("Process ", rank, " : ", len(local_elements), flush = True)

    for node_src in local_elements: # we take all these nodes
        for node in graph.neighbors(node_src): # we take all their descendents
            if not node in old_elements and not node in new_elements and not node in tmp:
                # If the descendent is not already seen, we keep it
                tmp.append(node)
    old_elements += comm.bcast(new_elements, root = 0) # we have looked at all their descendent, so we move them to the seen nodes
    
    tmp = comm.gather(tmp, root = 0)
    if rank == 0:
      new_elements = [item for sublist in tmp for item in sublist]  # these are the new node, we will see them on the next iteration
      keep_going = (len(new_elements) != 0)
    keep_going = comm.bcast(keep_going, root = 0)

print("Process ", rank, "ended loop", flush = True)

if rank == 0:
  end_time = time.time()
  print(end_time - start_time)
  print(len(old_elements) == len(graph))
  plot_graph(graph, save=True, display=True)
else:
  exit()

