import java.util.Arrays;

/**
 * Viết phương thức swap() để hoán đổi 2 phần tử trong mảng
 *  * static <T> void swap (T[] array, int i, int j)
 * */
public class Hw1402 {
    public static void main(String[] args) {
        Integer[] arrayInt = new Integer[]{1, 2, 3, 4, 5};
        String [] arrayString = new String[]{"this", "is", "a", "mess"};
        Double[] arrayDouble = new Double[]{1.1, 2.3, 3.4, 4.5, 5.6};

        swap(arrayInt, 0, 2);
        swap(arrayString, 1, 3);
        swap(arrayDouble, 3,4);

        System.out.println(Arrays.toString(arrayInt)); //[3, 2, 1, 4, 5]
        System.out.println(Arrays.toString(arrayString)); //[this, mess, a, is]
        System.out.println(Arrays.toString(arrayDouble));//[1.1, 2.3, 3.4, 5.6, 4.5]

    }

    static <T> void swap(T[] array, int i, int j){
        T temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
}
