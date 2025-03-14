public class Fraction {
    private int numerator;
    private int denominator;

    public int getNumerator() {
        return numerator;
    }

    public void setNumerator(int numerator) {
        this.numerator = numerator;
    }

    public int getDenominator() {
        return denominator;
    }

    public void setDenominator(int denominator) {
        this.denominator = denominator;
    }

    //Một constructor để khởi tạo một phân số với tử số và mẫu số cho trước.
    public Fraction(int numerator, int denominator) {
        this.numerator = numerator;
        this.denominator = denominator;
    }

    //Một phương thức để rút gọn phân số
    Fraction simplifyFraction (){
        int greatestCommon = greatestCommon(this.numerator, this.denominator);
        return new Fraction(this.numerator/greatestCommon, this.denominator/greatestCommon);
    }

    //Tim ước chung lớn nhất
    static int greatestCommon (int a, int b){
        if(a > b){
            for(int i = b; i >= 1; i--){
                if(a % i == 0 && b % i == 0){
                    return i;
                }
            }
        }else if (a < b){
            for(int i = a; i >= 1; i--){
                if(a % i == 0 && b % i == 0){
                    return i;
                }
            }
        }
        return a;
    }

    //Một phương thức để trả về giá trị phân số dưới dạng chuỗi (ví dụ: "1/2" hoặc "3/4").
    String print(){
        return this.numerator + "/" + this.denominator;
    }

    //Một phương thức để cộng hai phân số và trả về một phân số mới.
    Fraction sumFraction (Fraction f){
        int sumNum = this.numerator * f.denominator + this.denominator * f.numerator;
        int sumDen = this.denominator * f.denominator;
        int greatestCommon = greatestCommon(sumNum, sumDen);
        return new Fraction(sumNum/greatestCommon, sumDen/greatestCommon);
    }

    //Một phương thức để trừ hai phân số và trả về một phân số mới.
    Fraction minusFraction (Fraction f){
        int sumNum = this.numerator * f.denominator - this.denominator * f.numerator;
        int sumDen = this.denominator * f.denominator;
        int greatestCommon = greatestCommon(sumNum, sumDen);
        return new Fraction(sumNum/greatestCommon, sumDen/greatestCommon);
    }

    //Một phương thức để nhân hai phân số và trả về một phân số mới.
    Fraction multiplyFraction (Fraction f){
        int sumNum = this.numerator * f.numerator;
        int sumDen = this.denominator * f.denominator;
        int greatestCommon = greatestCommon(sumNum, sumDen);
        return new Fraction(sumNum/greatestCommon, sumDen/greatestCommon);
    }

    //Một phương thức để chia hai phân số và trả về một phân số mới.
    Fraction divideFraction (Fraction f){
        int sumNum = this.numerator * f.denominator;
        int sumDen = this.denominator * f.numerator;
        int greatestCommon = greatestCommon(sumNum, sumDen);
        return new Fraction(sumNum/greatestCommon, sumDen/greatestCommon);
    }
}
