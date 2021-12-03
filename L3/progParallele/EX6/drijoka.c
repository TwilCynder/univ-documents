# include <stdlib.h>
# include <stdio.h>

#define INFINITE (1<<30) // a very large positive integer

struct direct_edge_struct;
struct direct_edge_struct {
  int destination_node;
  int weight;
  struct direct_edge_struct *next;
};

int num_nodes, num_edges;
// table 'edges' is used to store all edge data
//   (instead of dynamically allocating memory at each edge creation)
struct direct_edge_struct *edges;
// edge_counter is used to allocate entries in table 'edges'
int edge_counter = 0;
// table 'nodes' contains the direct edges out of each node
//  'node[i]' is a linked list to all edges starting from node i
struct direct_edge_struct **nodes;
int *d;
char *P;

int main ( int argc, char **argv );
void read_graph(char *filename);
void dijkstra();

/******************************************************************************/
int main ( int argc, char **argv ){

  if (argc < 2){
    fprintf(stderr,"Usage: dijkstra <graph file name>\n");
    exit(-1);
  }
  else
    read_graph(argv[1]);

  dijkstra();

  free(nodes);
  free(edges);
  free(d);
  free(P);
  return 0;
}

/******************************************************************************/
int get_distance(int node1, int node2){
  // return distance between node1 and node2
  //   0 if node1==node2
  //   weight of edge if any between node1 and node2
  //   INFINITE otherwise
  if (node1 == node2)
    return 0;
  struct direct_edge_struct *edge = nodes[node1];
  while (edge != NULL){
    if (edge->destination_node == node2)
      return edge->weight;
    edge = edge->next;
  }
  // node2 has not been found as a direct neighbour of node 1
  return INFINITE;
}

/******************************************************************************/
void dijkstra(){
  // returns computation time

  int shortest_dist;
  int nearest_node;

  P[0] = 1;
  for (int i = 1; i < num_nodes; i++)
    P[i] = 0;

  for (int i = 0; i < num_nodes; i++)
    d[i] = get_distance(0,i);

  for (int step = 1; step < num_nodes; step++ ){
    // find the nearest node
    shortest_dist = INFINITE;
    nearest_node = -1;
    for (int i = 0; i < num_nodes; i++){
        if ( !P[i] && d[i] < shortest_dist ){
        shortest_dist = d[i];
        nearest_node = i;
      }
    }

    if ( nearest_node == - 1 ){
      fprintf(stderr,"Warning: Search ended early, the graph might not be connected.\n" );
      break;
    }

    P[nearest_node] = 1;
    for (int i = 0; i < num_nodes; i++)
      if ( !P[i] ){
        int dist = get_distance(nearest_node,i);
        if ( dist < INFINITE )
          if ( d[nearest_node] + dist < d[i] )
            d[i] = d[nearest_node] + dist;
      }
  }
}

/******************************************************************************/
void read_graph(char *filename){
  char line[256];
  int node1, node2, weight;

  FILE *graph = fopen(filename,"r");
  if (graph == NULL){
    fprintf(stderr,"File %s not found.\n",filename);
    exit(-1);
  }

  while (fgets(line, 256, graph) != NULL){
    switch(line[0]){
      case 'c': // comment
        break;

      case 'p': // graph size
        if (sscanf(&(line[5]),"%d %d\n", &num_nodes, &num_edges) != 2){
          fprintf(stderr,"Error in file format in line:\n");
          fprintf(stderr, "%s", line);
          exit(-1);
        }
        else
          fprintf(stderr,"Graph contains %d nodes and %d edges\n", num_nodes, num_edges);
          edges = malloc(num_edges*2 * sizeof(struct direct_edge_struct));
          if (edges == NULL){
            fprintf(stderr,"Error: cannot allocate memory.\n");
            exit(-1);
          }
          nodes = malloc(num_nodes * sizeof(struct direct_edge_struct *));
          if (nodes == NULL){
            fprintf(stderr,"Error: cannot allocate memory.\n");
            exit(-1);
          }
          for (int i=0; i<num_nodes; i++)
            nodes[i] = NULL;

          d = malloc(num_nodes * sizeof(int));
          if (d == NULL){
            fprintf(stderr,"Error: cannot allocate memory.\n");
            exit(-1);
          }
          P = malloc(num_nodes * sizeof(char));
          if (P == NULL){
            fprintf(stderr,"Error: cannot allocate memory.\n");
            exit(-1);
          }
        break;

      case 'a': // edge definition
        if (sscanf(&(line[2]),"%d %d %d\n", &node1, &node2, &weight) != 3){
          fprintf(stderr,"Error in file format in line:\n");
          fprintf(stderr, "%s", line);
          exit(-1);
        }
        node1--; node2--; // number nodes from 0
        //distance[node1-1][node2-1] = weight;
        struct direct_edge_struct *new_edge;
        struct direct_edge_struct *e;
        new_edge = &edges[edge_counter++];
        new_edge->destination_node = node2;
        new_edge->weight = weight;
        new_edge->next = NULL;
        if (nodes[node1] == NULL)
          nodes[node1] = new_edge;
        else {
          e = nodes[node1];
          while (e->next != NULL)
            e = e->next;
          e->next = new_edge;
        }
        new_edge = &edges[edge_counter++];
        new_edge->destination_node = node1;
        new_edge->weight = weight;
        new_edge->next = NULL;
        if (nodes[node2] == NULL)
          nodes[node2] = new_edge;
        else {
          e = nodes[node2];
          while (e->next != NULL)
            e = e->next;
          e->next = new_edge;
        }
        break;
    }
  }
  fclose(graph);
}

/*

L'initialisation tableau P (boucle à la ligne 74) peut être parallélisée sans problème.

De même pour l'initialisation du tableau d, car la fonction get_distance() ne modifie rien.

Pour l'algo en lui même : 

la boucle englobante ne peut pas être parallélisée : en effet chaque itération modifie une case du tableau P et du tableau d, or la première boucle interne traverse ces tableaux intégralement ; il y a donc interdépendance, car cette première boucle interne (ond chaque itération) dépend de toutes les itérations précédentes de la boucle englobante. D'un point de vue plus "logique", cela fait sens qu'on soit forcé de garder cette boucle en séquentiel, car l'algo traite les nodes un par un en suivant un ordre qui se définit au fur et à mesure, donc à chaque itération, le node que l'on traite dépend de toutes les itérations précédentes.

*/ 