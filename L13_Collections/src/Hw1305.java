import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

/**
 * Sử dụng Queue: Viết một chương trình nhập vào một dãy số, lưu dãy số đó vào queue và in dãy số đó ra
 * màn hình theo thứ tự vừa nhập vào.
 * */
public class Hw1305 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Queue<Integer> queue = new LinkedList<>();
        while(true){
            System.out.print("Nhập số (chương trình dừng khi nhập 0): ");
            int num = scanner.nextInt();
            if(num == 0){
                break;
            }
            queue.add(num);
        }
        System.out.println("Dãy số đã nhập: ");
        while (!queue.isEmpty()){
            System.out.print(queue.poll() + " ");
        }
    }
}
