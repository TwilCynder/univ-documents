package tsp;

public class City {
    int id;
    int x;
    int y;

    public City(int id, int x, int y){
        this.x = x;
        this.y = y;
        this.id = id;
    }

    @Override
    public String toString() {
        return "City " + id + " (" + x + "," + y + ")";
    }
}
