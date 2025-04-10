package Logger;

import java.util.Date;

public class DatabaseAdapter implements Logger{
    private DatabaseLogger databaseLogger;

    public DatabaseAdapter(DatabaseLogger databaseLogger){
        this.databaseLogger = databaseLogger;
    }

    @Override
    public void log(String message) {
        databaseLogger.logError(new Date(), message);
    }
}
