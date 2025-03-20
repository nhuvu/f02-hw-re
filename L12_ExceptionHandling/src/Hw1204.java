import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * Viết một chương trình yêu cầu người dùng nhập vào một chỉ số mảng và giá trị cần gán cho phần tử đó.
 * Sử dụng nhiều khối catch để bắt các ngoại lệ như: ArrayIndexOutOfBoundsException (truy cập chỉ số mảng ngoài phạm vi) và
 * InputMismatchException (nhập sai định dạng) rồi in ra thông báo yêu cầu người dùng nhập lại.
 * */
public class Hw1204 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Nhập số phần tử mảng: ");
        int length = scanner.nextInt();
        int[] array = new int[length];

        int index = getValidIndex(scanner, length);
        int value = getValidValue(scanner);

        array[index] = value;
        System.out.printf("Giá trị ở chỉ số %d trong mảng là %d%n", index, value);
    }

    private static int getValidIndex(Scanner scanner, int length) {
        while (true) {
            try {
                System.out.println("Nhập chỉ số mảng để gán giá trị:");
                int index = scanner.nextInt();
                scanner.nextLine();

                if (index >= 0 && index < length) {
                    return index;
                } else {
                    throw new ArrayIndexOutOfBoundsException("Chỉ số mảng ngoài phạm vi. Vui lòng nhập lại.");
                }
            } catch (InputMismatchException e) {
                System.out.println("Sai format, vui lòng nhập số nguyên.");
                scanner.nextLine();
            } catch (ArrayIndexOutOfBoundsException e){
                System.out.println(e.getMessage());
            }
        }
    }

    private static int getValidValue(Scanner scanner) {
        while (true) {
            try {
                System.out.println("Nhập giá trị: ");
                int value = scanner.nextInt();
                scanner.nextLine();
                return value;
            } catch (InputMismatchException e) {
                System.out.println("Sai format, vui lòng nhập số nguyên.");
                scanner.nextLine();
            }
        }
    }
}


