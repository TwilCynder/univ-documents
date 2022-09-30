package backend;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBase {
    private static final String DB_URL = "jdbc:mysql://localhost/";
    private static final String DB_NAME = "messagerieCampus";
    private static final String USER = "root";
    private static final String PASS = "";
    
	private Connection sqlConnection;
	private Statement sqlStatement;
	private boolean closed;
	
	public DataBase(){
		try {
			sqlConnection = DriverManager.getConnection(DB_URL + DB_NAME, USER, PASS);
			sqlStatement = sqlConnection.createStatement();
			closed = false;

		} catch (SQLException e) {
	         e.printStackTrace();
	         closed = true;
		}
	}
	
	public void close() {
		try {
			sqlStatement.close();
			sqlConnection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		closed = true;
	}
	
	public void finalize() {
		if (!closed) {
			close();
			System.err.println("A Database object was not closed before being garbage collected");
		}
	}
	
	private void executeUpdate(String sql) {
		try {
			sqlStatement.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public void addGroupe(String nom, TypeUtilisateur type) {
		int typeNum = (type == TypeUtilisateur.SERVICE) ? 1 : 0;
		executeUpdate("INSERT INTO Groupes VALUES ('" + nom + "', " + typeNum + ")");
	}
	
	public GroupeVueBase getGroupe(String nom) {
		try (ResultSet res = sqlStatement.executeQuery("SELECT * FROM Groupes WHERE nom='" + nom + "'")) {
			if (res.next()) {
				return new GroupeVueBase(this, nom, res.getInt("type"));
			} else {
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	public void addUser(String identifiant, String motDePasse, String nom, String prenom, TypeUtilisateur type) {
		int typeNum = (type == TypeUtilisateur.SERVICE) ? 1 : 0; 
		
		executeUpdate("INSERT INTO Users VALUES ('"
				+ identifiant + "','"
				+ motDePasse + "','"
				+ nom + "','"
				+ prenom + "',"
				+ typeNum
				+ ")");
	}
	
	public int getRowsCount(String table) {
		try (ResultSet res = sqlStatement.executeQuery("SELECT COUNT(*) FROM " + table)){
			if (res.next()) {
				return res.getInt("count(*)");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return 0;
	}
	
	/**
	 * 
	 * @param nomGroupe
	 * @param idAuteur
	 * @param titre
	 * @param messageInitString
	 * @return Le numéro du ticket créé
	 */
	public int addTicket(String nomGroupe, String idAuteur, String titre, String messageInit) {
		int indexTicket = getRowsCount("Tickets");
		executeUpdate("INSERT INTO Tickets VALUES ("
				+ indexTicket + ",'"
				+ titre + "','"
				+ nomGroupe + "','"
				+ idAuteur
				+ "')");
		
		messageInit = messageInit.replace("'", "''"); //Pour éviter que les apostrophes soient vu comme des single quotes par SQL
		executeUpdate("INSERT INTO Messages VALUES ("
				+ "0,"
				+ indexTicket + ",'"
				+ idAuteur + "','"
				+ messageInit + "','" 
				+ (new java.sql.Date(System.currentTimeMillis())).toString() 
				+ "', 0"
				+ ")");
		return indexTicket;
	}
	
	public void addMessage(int ticketIndex) {
		
	}
	
	public boolean authorizeConnection(String username, String motDePasse) {
		
		try(ResultSet res = sqlStatement.executeQuery("SELECT * FROM Users WHERE identifiant='" + username + "';")){
			if (!res.next()) return false; //Il n'y avait aucun user avec cet username
			String bonMotDePasse = res.getString("mot_de_passe");
			return bonMotDePasse.equals(motDePasse);
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return false;
	}
}
