package Builder;

public class MainBuilder {
    public static void main(String[] args) {
        //3. Builder Pattern
        User john = User.builder()
                .id("MSSV123")
                .name("John Smith")
                .phone("0987654321")
                .address("123 Baker Street")
                .build();
    }
}
