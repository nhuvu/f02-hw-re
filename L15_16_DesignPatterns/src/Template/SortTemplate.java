package Template;

import java.util.Arrays;

public abstract class SortTemplate {
    public void handle(int[] numbers){
        //sort array
        this.sort(numbers);
        //show to console
        System.out.println(Arrays.toString(numbers));
    }

    public abstract void sort(int[] numbers);
}
