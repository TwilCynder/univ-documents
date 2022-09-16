package backend;

import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.net.ServerSocket;

import communication.LoginAnswerMessage;
import communication.LoginRequestMessage;
import communication.NetMessage;
import communication.NewTicketMessage;

public class Serveur {
	DataBase db;
	ServerSocket serverSocket;
	
	public Serveur (int port){
		try {
			serverSocket = new ServerSocket(port);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		this.db = new DataBase();
	}
	
	public void processMessage(NetMessage genericMessage, Connexion conn) {
		System.out.println("Class name : " + genericMessage.getClass().getName());
		if (genericMessage instanceof NewTicketMessage) {
			
		} else if (genericMessage instanceof LoginRequestMessage) {
			LoginRequestMessage message = (LoginRequestMessage)genericMessage;
			boolean result = db.authorizeConnection(message.userID, message.motDePasse);
			conn.writeObject(new LoginAnswerMessage(result));
		} else {
			System.err.println("Unsupported data type");
		}
	}
	
	public void start() {
		System.out.println("Server started");
		while (true) {
			try {
				Connexion conn = new Connexion(serverSocket.accept());
				System.out.println("New connection");
				ConnexionThread ct = new ConnexionThread(this, conn);
				ct.start();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	public DataBase getDataBase() {
		return db;
	}
}
