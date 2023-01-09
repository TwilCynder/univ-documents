import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public abstract class World {

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
    }

    public static City[] load(Path path) throws IOException, InvalidInputFileException{
        BufferedReader reader = Files.newBufferedReader(path);
        String data = reader.readLine(); //une seule ligne
        int n = Integer.valueOf(data);

        //int p = Integer.valueOf(fields[1]);

        if (n < 1) return null;

        City[] res = new City[n];

        for (int i = 0; i < n; i ++){
            data = reader.readLine();
            String[] fields = data.split("\t");

            if (fields.length < 3) throw new InvalidInputFileException("Ligne " + (i + 1) + " : les lignes de ville doivent contenir 3 champs");

            res[i] = new City(
                Integer.valueOf(fields[0]),
                Integer.valueOf(fields[1]),
                Integer.valueOf(fields[2])
            );
        }

        return res;
    }
}
