import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;

/**
 * Sử dụng List (ArrayList): Viết một chương trình cho phép lưu trữ một tập hợp các số và có thể thêm, sửa,
 * xóa, xem tập hợp các số đó.
 * */
public class Hw1301 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        List<Integer> list = new ArrayList<>();
        System.out.println("==================================");
        System.out.println("MENU");
        System.out.println("==================================");
        System.out.println("1. Thêm số");
        System.out.println("2. Sửa số");
        System.out.println("3. Xoá số");
        System.out.println("4. Hiển thị danh sách số");
        System.out.println("5. Thoát chương trình");
        System.out.println("==================================");

        while (true){
            int option = 0;
            try{
                System.out.print("Nhập lựa chọn của bạn (1 -> 5): ");
                option = scanner.nextInt();
            }catch (InputMismatchException e){
                System.out.println("--> Sai định dạng. Nhập lại.");
                scanner.nextLine();
            }

            if (option == 5) {
                break;
            }
            switch (option){
                case 1:
                    try{
                        System.out.print("Nhập số muốn thêm: ");
                        list.add(scanner.nextInt());
                        break;
                    }catch (InputMismatchException e){
                        System.out.println("--> Sai định dạng. Nhập lại.");
                        scanner.nextLine();
                        break;
                    }
                case 2:
                    try {
                        System.out.print("Nhập chỉ số (index) cần sửa: ");
                        int index = scanner.nextInt();
                        scanner.nextLine();
                        System.out.print("Nhập giá trị cần sửa: ");
                        int value = scanner.nextInt();
                        list.remove(index);
                        list.add(index,value);
                        break;
                    }catch (InputMismatchException e){
                        System.out.println("--> Sai định dạng. Nhập lại.");
                        scanner.nextLine();
                        break;
                    }
                    catch (IndexOutOfBoundsException e){
                        System.out.println("--> Chỉ số mảng ngoài phạm vi. Nhập lại.");
                        System.out.println();
                        break;
                    }
                case 3:
                    try {
                        System.out.print("Nhập chỉ số (index) cần xoá: ");
                        int index = scanner.nextInt();
                        list.remove(index);
                        break;
                    }catch (InputMismatchException e){
                        System.out.println("--> Sai định dạng. Nhập lại.");
                        scanner.nextLine();
                        break;
                    }
                    catch (IndexOutOfBoundsException e){
                        System.out.println("--> Chỉ số mảng ngoài phạm vi. Nhập lại.");
                        System.out.println();
                        break;
                    }
                case 4:
                    try{
                        System.out.print("--> Danh sách hiện tại: {");
                        for(int i = 0; i < list.size(); i++){
                            if(i != list.size() - 1){
                                System.out.print(list.get(i) + ", ");
                            }else {
                                System.out.print(list.get(i));
                            }

                        }
                        System.out.println("}");
                        break;
                    }catch (NullPointerException e){
                        System.out.println("--> Lỗi: Danh sách rỗng.");
                        break;
                    }
            }
        }
        scanner.close();
    }
}
