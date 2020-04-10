public class MyRunnable implements Runnable {
    public void run() {

        //Muestra informacion del hilo actual
        System.out.println("Ejecutando hilo " + Thread.currentThread().getName());
    }

    public static void main(String[] args) throws InterruptedException {
        Thread myThread = new Thread(new MyRunnable(), "myRunnable");
        myThread.start();
    }
}