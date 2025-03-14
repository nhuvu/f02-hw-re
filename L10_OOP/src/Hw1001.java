/**
 * Khai báo một lớp Circle, có thuộc tính là radius, viết hàm tính chu vi,
 * diện tích của hình tròn đó và in kết quả ra màn hình.
 * */
public class Hw1001 {
    public static void main(String[] args) {
        Circle circle = new Circle(5);
        System.out.printf("Chu vi hình tròn bán kính %.0f là: %.2f \n",
                circle.getRadius(), circle.calPerimeter());
        System.out.printf("Diện tích hình tròn bán kính %.0f là: %.2f \n",
                circle.getRadius(), circle.calArea());
    }
}
