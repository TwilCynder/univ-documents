import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


public abstract class TSP {
    public int[] makeRandomSolution(int n){
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

    public double valeur_solution(City[] world, int[] solution){
        if (solution.length < 1) return 0;

        double distance = World.distance_villes(world[0]);

        int i;
        for (i = 0; i < solution.length - 1; i++){
            distance += World.distance_villes(world[i], world[i + 1]);
        }

        return distance + World.distance_villes(world[i]);
    }
}
