package backend;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;

/**
 * Wrapper autour de Socket, facilitant l'usage des Object Stream
 *
 */
public class Connexion implements AutoCloseable {
	Socket socket;
	private ObjectInputStream ois;
	private ObjectOutputStream oos;

	public Connexion(Socket socket) {
		super();
		this.socket = socket;
		try {
			ois = new ObjectInputStream(socket.getInputStream());
			oos = new ObjectOutputStream(socket.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public Object readObject() throws ClassNotFoundException, IOException{
		return ois.readObject();
	}
	
	//cette m�thode ne catch pas les exceptions contrairement � writeObject car contrairement � cette derni�re elle sera toujours appel�e dans un bloc try-catch qui devra catch les EOFException, donc si on catch les IOExcetpion ici �a ne peut plus marcher
	public void writeObject(Object obj){
		try {
			oos.writeObject(obj);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	
	public ObjectInputStream getOis() {
		return ois;
	}

	public ObjectOutputStream getOos() {
		return oos;
	}

	@Override
	public void close() throws IOException {
		socket.close();
	}
	
	
}
