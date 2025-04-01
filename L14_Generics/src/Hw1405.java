import java.util.List;

/**
 * Viết lại các vd trong bài giảng
 * */
public class Hw1405 {
    public static void main(String[] args) {
        Student<String,Double> student1 = new Student<>("MSSV001", "Peter Pan", 8.5);
        Student<Integer,String> student2 = new Student<>(7722555, "Peter Parker","B+");

        Integer[] integers = {1,2,3,4,5};
        String[] strings = {"hello", "world"};
        print(integers);
        print(strings);

        List<String> stringList = List.of("London", "Paris", "NY");
        List<Integer> intList = List.of(9,10,11);
        printList(stringList);
        printList(intList);
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
}
