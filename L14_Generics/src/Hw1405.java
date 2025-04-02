import java.util.ArrayList;
import java.util.List;

/**
 * Viết lại các vd trong bài giảng
 * */
public class Hw1405 {
    public static void main(String[] args) {
        //Generic class
        Student<String,Double> student1 = new Student<>("MSSV001", "Peter Pan", 8.5);
        Student<Integer,String> student2 = new Student<>(7722555, "Peter Parker","B+");

        //Generic method
        Integer[] integers = {1,2,3,4,5};
        String[] strings = {"hello", "world"};
        print(integers);
        print(strings);

        //Unbounded wildcard
        List<String> stringList = List.of("London", "Paris", "NY");
        List<Integer> intList = List.of(9,10,11);
        printList(stringList);
        printList(intList);

        //Bounded wildcard
        List<Double> dList = List.of(2.2, 3.5, 67.8, 3.3);
        List<Integer> iList = List.of(12,13,14,15,16,66);
        printNumber(dList);
        printNumber(iList);

        //Lower bounded wildcard
        List<Integer> integerList = new ArrayList<>();
        List<Number> numList = new ArrayList<>();
        addNumbers(integerList);
        addNumbers(numList);
        System.out.println(integerList);
        System.out.println(numList);
    }

    static <E> void print(E[] list){
        for(int i = 0; i < list.length; i++){
            System.out.println(list[i]);
        }
    }

    static void printList(List<?> list){
        for(Object obj : list){
            System.out.println(obj);
        }
    }

    static void printNumber(List<? extends Number> list){
        for(Object obj:list){
            System.out.println(obj);
        }
    }

    static void addNumbers(List<? super Integer> list){
        list.add(10);
        list.add(20);
        list.add(30);
        Integer a = (Integer) list.get(0);
    }
}
