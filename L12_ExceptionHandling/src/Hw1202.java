import java.util.InputMismatchException;
import java.util.Scanner;
/**
 * Viết chương trình yêu cầu người dùng nhập một số nguyên. Nếu người dùng nhập không phải số nguyên, hãy xử lý ngoại lệ
 * InputMismatchException và thông báo lỗi cho người dùng, yêu cầu họ nhập lại.
 * */
public class Hw1202 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        boolean isNumberic = false;
        while (!isNumberic){
            try{
                System.out.println("Nhập 1 số nguyên:    ");
                int input = scanner.nextInt();
                isNumberic = true;
                scanner.nextLine();
                System.out.println("Số nguyên đã nhập: " + input);
            }catch (InputMismatchException exception){
                System.out.println("Sai format, vui lòng nhập số nguyên");
                scanner.nextLine();
            }
        }

    }
}
