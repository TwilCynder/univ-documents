package tsp;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Class exposing a set of utilitary methods for solving a Travelling Salesman Problem.
 */
public abstract class TSP {
    public static int[] makeRandomSolution(int n){
        int[] solution = new int[n];

        List<Integer> list = new ArrayList<Integer>();
        for (int i=0; i<n; i++) list.add(i);
        Collections.shuffle(list);
        int i = 0;
        for (int id : list){
            solution[i] = id;
            i++;
        }

        return solution;
    }

    public static Solution makeRandomSolution(City[] world){
        return new Solution(world, makeRandomSolution(world.length));
    }

    private static void swap(int[] tab, int i1, int i2){
        int temp = tab[i1];
        tab[i1] = tab[i2];
        tab[i2] = temp;
    }

    /**
     * Applies the best possible permutation to the given solution
     * @param sol solution to improve
     * @param valeur_initiale value of that solution (passed to avoid computing it again if it has already been done)
     * @return the new value
     */
    public static double meilleur_voisin(Solution sol, double valeur_initiale){
        double meilleure_val = valeur_initiale;
        int meilleure_perm = -1;

        for (int i = 0; i < sol.get_world_size() - 1; i++){
            swap(sol.sequence, i, i + 1); //for each city id in the sequence, we try swapping it with the next

            double nouvelle_val = sol.calc_valeur();

            if (nouvelle_val < meilleure_val){ //if the new value if better than the current best one (= less, we want the shortest path)
                meilleure_val = nouvelle_val;
                meilleure_perm = i; //we save the current permutation (= index of the first swapped city id) as the best one
            }

            swap(sol.sequence, i, i + 1);   //we take the sequence back to its original state to test the next permutation
        }

        if (meilleure_perm > -1){   //if there was a permuation that improved (=decreased) the value
            swap(sol.sequence, meilleure_perm, meilleure_perm + 1); //we redo that permutation
            return meilleure_val;
        }

        return -1;  //if there was no better neighbor, we return a negative value
    }

    /**
     * Same as the previous overload, but this one computes the value of the solution (to call if the value has not been calculated before)
     * @param sol
     * @return
     */
    public static double meilleur_voisin(Solution sol){
        return meilleur_voisin(sol, sol.calc_valeur());
    }
}
