package tsp;

/**
 * Class exposing a set of methods using the SHC algorithm to solve a TSP, as well as a main method using them.
 */
public class SteepestHillClimbing {
    public static void main(String[] args) throws Throwable {

        if (args.length < 1){
            System.out.println("Needs one argument : path to cities file");
            System.exit(1);
        }

        City[] world = World.load(args[0]);

        Result res = climb(world);

        System.out.println("Solution finale : " + res.getSolution());
        System.out.println("Valeur : " + res.valeur);

    }

    /**
     * Applies the SteepestHillClimbing algorithm to the given solution, with a given maximum number of changes. Modifies the given solution, not a copy of it.
     * @param sol initial solution
     * @param max_depls maximum movements. If 0, no maximum
     * @return new best value.
     */
    public static double climb(Solution sol, int max_depls){
        double meilleureVal = sol.calc_valeur(); //valeur initiale
        double val;
        //on continue si le max n'est pas atteint ou qu'il n'y en a pas, ET si un meilleur voisin a été trouvé.
        int i = 0;
        for (i = 0; (max_depls < 1 || i < max_depls) && ((val = TSP.meilleur_voisin(sol, meilleureVal)) > 0); i++){
          meilleureVal = val;
        }

        System.out.println("Nombre déplacmeents : " + i);
        
        return meilleureVal;
    }

    /**
     * Applies the SteepestHillClimbing algorithm to the given solution. Modifies the given solution, not a copy of it.
     * @param sol initial solution
     * @return new best value.
     */
    public static double climb(Solution sol){
        return climb(sol, 0);
    }

    private static class Result {
        private Solution sol;
        private double valeur;

        public Result(Solution sol, double valeur) {
            this.sol = sol;
            this.valeur = valeur;
        }

        public Solution getSolution() {
            return sol;
        }
        public double getValeur() {
            return valeur;
        }
 
    }

    /**
     * Applies the SteepestHillClimbing to a given set of cities, starting from a random path.
     * @param world set of cities we want to find the best path in.
     * @return An object containing the best solution as well as its value
     */
    public static Result climb(City[] world){
        Solution sol = TSP.makeRandomSolution(world);
        System.out.println("Solution initiale : " + sol);
        double valeur = climb(sol);
        return new Result(sol, valeur);
    }

     /**
     * Applies the SteepestHillClimbing to a given set of cities, starting from a random path.
     * @param world set of cities we want to find the best path in.
     * @return
     */
    public static Result climb(City[] world, int max_depls){
        Solution sol = TSP.makeRandomSolution(world);
        System.out.println("Solution initiale : " + sol);

        double valeur = climb(sol, max_depls);
        return new Result(sol, valeur);
    }

    public Result climb_restart(City[] world, int max_essais) {
    
        Result meilleur_resultat = null;

        for (int i = 0; i < max_essais; i++){
          Result r = climb(world);
          if (r.valeur > meilleur_resultat.valeur || meilleur_resultat == null){
            meilleur_resultat = r;
          }
        }
    
        return meilleur_resultat;
    }
}
