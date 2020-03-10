

public class Test implements Runnable {
    public void run() {
        System.out.println("Executing thread " + Thread.currentThread().getName());
    
    }

    public static void main(String[] args) throws InterruptedException {
        Thread test = new Thread(new Test(), "myRunnable");
        test.start();
    }
}