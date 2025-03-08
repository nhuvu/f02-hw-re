import java.util.Scanner;

public class Hw0501 {
    /**
     * Nhập vào một mảng, và tính tổng các số có trong mảng đó.
     * */
    public static void main(String[] args) {
        int sum = 0;
        Scanner scanner = new Scanner(System.in);
        System.out.print("Nhập số phần tử cho mảng: ");
        int n = scanner.nextInt();

        int[] array = new int[n];
        for(int i = 0; i < n; i++){
            System.out.print("Nhập số: ");
            array[i] = scanner.nextInt();
            sum += array[i];
        }
        scanner.close();

        System.out.print("Mảng đã nhập: ");
        for(int i = 0; i < n; i++){
            System.out.print(array[i] + " ");
        }
        System.out.println();
        System.out.println("Tổng các số trong mảng: " + sum);
    }
}
