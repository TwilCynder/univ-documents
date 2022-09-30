package backend;

import java.io.EOFException;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketException;

import communication.NetMessage;

public class ConnexionThread extends Thread {
	Serveur serv;
	Connexion conn;
	
	public ConnexionThread(Serveur serv, Connexion conn) {
		super();
		this.serv = serv;
		this.conn = conn;
		
	}
	
	public void run() {
		while(true) {
			try {
				Object obj = conn.readObject();
				System.out.println("Data received.");
				if (obj instanceof NetMessage) {
					serv.processMessage((NetMessage)obj, conn);
				} else {
					System.err.println("Received data that is not a NetMessage.");
				}
				
			} catch (SocketException e) {
				this.serv.removeConnexion(this.conn);
				return ;
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (EOFException e) {
				System.out.println("Client disconnected");
				return;
			} catch (IOException e) {
				e.printStackTrace();
				
			}
		}
	}
	
}
