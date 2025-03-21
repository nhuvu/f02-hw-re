public class BankAccount {
    private double amount;

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public BankAccount(double amount) {
        this.amount = amount;
    }

    public void fundout (double withdrawAmount) throws InsufficientFundsException{
        if(withdrawAmount > this.amount){
            throw new InsufficientFundsException("Số dư không khả dụng");
        }else {
            this.amount -= withdrawAmount;
            System.out.println("Số tiền đã rút: " + withdrawAmount);
            System.out.println("Số dư tài khoản hiện tại: " + this.amount);
        }
    }
}
