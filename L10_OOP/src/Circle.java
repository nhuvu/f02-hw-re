public class Circle {
    double radius;

    Circle(double radius) {
        this.radius = radius;
    }

    double calPerimeter (double radius){
        return radius * 2 * 3.14;
    }

    double calArea (double radius){
        return radius * radius * 3.14;
    }
}
