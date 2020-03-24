public class Prog3 implements Runnable {
    static int prioridad;
    public void run() {
        System.out.println("Ejecutando hilo " + Thread.currentThread().getName()+" Prioridad: "+prioridad);
    }

    public static void main(String[] args) throws InterruptedException {
        Thread myThread = new Thread(new Prog3(), "myRunnable");
        myThread.setPriority(4);
        prioridad=myThread.getPriority();
        myThread.start();
    }
}