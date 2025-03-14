/**
 * Hãy viết một chương trình chính để thử nghiệm lớp Phân Số của bạn
 * bằng cách tạo một số phân số và thực hiện các phép tính với chúng.
 * */
public class Hw1002 {
    public static void main(String[] args) {
        Fraction f1 = new Fraction(10,15);
        System.out.println(f1.simplifyFraction().print());
        Fraction f2 = new Fraction(7,9);
        System.out.println(f2.simplifyFraction().print());

        //Cộng
        Fraction sumFraction = f1.sumFraction(f2);
        System.out.println(sumFraction.print());

        //Trừ
        Fraction minusFraction = f1.minusFraction(f2);
        System.out.println(minusFraction.print());

        //Nhân
        Fraction multipledFraction = f1.multiplyFraction(f2);
        System.out.println(multipledFraction.print());

        //Chia
        Fraction dividedFraction = f1.divideFraction(f2);
        System.out.println(dividedFraction.print());
    }
}
