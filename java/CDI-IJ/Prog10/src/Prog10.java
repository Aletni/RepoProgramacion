import java.io.File;
import java.util.concurrent.TimeUnit;

public class Prog10 {
    //searches for a file in subfolders; then interrupts the thread.
    public static void main(String[] args) {
        // Creates the Runnable object and the Thread to run it
        FileSearch searcher = new FileSearch("/home/jules/", "application.ini");
        Thread thread = new Thread(searcher);
        thread.start();
        try {
            TimeUnit.SECONDS.sleep(10);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        thread.interrupt();
    }
}


