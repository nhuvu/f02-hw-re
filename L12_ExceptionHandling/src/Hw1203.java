import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * Viết một chương trình thực hiện nhập vào và cộng hai số nguyên. Sử dụng khối try-catch-finally để bắt ngoại lệ
 * khi nhập sai định dạng số, và in ra thông báo kết thúc chương trình trong khối finally.
 * */
public class Hw1203 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        try{
            System.out.print("Nhập số thứ 1: ");
            int num_1 = scanner.nextInt();
            System.out.print("Nhập số thứ 2: ");
            int num_2 = scanner.nextInt();
            scanner.close();
            System.out.printf("Tổng của %d và %d: %d\n", num_1, num_2, num_1 + num_2);
        }catch (InputMismatchException exception){
            System.out.println("Nhập sai định dạng số");
        } finally {
            System.out.println("Chương trình kết thúc.");
        }
    }


}
