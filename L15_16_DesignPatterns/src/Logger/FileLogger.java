package Logger;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Date;

public class FileLogger implements Logger{
    private PrintWriter writer;

    //Lazy init
    private static FileLogger INSTANCE;
    public static FileLogger getInstance(){
        if(INSTANCE == null){
            INSTANCE = new FileLogger();
        }
        return INSTANCE;
    }

    private FileLogger() {
        try{
            writer = new PrintWriter(new File("resources/L15/log.txt"));
        }catch (FileNotFoundException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void log(String message) {
        writer.printf("[%s] %s \n", new Date(), message);
        writer.flush();
    }
}
