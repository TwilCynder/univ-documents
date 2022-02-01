package backend;

import java.sql.Date;

public class MessageVueBase extends DBVue{
	private Date dateEnvoi;
	private String contenu;
	public MessageVueBase(DataBase db, Date dateEnvoi, String contenu) {
		super(db);
		this.dateEnvoi = dateEnvoi;
		this.contenu = contenu;
	}
	
}
