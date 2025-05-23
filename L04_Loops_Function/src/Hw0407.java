import java.util.Scanner;

public class Hw0407 {
    /**
     * Viết chương trình tính giai thừa của một số n (n > 0).
     * */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        while (true){
            System.out.print("Nhập số n (n > 0) để tính giai thừa: ");
            n = scanner.nextInt();
            if(n > 0){
                break;
            }
        }
        scanner.close();
        System.out.printf("Giai thừa của %d là: %d", n, factorial(n));
    }

    public static long factorial (int n){
        long fac = 1;
        for(int i = 1; i <= n; i++){
            fac *= i;
        }
        return fac;
    }
}
