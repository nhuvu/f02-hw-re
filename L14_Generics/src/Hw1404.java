import java.util.ArrayList;
import java.util.List;

/**
 * Viết phương thức sumNumbers() tính tổng các số trong List<? extends Number>
 *  *  * static double sumNumbers (List<? extends Number> list)
 * */
public class Hw1404 {
    public static void main(String[] args) {
        List<Integer> listInt = new ArrayList<>(List.of(1, 2, 3, 3, 4, 5, 7, 5, 5));
        List<Double> listDouble = new ArrayList<>(List.of(1.1, 2.3, 3.4, 4.5, 5.6, 3.7));
        System.out.println(sumNumbers(listInt));
        System.out.println(sumNumbers(listDouble));
    }

    static double sumNumbers (List<? extends Number> list){
        double sum = 0.0;
        for(Number el : list){
            sum += el.doubleValue();
        }
        return sum;
    }
}
