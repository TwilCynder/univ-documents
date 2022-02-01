package backend;

public class GroupeVueBase extends DBVue {
	private String nom;
	private TypeUtilisateur type;
	public GroupeVueBase(DataBase db, String nom, int type) {
		super(db);
		this.nom = nom;
		this.type = (type == 1) ? TypeUtilisateur.SERVICE : TypeUtilisateur.CAMPUS;
	}
	
	public String toString() {
		return nom + " " + type;
	}
}
