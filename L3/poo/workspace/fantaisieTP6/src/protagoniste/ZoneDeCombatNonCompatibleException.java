package protagoniste;

public class ZoneDeCombatNonCompatibleException extends Throwable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	ZoneDeCombat zoneSalle;
	ZoneDeCombat zoneMonstre;
	
 	public ZoneDeCombatNonCompatibleException(ZoneDeCombat zoneSalle, ZoneDeCombat zoneMonstre) {
		super();
		this.zoneSalle = zoneSalle;
		this.zoneMonstre = zoneMonstre;
	}



	public String getMessage() {
 		return "La zone de combat de la salle est " + zoneSalle + " alors que celle du monstre est " + zoneMonstre;
 	}
	
}
