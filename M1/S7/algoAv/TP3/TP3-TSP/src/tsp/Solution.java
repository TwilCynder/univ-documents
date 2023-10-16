package tsp;

public class Solution {
    public final City[] world; //the world this solution is based on
    public int[] sequence; //the order of passage in this world
    //private double value;

    public Solution(City[] w, int[] s){
        world = w;
        sequence = s;
        //update_valeur();
    }

    public static double valeur(City[] world, int[] solution){
        if (solution.length < 1) return 0;

        double distance = World.distance_villes(world[0]);

        int i;
        for (i = 0; i < solution.length - 1; i++){
            distance += World.distance_villes(world[i], world[i + 1]);
        }

        return distance + World.distance_villes(world[i]);
    }

    public double calc_valeur(){
        return valeur(world, sequence);
    }

    /*
    public void update_valeur(){
        value = calc_valeur();
    }

    public double get_valeur(){
        return value;
    }*/

    public int get_world_size(){
        return world.length;
    }

    @Override
    public String toString() {
        String res = "";

        int i;
        for (i = 0; i < sequence.length - 1; i++){
            res += sequence[i] + "; ";
        }

        return res + sequence[i];
    }

}
