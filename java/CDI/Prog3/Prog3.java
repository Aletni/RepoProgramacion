public class Prog3 implements Runnable {
    public void run() {
        System.out.println("Executing thread " + Thread.currentThread().getName());
    }

    public static void main(String[] args) throws InterruptedException {
        Thread myThread = new Thread(new Prog3(), "myRunnable");
        myThread.start();
    }
}