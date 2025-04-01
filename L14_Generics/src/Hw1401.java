import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Viết phương thức generic để trả về ArrayList chứa phần tử ko trùng lặp từ ds ban đầu
 * static <E> ArrayList<E> removeDuplicates (ArrayList<E> list)
 * */
public class Hw1401 {
    public static void main(String[] args) {
        ArrayList<Integer> listInt = new ArrayList<>(List.of(1, 2, 3, 3, 4, 5, 7, 5, 5, 7, 2, 9));
        ArrayList<String> listStr = new ArrayList<>(List.of("this", "is", "a", "mess", "hello", "Hello", "mess"));
        ArrayList<Double> listDouble = new ArrayList<>(List.of(1.1, 2.3, 3.4, 4.5, 5.6, 3.7, 2.3, 1.1));

        System.out.println(removeDuplicates(listInt)); //[1, 2, 3, 4, 5, 7, 9]
        System.out.println(removeDuplicates(listStr)); //[this, is, a, mess, hello, Hello]
        System.out.println(removeDuplicates(listDouble)); //[1.1, 2.3, 3.4, 4.5, 5.6, 3.7]
    }

    static <E> ArrayList<E> removeDuplicates(ArrayList<E> list){
        return (ArrayList<E>) list
                .stream()
                .distinct()
                .collect(Collectors.toList());
    }
}