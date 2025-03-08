public class Hw0814 {
    /**
     *
     Viết chương trình tìm ký tự đầu tiên xuất hiện nhiều nhất trong chuỗi String a.
     Input:
     a = "o1YL9F6TIEHt2kqnIB6ZD8mcx6Qk6cCs31miF1kbCsiiP71kfmbbkThJXFYDElVZfESZWqgyCxk3GozgdtxOglgoEfmt60xGAHbt"
     Output: In ra ký tự đầu tiên xuất hiện nhiều nhất (k)
     * */
    public static void main(String[] args) {
        String a = "o1YL9F6TIEHt2kqnIB6ZD8mcx6Qk6cCs31miF1kbCsiiP71kfmbbkThJXFYDElVZfESZWqgyCxk3GozgdtxOglgoEfmt60xGAHbt";
        int[] countCharFrequency = frequencyOfChar(a);
        int maxFrequency = findMax(countCharFrequency);
        //loop countCharFrequency, tìm & trả về ký tự đầu tiên với frequency = max
        for(int i = 0; i < countCharFrequency.length; i++){
            if(countCharFrequency[i] == maxFrequency){
                System.out.println((char) i);
                break;
            }
        }
    }

    public static int[] frequencyOfChar (String s){
        int[] frequency = new int[128];
        for(int i = 0; i < s.length(); i++){
            int charInt = s.charAt(i);
            frequency[charInt]++;
        }
        return frequency;
    }

    public static int findMax (int[] array){
        int max = array[0];
        for(int i = 0; i < array.length; i++){
            if(max < array[i]){
                max = array[i];
            }
        }
        return max;
    }
}
