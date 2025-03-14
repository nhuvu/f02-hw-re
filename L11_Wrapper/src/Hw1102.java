import java.math.BigDecimal;
import java.math.BigInteger;

public class Hw1102 {
    /**
     * Ví dụ sử dụng các method equals, toString và các method của các Wrapper, String,
     * StringBuilder, BigInteger, BigDecimal class
     * */
    public static void main(String[] args) {
        //equals()
        Student a = new Student("John Smith", "BSVB12345", 9.2);
        Student b = new Student("John Smith", "BSVB12345", 9.2);
        Student c = a;
        System.out.printf("Student a equals b: %b \n", a.equals(b));
        System.out.printf("Student a equals c: %b \n\n", a.equals(c));

        //toString()
        System.out.printf(a + "\n\n");

        //Wrapper methods
        String s = "10";
        Integer x = Integer.valueOf(s);
        Integer y = 10;
        System.out.printf("x equals y: %b \n", x.equals(y));
        System.out.printf("Max of %d and %d: %d \n", 5, 10, Integer.max(5,10));
        System.out.printf(String.valueOf(Integer.valueOf(10).compareTo(Integer.valueOf(11))) + "\n\n");

        //String methods
        String test = "abc";
        System.out.println(test.charAt(2));
        System.out.println(test.length());
        System.out.println(test.compareTo("ABC"));
        System.out.println(test.equalsIgnoreCase("ABC"));
        System.out.println(test.toUpperCase().compareTo("ABC"));
        System.out.println(test.concat("def"));

        //StringBuilder methods
        StringBuilder sb = new StringBuilder();
        sb.append("I ");
        sb.append("have ");
        sb.append("a ");
        sb.append("pen ");
        System.out.println(sb);
        System.out.println(sb.delete(0,9));
        System.out.println(sb.append("is "));
        System.out.println(sb.append("mine"));
        System.out.println(sb.replace(7,11, "yours"));
        System.out.println(sb.insert(8, "aaa"));

        //BigInteger methods
        BigInteger bi_1 = new BigInteger("12345678901234567890");
        BigInteger bi_2 = new BigInteger("98765432109876543210");

        System.out.println();
        System.out.println(bi_1.add(bi_2)); // Cộng
        System.out.println(bi_1.multiply(bi_2)); // Nhân
        System.out.println(bi_1.gcd(bi_2)); // Ước chung lớn nhất
        System.out.println(bi_1.isProbablePrime(1)); // Kiểm tra số nguyên tố

        //BigDecimal methods
        BigDecimal bd_1 = new BigDecimal("3.141592653589793");
        BigDecimal bd_2 = new BigDecimal("2.718281828459045");
        BigDecimal bd_3 = BigDecimal.valueOf(9.388337733838383);

        System.out.println();
        System.out.println(bd_1.add(bd_2)); // Cộng
        System.out.println(bd_1.multiply(bd_2)); // Nhân
        System.out.println(bd_1.setScale(3, BigDecimal.ROUND_HALF_UP));//Làm tròn 3 chữ số thập phân
        System.out.println(bd_3.pow(2));

    }
}
