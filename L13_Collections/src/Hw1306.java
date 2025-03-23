import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.*;

/**
 * Hãy viết một chương trình Java chạy trên màn hình console để quản lý danh sách sinh viên.
 * Chương trình phải có menu tùy chọn bằng switch-case để thực hiện các chức năng sau:
 *
 *  1. Thêm sinh viên: Nhập thông tin sinh viên (Mã sinh viên, Họ và tên, Tuổi, Điểm trung bình).
 *  2. Sửa thông tin sinh viên: Nhập mã sinh viên cần sửa, sau đó chỉnh sửa thông tin.
 *  3. Xóa sinh viên: Nhập mã sinh viên cần xóa khỏi danh sách.
 *  4. Hiển thị danh sách sinh viên: In danh sách tất cả sinh viên.
 *  5. Sắp xếp danh sách sinh viên
 *      5.1 Theo Họ và Tên (tăng dần).
 *      5.2 Theo Điểm trung bình (tăng dần).
 *      5.3 Theo Điểm trung bình (giảm dần).
 *  6. Tìm kiếm sinh viên: Tìm kiếm sinh viên theo Mã sinh viên.
 *  7. Thoát chương trình (Lưu danh sách sinh viên vào file txt).
 *
 * Lưu ý: Khi chạy chương trình lên thì phải khởi tạo danh sách sinh viên từ file đã lưu của lần chạy trước đó.
 * */
public class Hw1306 {
    public static void main(String[] args) throws FileNotFoundException {
        Scanner scannerFile = new Scanner(new File("resources/L13/students.txt"));
        Scanner scanner = new Scanner(System.in);
        List<Student> students = new ArrayList<>();
        while(scannerFile.hasNextLine()){
            String line = scannerFile.nextLine();
            String[] attributes = line.split(",");
            Student s = new Student();
            for(int i = 0; i < attributes.length; i++){
                s.setStudentNo(attributes[0]);
                s.setName(attributes[1]);
                s.setAge(Integer.parseInt(attributes[2]));
                s.setAveragePoint(Double.parseDouble(attributes[3]));
            }
            students.add(s);
        }
        System.out.println("==================================");
        System.out.println("QUẢN LÝ SINH VIÊN - MENU");
        System.out.println("==================================");
        System.out.println("1. Thêm sinh viên");
        System.out.println("2. Sửa sinh viên");
        System.out.println("3. Xoá sinh viên");
        System.out.println("4. Hiển thị danh sách sinh viên");
        System.out.println("5. Sắp xếp danh sách theo họ tên (A->Z)");
        System.out.println("6. Sắp xếp danh sách theo điểm trung bình (tăng dần)");
        System.out.println("7. Sắp xếp danh sách theo điểm trung bình (giảm dần)");
        System.out.println("8. Tìm kiếm sinh viên");
        System.out.println("9. Thoát chương trình");
        System.out.println("==================================");
        while(true){
            System.out.print("Nhập lựa chọn của bạn (1 -> 9): ");
            String option = scanner.next();
            if(option.equals("9")){
                break;
            }
            switch (option){
                case "1":
                    try {
                        Student s = createStudentFromInput(scanner);
                        addStudent(students, s);
                        break;
                    } catch (InputMismatchException e) {
                        System.out.println("Sai định dạng.");
                        break;
                    }
                case "2":
                    try{
                        System.out.print("Nhập mã số sinh viên để sửa thông tin: ");
                        scanner.nextLine();
                        String studentNo = scanner.next();
                        editStudent(students, studentNo, scanner);
                        break;
                    }catch (InputMismatchException e) {
                        System.out.println("Sai định dạng.");
                        break;
                    }catch (NullPointerException e) {
                        System.out.println(e.getMessage());
                        break;
                    }
                case "3":
                    try{
                        System.out.print("Nhập mã số sinh viên để xoá: ");
                        scanner.nextLine();
                        String studentNo = scanner.next();
                        deleteStudent(students, studentNo);
                        break;
                    }catch (InputMismatchException e) {
                        System.out.println("Sai định dạng.");
                        break;
                    }catch (NullPointerException e) {
                        System.out.println(e.getMessage());
                        break;
                    }
                case "4":
                    try {
                        showStudentList(students);
                        break;
                    } catch (NullPointerException e) {
                        System.out.println(e.getMessage());
                        break;
                    }
                case "5":
                    try {
                        sortByName(students);
                        break;
                    } catch (NullPointerException e) {
                        System.out.println(e.getMessage());
                        break;
                    }
                case "6":
                    try {
                        sortByPointAsc(students);
                        break;
                    } catch (NullPointerException e) {
                        System.out.println(e.getMessage());
                        break;
                    }
                case "7":
                    try {
                        sortByPointDesc(students);
                        break;
                    } catch (NullPointerException e) {
                        System.out.println(e.getMessage());
                        break;
                    }
                case "8":
                    try{
                        System.out.print("Nhập mã số sinh viên cần tìm: ");
                        scanner.nextLine();
                        String studentNo = scanner.next();
                        findStudent(students, studentNo);
                        break;
                    } catch (NullPointerException e) {
                        System.out.println(e.getMessage());
                        break;
                    }
            }
        }
        scannerFile.close();
        scanner.close();

        //Ghi lại danh sách sv hiện tại vào file
        try(PrintWriter writer = new PrintWriter("resources/L13/students.txt")){
            for(Student student : students){
                writer.printf("%s,%s,%d,%.1f %n",
                        student.getStudentNo(), student.getName(), student.getAge(), student.getAveragePoint());
            }
        }catch (FileNotFoundException e){
            System.out.println(e.getMessage());
        }
    }

    public static void findStudent (List<Student> students, String studentNo){
        int index = findIndex(students, studentNo);
        if(index == -1){
            System.out.println("Không tìm thấy sinh viên với MSSV đã nhập.");
        }else {
            System.out.println("Kết quả tìm kiếm:");
            System.out.println(students.get(index));
        }
    }

    public static void sortByPointDesc (List<Student> students){
        if (students.isEmpty()) {
            throw new NullPointerException("Danh sách sinh viên rỗng.");
        }
        Collections.sort(students, Comparator.comparing(Student::getAveragePoint).reversed());
        System.out.println("Danh sách sinh viên sắp xếp theo điểm TB giảm dần: ");
        for(Student s : students){
            System.out.println(s);
        }
    }

    public static void sortByPointAsc (List<Student> students){
        if (students.isEmpty()) {
            throw new NullPointerException("Danh sách sinh viên rỗng.");
        }
        Collections.sort(students, Comparator.comparing(Student::getAveragePoint));
        System.out.println("Danh sách sinh viên sắp xếp theo điểm TB tăng dần: ");
        for(Student s : students){
            System.out.println(s);
        }
    }

    public static void sortByName (List<Student> students){
        if (students.isEmpty()) {
            throw new NullPointerException("Danh sách sinh viên rỗng.");
        }
        Collections.sort(students, Comparator.comparing(Student::getName));
        System.out.println("Danh sách sinh viên sắp xếp theo tên: ");
        for(Student s : students){
            System.out.println(s);
        }
    }

    public static void showStudentList(List<Student> students) {
        if (students.isEmpty()) {
            throw new NullPointerException("Danh sách sinh viên rỗng.");
        }
        for(Student s : students){
            System.out.println(s);
        }
    }
    public static void deleteStudent (List<Student> students, String studentNo){
        int index = findIndex(students, studentNo);
        if(index == -1){
            System.out.println("Mã số sinh viên không tồn tại.");
        }else {
            students.remove(index);
        }
    }
    public static void editStudent (List<Student> students, String studentNo, Scanner scanner){
        int index = findIndex(students, studentNo);
        if(index == -1){
            System.out.println("Mã số sinh viên không tồn tại.");
        }else {
            Student student = students.get(index);
            System.out.println("Nhập thông tin sinh viên: ");
            scanner.nextLine();
            System.out.print("Họ tên: ");
            student.setName(scanner.nextLine());
            System.out.print("Tuổi: ");
            student.setAge(scanner.nextInt());
            scanner.nextLine();
            System.out.print("Điểm trung bình: ");
            student.setAveragePoint(scanner.nextDouble());
        }
    }

    public static void addStudent(List<Student> students, Student student){
        int index = findIndex(students, student.getStudentNo());
        //sv chưa tồn tại, thêm sv
        if(index == -1){
            students.add(student);
        }else {
            System.out.println("MSSV đã tồn tại, chỉnh sửa thông tin thay vì thêm mới.");
        }
    }

    public static int findIndex(List<Student> students, String studentNo){
        for(int i = 0; i < students.size(); i++){
            if(studentNo.equals(students.get(i).getStudentNo())){
                return i;
            }
        }
        return -1;
    }

    public static Student createStudentFromInput(Scanner scanner){
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
        System.out.println("Thông tin sinh viên vừa nhập: ");
        System.out.println(s);
        return s;
    }
}
