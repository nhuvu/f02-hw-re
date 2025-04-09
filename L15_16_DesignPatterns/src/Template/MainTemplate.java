package Template;

import java.util.Scanner;

public class MainTemplate {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] numbers = new int[5];
        for(int i = 0; i < numbers.length; i++){
            numbers[i] = scanner.nextInt();
        }

        //read type of sort algo
        scanner.nextLine();
        String sortType = scanner.next();

        //sort array by type
        SortTemplate template ;
        switch (sortType){
            case "BubbleSort":
                template = new BubbleSort();
                break;
            case "SelectionSort":
                template = new SelectionSort();
                break;
            case "InsertionSort":
                template = new InsertionSort();
                break;
            default:
                throw new RuntimeException("Invalid type");
        }
        template.handle(numbers);
    }
}
