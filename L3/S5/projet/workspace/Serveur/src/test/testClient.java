package test;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.net.Socket;

import communication.LoginRequestMessage;
import communication.NetMessage;
import communication.NewTicketMessage;

public class testClient {
	public static void main(String[] args) {
		
		try (Socket s = new Socket("localhost", 5000) ; ObjectOutputStream oos = new ObjectOutputStream(s.getOutputStream())){
			NetMessage mess = new NewTicketMessage("tnt", "Groupe 1", "Test", "oui", 54);
			oos.writeObject(mess);
			mess = new LoginRequestMessage("tnt", "cynder");
			oos.writeObject(mess);
			while (true) {}
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("Client end");
	}
}