package communication;

public class LoginAnswerMessage extends NetMessage {
	static final long serialVersionUID = 1L;
	public LoginAnswerMessage(boolean success) {
		super();
		this.success = success;
	}

	boolean success;

	public boolean isSuccess() {
		return success;
	}
}
