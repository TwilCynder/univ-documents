package tsp;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Class exposing methods useful to manipulate arrays of Cities, also called the World of a TSP
 */
public abstract class World {

    public static String toString(City[] world, String separator){
        String res = "";
        int i;
        for (i = 0; i < world.length - 1; i++){
            res += world[i];
            res += separator;
        }
        res += world[i];

        return res;
    }

    public static String toString(City[] world){
        return toString(world, " ");
    }

    public static double distance(int x1, int x2, int y1, int y2){
        int dx = x1 - x2;
        int dy = y1 - y2;
        return Math.sqrt(dx * dx + dy * dy); 
    }

    public static double distance_villes(City c1, City c2){
        return distance(c1.x, c2.x, c1.y, c2.y);
    }

    public static double distance_villes(City c1){
        return distance(c1.x, 0, c1.y, 0);
    }

    static public class InvalidInputFileException extends Exception {
        InvalidInputFileException(String message){
          super("Contenu de fichier d'entrée invalide " + message);
        }

        InvalidInputFileException(Throwable cause){
            super("Contenu de fichier d'entrée invalide ", cause);
          }
    }

    public static City[] load(Path path) throws IOException, InvalidInputFileException{
        try (BufferedReader reader = Files.newBufferedReader(path)){
            String data = reader.readLine(); //une seule ligne
            int n = Integer.valueOf(data.trim());
    
            //int p = Integer.valueOf(fields[1]);
    
            if (n < 1) return null;
    
            City[] res = new City[n];
    
            for (int i = 0; i < n; i ++){
                data = reader.readLine();
                String[] fields = data.split("\t");
    
                if (fields.length < 3) throw new InvalidInputFileException("Ligne " + (i + 1) + " : les lignes de ville doivent contenir 3 champs");


                res[i] = new City(
                    Integer.valueOf(fields[0].trim()),
                    Integer.valueOf(fields[1].trim()),
                    Integer.valueOf(fields[2].trim())
                );
            }
    
            return res;
        } catch (NumberFormatException e){
            throw new InvalidInputFileException(e);
        }
    }

    public static City[] load(String path) throws IOException, InvalidInputFileException {
        return load(Paths.get(path));
    }
}