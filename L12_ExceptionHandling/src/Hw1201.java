import java.util.Scanner;

/**
 * Viết một chương trình yêu cầu người dùng nhập vào hai số nguyên. Thực hiện phép chia số thứ nhất cho số thứ hai. Nếu xảy
 * ra ngoại lệ chia cho 0, hãy xử lý và thông báo lỗi cho người dùng.
 * */
public class Hw1201 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Nhập số chia: ");
        int nominator = scanner.nextInt();
        System.out.print("Nhập số bị chia: ");
        int denominator = scanner.nextInt();
        try{
            if(denominator == 0){
                throw new ArithmeticException("Không thể chia cho 0");
            }else {
                System.out.printf("Kết quả phép chia %d cho %d là %d",
                        nominator, denominator, nominator/denominator);
            }
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }


}
