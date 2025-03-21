public class InsufficientFundsException extends Exception{
    private double amount;

    public double getAmount() {
        return amount;
    }

    public InsufficientFundsException(String message) {
        super(message);
    }

    public InsufficientFundsException(String message, double amount) {
        super(message);
        this.amount = amount;
    }
}
