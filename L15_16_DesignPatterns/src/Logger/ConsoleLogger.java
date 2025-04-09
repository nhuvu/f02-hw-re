package Logger;

import java.util.Date;

public class ConsoleLogger implements Logger{
    //Eager init
    private final static ConsoleLogger INSTANCE = new ConsoleLogger();
    public static ConsoleLogger getInstance(){
        return INSTANCE;
    }

    @Override
    public void log(String message) {
        System.out.printf("[%s] %s", new Date(), message);
    }
}
