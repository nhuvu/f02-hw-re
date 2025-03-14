public class Circle {
    private double radius;

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public Circle(double radius) {
        this.radius = radius;
    }

    double calPerimeter (){
        return this.radius * 2 * 3.14;
    }

    double calArea (){
        return this.radius * this.radius * 3.14;
    }
}
