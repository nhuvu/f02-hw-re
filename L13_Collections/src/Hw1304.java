import java.util.Scanner;
import java.util.Stack;

/**
 * Sử dụng Stack: Viết một chương trình đảo ngược một chuỗi nhập vào từ bàn phím.
 * */
public class Hw1304 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Nhập chuỗi: ");
        String text = scanner.nextLine();
        char[] chars = text.toCharArray();
        Stack<Character> stack = new Stack<>();
        for(int i = 0; i < chars.length; i++){
            stack.push(chars[i]);
        }
        StringBuilder sb = new StringBuilder();
        while (!stack.isEmpty()){
            sb.append(stack.pop());
        }
        System.out.println("Chuỗi đảo ngược: " + sb);
        scanner.close();
    }
}
