import java.util.HashSet;
import java.util.Set;

/**
 * Sử dụng Set (HashSet): Viết một chương trình đếm xem có bao nhiêu số khác nhau trong một tập hợp số.
 * Ví dụ: 1, 2, 2, 3, 4, 5 4 ⇒ Có 5 số khác nhau là 1, 2, 3, 4, 5
 * */
public class Hw1303 {
    public static void main(String[] args) {
        int[] array = new int[] {1, 2, 2, 3, 4, 5, 4, 5, 7, 5, 9, 3, 1, 1, 2};
        Set<Integer> set = new HashSet<>();
        for(int i = 0; i < array.length; i++){
            set.add(array[i]);
        }
        System.out.printf("Có %d số khác nhau trong tập số đã cho là: ", set.size());
        for(int i : set){
            System.out.print(i + " ");
        }
    }
}
