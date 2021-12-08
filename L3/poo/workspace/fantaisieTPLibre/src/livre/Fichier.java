package livre;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class Fichier implements Livre {
	private static String chemin = "./src/livre/histoire.txt";
	private File writer = new File(chemin);
	
	public void ecrire(String s) {
		/*try {
			FileWriter fichier = new FileWriter(writer, true);
			try {
				fichier.write(s);
			} finally {
				fichier.close();
			}
		} catch (IOException ex) {
			ex.printStackTrace();
		}*/
		
		 try (FileWriter fichier = new FileWriter(writer, true)){
			 fichier.write(s);
		 } catch (IOException ex) {
			  ex.printStackTrace();
		 }
	}
}
