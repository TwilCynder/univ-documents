package main;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Main {
   static final String DB_URL = "jdbc:mysql://localhost/";
   static final String DB_NAME = "messagerieCampus";
   static final String USER = "root";
   static final String PASS = "";
   
   public static void main(String[] args) {
      // Open a connection
      try(Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
         Statement stmt = conn.createStatement();
      ) {		      
    	 //Création base de données
         stmt.executeUpdate("CREATE DATABASE IF NOT EXISTS " + DB_NAME + ";");
         stmt.executeUpdate("USE " + DB_NAME + ";");
         //Création tables
         stmt.executeUpdate("DROP TABLE IF EXISTS Users;");
         stmt.executeUpdate("CREATE TABLE Users ("
         		+ "identifiant varchar(20) PRIMARY KEY NOT NULL,"
         		+ "mot_de_passe varchar(30),"
         		+ "nom varchar(20),"
         		+ "prenom varchar(20),"
         		+ "type INT NOT NULL DEFAULT 0"//0 = campus, 1 = service
         		+ ");");
         
         stmt.executeUpdate("DROP TABLE IF EXISTS Groupes;");
         stmt.executeUpdate("CREATE TABLE Groupes ("
         		+ "nom varchar(20) PRIMARY KEY NOT NULL,"
         		+ "type INT NOT NULL DEFAULT 0" //same
         		+ ");");
         
         stmt.executeUpdate("DROP TABLE IF EXISTS Tickets;");
         stmt.executeUpdate("CREATE TABLE Tickets ("
         		+ "id INT PRIMARY KEY NOT NULL,"
         		+ "titre varchar(50),"
         		+ "groupeDest varchar(20) NOT NULL,"
         		+ "createur varchar(20) NOT NULL,"
         		+ "FOREIGN KEY (groupeDest) REFERENCES Groupes(nom),"
         		+ "FOREIGN KEY (createur) REFERENCES Users(identifiant)"
         		+ ");");
         
         stmt.executeUpdate("DROP TABLE IF EXISTS Messages;");
         stmt.executeUpdate("CREATE TABLE Messages ("
         		+ "indexMsg INT NOT NULL," //Contrairement aux tickets où l'id est un numéro global unique, ici la clé primaire est composée de l'id du ticket + l'index du message au sein de ce ticket
         		+ "ticket int NOT NULL,"
         		+ "auteur varchar(20),"
         		+ "contenu varchar(50) NOT NULL,"
         		+ "dateEnvoi date NOT NULL,"
         		+ "statut INT," //0 = pas encore reçu, 1 = pas encore lu, 2 = lu par tous
         		+ "FOREIGN KEY (ticket) REFERENCES Tickets(id),"
         		+ "PRIMARY KEY (ticket, indexMsg)"
         		+ ");");

         stmt.executeUpdate("DROP TABLE IF EXISTS FaitPartieDe;");
         stmt.executeUpdate("CREATE TABLE FaitPartieDe ("
          		+ "idUser varchar(20) NOT NULL, "
          		+ "nomGroupe varchar(20) NOT NULL,"
          		+ "FOREIGN KEY (idUser) REFERENCES Users(identifiant),"
          		+ "FOREIGN KEY (nomGroupe) REFERENCES Groupes(nom),"
          		+ "PRIMARY KEY (idUser, nomGroupe)"
          		+ ");");
         //test
         stmt.executeUpdate("INSERT INTO Users (identifiant, mot_de_passe) VALUES ('tnt', 'cynder')");
         stmt.executeUpdate("INSERT INTO Groupes (nom) VALUES ('test')");
         System.out.println("Success !");   	  
      } catch (SQLException e) {
         e.printStackTrace();
      } 
   }
}