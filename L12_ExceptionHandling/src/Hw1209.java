import java.util.Arrays;
import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * Viết một chương trình quản lý danh sách sinh viên. Chương trình có các chức năng: thêm sinh viên, xóa sinh viên, và hiển thị danh
 * sách sinh viên. Trong quá trình thao tác, hãy xử lý các ngoại lệ như NullPointerException, IndexOutOfBoundsException, và các ngoại
 * lệ tùy chỉnh khác (nếu có) khi danh sách sinh viên rỗng hoặc chỉ số sinh viên không hợp lệ.
 */
public class Hw1209 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Student[] students = new Student[0];
        System.out.println("==================================");
        System.out.println("QUẢN LÝ SINH VIÊN - MENU");
        System.out.println("==================================");
        System.out.println("1. Thêm sinh viên");
        System.out.println("2. Xoá sinh viên");
        System.out.println("3. Hiển thị danh sách sinh viên");
        System.out.println("4. Thoát chương trình");
        System.out.println("==================================");
        while (true) {
            System.out.print("Nhập lựa chọn của bạn: ");
            int option = scanner.nextInt();
            if (option == 4) {
                break;
            }
            switch (option) {
                case 1:
                    try {
                        Student s = new Student();
                        System.out.println("Nhập thông tin sinh viên: ");
                        scanner.nextLine();
                        System.out.print("Họ tên: ");
                        s.setName(scanner.nextLine());
                        System.out.print("MSSV: ");
                        s.setStudentNo(scanner.nextLine());
                        System.out.print("Tuổi: ");
                        s.setAge(scanner.nextInt());
                        scanner.nextLine();
                        System.out.print("Điểm trung bình: ");
                        s.setAveragePoint(scanner.nextDouble());
                        scanner.nextLine();
                        System.out.print("Số điện thoại: ");
                        s.setPhone(scanner.nextLine());
                        System.out.println("Thông tin sinh viên vừa nhập: ");
                        System.out.println(s);
                        students = addStudent(students, s);
                        break;
                    } catch (InputMismatchException e) {
                        System.out.println(e.getMessage());
                        break;
                    }
                case 2:
                    try {
                        System.out.println("Nhập chỉ số sinh viên cần xoá: ");
                        int index = scanner.nextInt();
                        students = removeStudent(students, index);
                        break;
                    } catch (NullPointerException e) {
                        System.out.println(e.getMessage());
                        break;
                    } catch (ArrayIndexOutOfBoundsException e) {
                        System.out.println(e.getMessage());
                        break;
                    }
                case 3:
                    try {
                        showStudentList(students);
                        break;
                    } catch (NullPointerException e) {
                        System.out.println(e.getMessage());
                        break;
                    }
            }
        }
        scanner.close();
    }

    public static Student[] addStudent(Student[] list, Student student) {
        Student[] result = Arrays.copyOf(list, list.length + 1);
        result[result.length - 1] = student;
        return result;
    }

    public static Student[] removeStudent(Student[] list, int index) {
        if (index < 0 || index >= list.length) {
            throw new ArrayIndexOutOfBoundsException("Chỉ số mảng ngoài phạm vi. Vui lòng nhập lại.");
        }
        if (list == null) {
            throw new NullPointerException("Danh sách sinh viên rỗng.");
        }
        Student[] result = new Student[list.length - 1];
        for (int i = 0, k = 0; i < list.length; i++) {
            if (i == index) {
                continue;
            }
            result[k++] = list[i];
        }
        return result;
    }

    public static void showStudentList(Student[] students) {
        if (students.length == 0) {
            throw new NullPointerException("Danh sách sinh viên rỗng.");
        }
        for (int i = 0; i < students.length; i++) {
            System.out.println(students[i]);
        }
    }
}
