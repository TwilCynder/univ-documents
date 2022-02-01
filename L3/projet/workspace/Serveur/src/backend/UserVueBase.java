package backend;

public class UserVueBase extends DBVue {
	private String id;
	private String mot_de_passe;
	private String nom;
	private String prenom;
	private TypeUtilisateur type;
	
	public UserVueBase(DataBase db, String id, String mot_de_passe, String nom, String prenom, TypeUtilisateur type) {
		super(db);
		this.id = id;
		this.mot_de_passe = mot_de_passe;
		this.nom = nom;
		this.prenom = prenom;
		this.type = type;
	}
	
}
