import java.util.Scanner;

/**
 * Tạo một lớp ngoại lệ tùy chỉnh (custom exception) tên là InvalidAgeException. Viết một chương trình yêu cầu người dùng nhập
 * vào tuổi, nếu tuổi nhỏ hơn 6 thì ném ra ngoại lệ InvalidAgeException và thông báo lỗi cho người dùng.
 * */
public class Hw1205 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Nhập tuổi:");
        try{
            int age = scanner.nextInt();
            if(age < 6){
                throw new InvalidAgeException("Lỗi: tuổi nhỏ hơn 6");
            }
            System.out.printf("Tuổi đã nhập: %d", age);
        }catch (InvalidAgeException e){
            System.out.println(e.getMessage());
        }
    }
}


