package Logger;

import java.util.Date;

public class DatabaseLogger{
    private final static DatabaseLogger INSTANCE = new DatabaseLogger();

    public static DatabaseLogger getInstance(){
        return INSTANCE;
    }

    public void logError(Date date, String message){
        System.out.printf("[%s] %s", date, message);
    }
}
