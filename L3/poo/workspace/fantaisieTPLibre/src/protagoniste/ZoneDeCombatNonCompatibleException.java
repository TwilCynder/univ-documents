package protagoniste;

public class ZoneDeCombatNonCompatibleException extends Throwable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/*ZoneDeCombat zoneSalle;
	ZoneDeCombat zoneMonstre;
	
 	public ZoneDeCombatNonCompatibleException(ZoneDeCombat zoneSalle, ZoneDeCombat zoneMonstre) {
		super();
		this.zoneSalle = zoneSalle;
		this.zoneMonstre = zoneMonstre;
	}

	public String getMessage() {
 		return "La zone de combat de la salle est " + zoneSalle + " alors que celle du monstre est " + zoneMonstre;
 	}*/
	
	public ZoneDeCombatNonCompatibleException() {
		super();
	}
	
	public ZoneDeCombatNonCompatibleException(String message) {
		super(message);
	}
	
	public ZoneDeCombatNonCompatibleException(ZoneDeCombat zdcSalle, ZoneDeCombat zdcMonstre) {
		super("La zone de combat du monstre est " + zdcMonstre + " alors que celle de la salle est " + zdcSalle);
	}
	
	public ZoneDeCombatNonCompatibleException(Throwable cause) {
		super(cause);
	}
	
	public ZoneDeCombatNonCompatibleException(String message, Throwable cause) {
		super(message, cause);
	}
}
