package communication;

public class LoginRequestMessage extends NetMessage {
	public String userID, motDePasse;

	public LoginRequestMessage(String userID, String motDePasse) {
		super();
		this.userID = userID;
		this.motDePasse = motDePasse;
	}
}	
