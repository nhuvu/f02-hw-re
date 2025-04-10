package Logger;

public class FactoryLogger {
    public static Logger getLogger (String loggerType){
        Logger logger;
        switch (loggerType){
            case "File":
                logger = FileLogger.getInstance();
                break;
            case "Console":
                logger = ConsoleLogger.getInstance();
                break;
            case "Database":
                logger = new DatabaseAdapter(DatabaseLogger.getInstance());
                break;
            default:
                throw new IllegalArgumentException(String.format("Unknown logger type: %s", loggerType));
        }
        return new ProxyLogger(new DecoratorLogger(logger));
    }
}
