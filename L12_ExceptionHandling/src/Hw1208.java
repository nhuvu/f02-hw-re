import java.util.Scanner;

/**
 * Giả sử bạn đang viết một chương trình mô phỏng giao dịch ngân hàng. Viết một lớp BankAccount với phương thức fundout
 * (double amount) để rút tiền từ tài khoản. Nếu số tiền rút lớn hơn số dư tài khoản, ném ra ngoại lệ InsufficientFundsException.
 * Sử dụng try-catch để xử lý giao dịch thất bại và hoàn tác giao dịch nếu cần thiết.
 */
public class Hw1208 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        BankAccount bankAccount = new BankAccount(10000000);
        System.out.println("Nhập số tiền muốn rút: ");
        double withdraw = scanner.nextDouble();
        try {
            bankAccount.fundout(withdraw);

        } catch (InsufficientFundsException e) {
            System.out.println(e.getMessage());
        } finally {
            System.out.println("Giao dịch hoàn tất.");
        }
        scanner.close();
    }

}
