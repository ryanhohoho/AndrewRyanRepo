
package gameframe;

public class tester {
    
    public static void main(String[] args) {
        Bunny h=new Bunny(100, 100, null);
        Bunny h2=new Bunny(200, 200,null);
        double angle = h.directionTo(h2);
        System.out.println(angle);
        System.out.println( h.distanceTo(h2));
        
    }
}
