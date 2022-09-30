package communication;

public class NewTicketMessage extends NetMessage{
	private String idAuteur, groupeDest, titre, messageInitial;
	int numReq;
	
	public NewTicketMessage(String idAuteur, String groupeDest, String titre, String messageInitial, int numReq) {
		super();
		this.idAuteur = idAuteur;
		this.groupeDest = groupeDest;
		this.titre = titre;
		this.messageInitial = messageInitial;
		this.numReq = numReq;
	}

	public String getIdAuteur() {
		return idAuteur;
	}

	public String getGroupeDest() {
		return groupeDest;
	}

	public String getTitre() {
		return titre;
	}

	public String getMessageInitial() {
		return messageInitial;
	}

	public int getNumReq() {
		return numReq;
	}
}
