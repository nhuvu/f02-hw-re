import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Scanner;

/**
 * Sử dụng try-with-resources để minh họa tự động close, khi ghi một đoạn text ra File.
 * */
public class Hw1207 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Nhập text để ghi vào file: ");
        String text = scanner.nextLine();
        try(PrintWriter writer = new PrintWriter("resources/L12/Hw1207_Writer.txt")){
            writer.println(text);
        }catch (FileNotFoundException e){
            System.out.println(e.getMessage());
        }
    }
}
