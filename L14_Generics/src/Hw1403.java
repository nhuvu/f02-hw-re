import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *  Viết phương thức generic countOccurences() để đếm số lần xuất hiện của 1 phần tử trong List<T>
 *  * static <T> int countOccurences (List<T> list, T element)
 * */
public class Hw1403 {
    public static void main(String[] args) {
        List<Integer> listInt = new ArrayList<>(List.of(1, 2, 3, 3, 4, 5, 7, 5, 5));
        List<String> listStr = new ArrayList<>(List.of("this", "is", "a", "mess", "hello", "Hello", "mess"));
        List<Double> listDouble = new ArrayList<>(List.of(1.1, 2.3, 3.4, 4.5, 5.6, 3.7));

        System.out.println(countOccurences(listInt, 5)); //3
        System.out.println(countOccurences(listInt, 8)); //0
        System.out.println(countOccurences(listStr, "hello"));//1
        System.out.println(countOccurences(listStr, "mess"));//2
        System.out.println(countOccurences(listStr, "world"));//0
        System.out.println(countOccurences(listDouble,3.7));//1
        System.out.println(countOccurences(listDouble, 5.9));//0
    }

    static <T> int countOccurences(List<T> list, T element){
        int count = 0;
        for(T el : list){
            if(el.equals(element)){
                count++;
            }
        }
        return count;
    }
}
