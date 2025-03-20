public class NegativeNumberException extends RuntimeException{
    int number;

    public int getNumber() {
        return number;
    }

    public NegativeNumberException(String message, int number) {
        super(message);
        this.number = number;
    }

    public NegativeNumberException(String message) {
        super(message);
    }
}
