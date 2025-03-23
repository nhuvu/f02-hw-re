import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

/**
 * Sử dụng Map (HashMap): Viết một chương trình nhập vào một đoạn văn và đếm số lần xuất hiện các từ có
 * trong đoạn văn và in ra màn hình kết quả.
 * */
public class Hw1302 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Nhập đoạn văn: ");
        String input = scanner.nextLine();
        String[] inputList = input.split(" ");
        Map<String, Integer> wordFrequency = new HashMap<>();
        for(String s : inputList){
            if(!wordFrequency.containsKey(s)){
                wordFrequency.put(s,1);
            }else {
                wordFrequency.put(s, wordFrequency.get(s) + 1);
            }
        }
        System.out.println("Số lần xuất hiện các từ trong đoạn văn: ");
        for(Map.Entry<String, Integer> entry : wordFrequency.entrySet()){
            System.out.println(entry.getKey() + ": " + entry.getValue());
        }
        scanner.close();
    }
}
