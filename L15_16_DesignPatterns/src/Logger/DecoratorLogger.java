package Logger;

public class DecoratorLogger implements Logger{

    private Logger logger;
    public DecoratorLogger(Logger logger){
        this.logger = logger;
    }

    @Override
    public void log(String message) {
        message = message.trim();
        message = message.toUpperCase();
        logger.log(message);
    }
}
