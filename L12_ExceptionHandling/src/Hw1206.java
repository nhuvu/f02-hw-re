import java.util.Scanner;

/**
 * Viết một chương trình yêu cầu người dùng nhập vào một số nguyên. Nếu số nhập vào là số âm, hãy ném ra ngoại lệ
 * NumberFormatException và chuyển đổi nó thành một ngoại lệ tùy chỉnh tên là NegativeNumberException. Hãy bắt ngoại lệ
 * NegativeNumberException và thông báo yêu cầu người dùng nhập lại.
 * */
public class Hw1206 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        boolean isPositive = false;
        while (!isPositive){
            System.out.println("Nhập 1 số nguyên dương:");
            String input = scanner.nextLine();
            try{
                int number = Integer.parseInt(input);
                if(number >= 0){
                    isPositive = true;
                }else {
                    throw new NumberFormatException();
                }
                System.out.println("Số nguyên dương đã nhập: " + input);
            }catch (NumberFormatException exception){
                try{
                    throw new NegativeNumberException("Lỗi: nhập số âm.");
                }catch (NegativeNumberException e){
                    System.out.println(e.getMessage());
                }
            }
        }
    }
}
