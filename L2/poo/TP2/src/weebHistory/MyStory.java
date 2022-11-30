/**
 * 
 */
package weebHistory;

/**
 * @author tnt3192a
 *
 */
public class MyStory {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Humain h = new Humain("Prof", "Porto", 10);

		  h.direBonjour ();
		  h.boire ();

		  Commercant c = new Commercant("Marchand", 35);

		  c.direBonjour ();

		  Yakuza y = new Yakuza("Yaku␣le␣noir", "biere",42, "WarSong");

		  y.extorquer(c);

		  Ronin r = new Ronin("Roro", "sake", 61);

		  r.donner(c, 10);
		  r.provoquer(y);
		  r.direBonjour ();
	}

}
