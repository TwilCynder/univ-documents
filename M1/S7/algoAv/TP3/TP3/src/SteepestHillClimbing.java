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

  //NO DIMENSION CHECK
  public int valeur_solution(boolean[] sol, int[][] matrix){
    int size = sol.length;

    int res = 0;
    for (int i = 0; i < size; i++){
      if (sol[i]){
        for (int j = 0; j < size; j++){
          if (sol[j]) res+= matrix[i][j];
        }
      }

    }

    return res;
  }
  


  /**
   * Retourne la nouvelle valeur si un changement a été fait, 0 sinon  
   * //a optimiser
   * //NO DIMENSION CHECK
   * @param sol
   * @param valeur_solution n'existe que pour ne pas avoir à calculer 2 fois la valeur de la solution initiale
   * @param matrix
   * @return
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
   * Utile dans le cas où on veut le meilleur_voisin d'une sol dont on n'a pas encore la valeur
   * @param sol
   * @param matrix
   * @return
   */
  private int meilleur_voisin(boolean[] sol, int[][] matrix){
    return meilleur_voisin(sol, valeur_solution(sol, matrix), matrix);
  }

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

  public class Result {
    public boolean[] vecteur;
    public int valeur;
    public Result(boolean[] vecteur, int valeur) {
      this.vecteur = vecteur;
      this.valeur = valeur;
    }
    
  }

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

  public Result climb(int[][] matrix) throws DimensionMismatchException{
    return climb(matrix, 0);
  }

  public Result climb_restart(int[][] matrix, int max_essais) throws DimensionMismatchException {
    int meilleure_sol_val = 0;

    Result meilleur_resultat = null;

    for (int i = 0; i < max_essais; i++){
      Result r = climb(matrix);
      if (r.valeur > meilleure_sol_val || meilleur_resultat == null){
        meilleur_resultat = r;
      }
    }

    return meilleur_resultat;
  }

  public boolean[] sol_aleatoire(int size){
    boolean[] res = new boolean[size];
    for (int i = 0; i < size; i++){
      res[i] = rand.nextInt(2) > 0;
    }
    return res;
  }
}
