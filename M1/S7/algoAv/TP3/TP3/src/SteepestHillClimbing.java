import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class SteepestHillClimbing {

  private static Random rand = new Random();

  public class DimensionMismatchException extends Exception {
    DimensionMismatchException(){
      super("Different dimensions between matrix and vector");
    }
  }

  public class InvalidInputFileException extends Exception {
    InvalidInputFileException(String message){
      super("Contenu de fichier d'entrée invalide " + message);
    }
  }

  //NO DIMENSION CHECK
  /**
   * Renvoie la valeur d'une solution
   * @param solution représentée par un vecteur de booléens  
   * @param matrix d'ints
   * @return valeur
   */
  public int valeur_solution(boolean[] sol, int[][] matrix){
    int size = sol.length;

    int res = 0;
    for (int i = 0; i < size; i++){
      if (sol[i]){
        //note : je fais ici une multiplication matricielle entre la ligne et mon vecteur
        for (int j = 0; j < size; j++){
          if (sol[j]) res+= matrix[i][j];
        }
      }

    }

    return res;
  }
  


  /**
   * Pour une solution donnée, teste les déplacements possibles et garde le meilleur 
   * (en modifiant la solution passée, afin d'éviter les constructions inutiles).  
   * Renvoie la nouvelle valeur, OU 0 si aucun changement n'a été fait. 
   * //a optimiser, supprimer temp_sol  
   * @param solution de départ, qui pourra être modifiée.
   * @param valeur_solution : valeur de la solution passée, passée en paramètre pour éviter de la recalculer pour cette fonction alors qu'on l'a déjà calculée avant. 
   * @param matrix d'ints 
   * @return Nouvelle valeur de la solution, ou zéro si solution était un maximum local.  
   */
  private int meilleur_voisin(boolean[] sol, int valeur_solution, int[][] matrix){
    int size = sol.length;

    List<Integer> meilleurs_changements = new ArrayList<>(size);
    int meilleureVal = valeur_solution;
    boolean[] temp_sol = sol.clone();
    for (int i = 0; i < size; i++){
      temp_sol[i] = !temp_sol[i];

      int val = valeur_solution(temp_sol, matrix);
      if (val > meilleureVal){
        meilleurs_changements.clear();
        meilleurs_changements.add(i);
        meilleureVal = val;
      } else if (val == meilleureVal){
        meilleurs_changements.add(i);
      }

      temp_sol[i] = sol[i];
    }

    int nb_meilleurs_changements = meilleurs_changements.size();
    int changement;
    if (nb_meilleurs_changements == 0){ //pas de meilleur voisin -> aucun changement.
      return 0;
    } else if (nb_meilleurs_changements == 1){ 
      changement = meilleurs_changements.get(0);
    } else {
      changement = meilleurs_changements.get(rand.nextInt(nb_meilleurs_changements));
    }

    sol[changement] = !sol[changement]; 

    return meilleureVal;
  }

  /**
   * Identique à meilleur_voisin(boolean[], int, int[][]), mais calcule elle-même la valeur de la solution donnée, 
   * utile donc si on n'a pas encore calculé ladite valeur.  
   * @param sol
   * @param matrix
   * @return
   */
  private int meilleur_voisin(boolean[] sol, int[][] matrix){
    return meilleur_voisin(sol, valeur_solution(sol, matrix), matrix);
  }

  /**
   * Applique l'algo de Steepest Hill Climbing à partir d'une solution donnée. 
   * Modifie la solution en paramètre (éviter les copies) et renvoie la nouvelle valeur. 
   * @param matrix d'ints. 
   * @param initial solution initiale
   * @return valeur de la solution finale trouvée par l'algo (maximum local)
   * @throws DimensionMismatchException si for some reason la matrice et la solution n'ont pas la même dimension.
   */
  public int climb(int[][] matrix, boolean[] initial) throws DimensionMismatchException {
    int size = initial.length;
    if (matrix.length != size) throw new DimensionMismatchException();

    int meilleureVal = valeur_solution(initial, matrix); //on fait l'hypothèse que intial n'a pas été manipulée avant, donc calcul de valeur pas superflu
    int val;
    while ((val = meilleur_voisin(initial, meilleureVal, matrix)) > 0){
      //Pourquoi je repasse la valeur en paramètre alors que meilleur_voisin pourrait le faire elle-même ? Pour éviter de recalculer une valeur déjà calculée
      meilleureVal = val;
    }

    return meilleureVal;
  }


  /**
   * Applique l'algo de Steepest Hill Climbing à partir d'une solution donnée, en s'arrêtant à au plus max_depls changements.  
   * Modifie la solution en paramètre (éviter les copies) et renvoie la nouvelle valeur. 
   * @param matrix d'ints. 
   * @param initial solution initiale
   * @param max_depls nombre maximal de changements/déplacements effectués avant de s'arrêter. 
   * @return valeur de la solution trouvée (potentiel minimum local, si max_depl pas atteint)
   * @throws DimensionMismatchException
   */
  public int climb(int[][] matrix, boolean[] initial, int max_depls) throws DimensionMismatchException {
    int size = initial.length;
    if (matrix.length != size) throw new DimensionMismatchException();

    int meilleureVal = valeur_solution(initial, matrix); //on fait l'hypothèse que intial n'a pas été manipulée avant, donc calcul de valeur pas superflu
    int val;
    for (int i = 0; i < max_depls && ((val = meilleur_voisin(initial, meilleureVal, matrix)) > 0); i++){
      meilleureVal = val;
    }

    return meilleureVal;
  }

  /**
   * Solution, avec sa valeur (qui peut être déduite de la solution, mais on préfère la garder dans cette structure
   * une fois qu'on l'a calculée pour limiter au maximum le nombre de calculs de valeurs)
   */
  public class Result {
    public boolean[] vecteur;
    public int valeur;
    public Result(boolean[] vecteur, int valeur) {
      this.vecteur = vecteur;
      this.valeur = valeur;
    }
  }

  /**
   * Applique l'algo de Steepest Hill Climbing à partir d'une solution aléatoire, en s'arrêtant à au plus max_depls changements.  
   * Modifie la solution en paramètre (éviter les copies) et renvoie la nouvelle valeur. 
   * @param matrix d'ints. 
   * @param initial solution initiale
   * @param max_depls nombre maximal de changements/déplacements effectués avant de s'arrêter. 
   * @return Result la solution avec sa valeur déjà calculée
   * @throws DimensionMismatchException
   */
  public Result climb(int[][] matrix, int max_depls) throws DimensionMismatchException{
    int size = matrix.length;

    boolean[] sol = sol_aleatoire(size);
    int val;
    if (max_depls > 0)
      val = climb(matrix, sol, max_depls);
    else
      val = climb(matrix, sol);
 
    return new Result(sol, val);
  }

  /**
   * Applique l'algo de Steepest Hill Climbing à partir d'une solution aléatoire.  
   * @param matrix d'ints.
   * @return
   * @throws DimensionMismatchException
   */
  public Result climb(int[][] matrix) throws DimensionMismatchException{
    return climb(matrix, 0);
  }

  public Result climb_restart(int[][] matrix, int max_essais) throws DimensionMismatchException {
    Result meilleur_resultat = null;

    for (int i = 0; i < max_essais; i++){
      Result r = climb(matrix);
      if (r.valeur > meilleur_resultat.valeur || meilleur_resultat == null){
        meilleur_resultat = r;
      }
    }

    return meilleur_resultat;
  }

  /**
   * Construit une solution aléatoire
   * @param size dimension de la solution 
   * @return
   */
  public boolean[] sol_aleatoire(int size){
    boolean[] res = new boolean[size];
    for (int i = 0; i < size; i++){
      res[i] = rand.nextInt(2) > 0;
    }
    return res;
  }

  /**
   * Construit une matrice avec les données contenus dans un fichier.  
   * 
   * Les données sont lues sous forme de champs séparés par des espaces, sans newline. 
   * - un champ pour la dimension de la matrice
   * - un champ p ? je sais pas
   * - un champ pour chaque case de la matrice
   * @param path
   * @return
   * @throws IOException
   * @throws InvalidInputFileException
   */
  public int[][] read_solution(Path path) throws IOException, InvalidInputFileException {
    BufferedReader reader = Files.newBufferedReader(path);
    String data = reader.readLine(); //une seule ligne
    String[] fields = data.split(" ");

    if (fields.length < 3){
      throw new InvalidInputFileException("Le fichier d'entrée doit contenir au moins 3 champs");
    }

    int size = Integer.valueOf(fields[0]);
    if (fields.length != (size * size) + 2){
      throw new InvalidInputFileException("Le fichier d'entrée doit contenir au moins 3 champs");
    }

    //int p = Integer.valueOf(fields[1]);

    int[][] matrix = new int[size][size];
    for (int i = 0; i < size; i++){
      for (int j = 0; j < size; j++){
        matrix[i][j] = Integer.valueOf(fields[i * size + j]);
      }
    }

    return matrix;
  }
}
