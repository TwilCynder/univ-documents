package livre;

public interface Livre {
	public default void ecrire(String s) {
		System.out.println(s);
	}
}