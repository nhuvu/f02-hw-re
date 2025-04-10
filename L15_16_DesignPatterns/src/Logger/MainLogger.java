package Logger;

import java.util.InputMismatchException;
import java.util.Scanner;

public class MainLogger {
    public static void main(String[] args) {
        //1. Singleton Pattern
        Logger logger = FileLogger.getInstance();
        try{
            System.out.println(1/0);
        }catch (Exception e){
            logger.log(e.getMessage());
        }


        //2. Simple Factory, Proxy, Decorator, Adapter Pattern Logger
        Scanner scanner = new Scanner(System.in);
        while (true){
            try{
                int a = scanner.nextInt();
                int b = scanner.nextInt();
                System.out.println(a/b);
            }catch (InputMismatchException e){
                log("Invalid input");
                scanner.nextLine();
            }catch (ArithmeticException e){
                log("Can not divide by zero");
            }catch (Exception e){
                log("Unknown error");
            }
        }
    }

    static void log(String message){
        FactoryLogger.getLogger("File").log(message);
        FactoryLogger.getLogger("Console").log(message);
    }
}
