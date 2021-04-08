package banque;

public class Banque {
	private int nClients;
	private Client clients[];
	
	public Banque() {
		this.clients = new Client[100];
		this.nClients = 0;
	}
	
	public Client getClient(int i) {
		return this.clients[i];
	}
	
	public int ajouterClient(String nom, Date dateNaissance) {
		this.clients[this.nClients] = new Client(nom, dateNaissance);
		return this.nClients += 1;
	}
	
	public void afficherBilan() {
		for (int i = 0; i < this.nClients; i++) {
			System.out.print("Client n° " + i + " : ");
			this.clients[i].afficherBilan();
		}
	}
}
