import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * Viết một chương trình yêu cầu người dùng nhập vào một chỉ số mảng và giá trị cần gán cho phần tử đó.
 * Sử dụng nhiều khối catch để bắt các ngoại lệ như: ArrayIndexOutOfBoundsException (truy cập chỉ số mảng ngoài phạm vi) và
 * InputMismatchException (nhập sai định dạng) rồi in ra thông báo yêu cầu người dùng nhập lại.
 * */
public class Hw1204 {
    public static void main(String[] args) throws ArrayIndexOutOfBoundsException {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Nhập số phần tử mảng: ");
        int length = scanner.nextInt();
        int[] array = new int[length];
        boolean isIndexNumberic = false;
        boolean isValueNumberic = false;
        boolean isIndexValid = false;
        while (!isIndexNumberic && !isIndexValid && !isValueNumberic){
            try{
                System.out.print("Nhập chỉ số mảng để gán giá trị:  ");
                int index = scanner.nextInt();
                isIndexNumberic = true;
                scanner.nextLine();
                if(index >= 0 && index < length){
                    isIndexValid = true;
                }else {
                    throw new ArrayIndexOutOfBoundsException("Chỉ số mảng ngoài phạm vi. Vui lòng nhập lại: ");
                }
                System.out.print("Nhập giá trị: ");
                int value = scanner.nextInt();
                isValueNumberic = true;
                array[index] = value;
                System.out.printf("Giá trị ở chỉ số %d trong mảng là %d", index, value);
            }catch (ArrayIndexOutOfBoundsException e){
                System.out.println(e.getMessage());
                scanner.nextLine();
            }catch (InputMismatchException e){
                System.out.println("Sai format, vui lòng nhập số nguyên");
                scanner.nextLine();
            }
        }
    }


}
