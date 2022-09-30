package client;


import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.net.UnknownHostException;

public class Connexion {
	private Socket socket;
	private ObjectInputStream entree;
	private ObjectOutputStream sortie;
	
	
	public Connexion(String url, int port) {
		try {
			socket = new Socket(url, port);
			sortie = new ObjectOutputStream(socket.getOutputStream());
			entree = new ObjectInputStream(socket.getInputStream());
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	
		
	}
	
	//cette m�thode ne catch pas les exceptions contrairement � writeObject car contrairement � cette derni�re elle sera toujours appel�e dans un bloc try-catch qui devra catch les EOFException, donc si on catch les IOExcetpion ici �a ne peut plus marcher
	public Object readObject() throws ClassNotFoundException, IOException{
		return entree.readObject();
	}
	
	
	public void writeObject(Object obj){
		try {
			sortie.writeObject(obj);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	public void close() throws IOException {
		if (socket!= null) socket.close();
	}

}
