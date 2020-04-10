public class InterruptExample implements Runnable {
    public void run() {
        try {
            Thread.sleep(Long.MAX_VALUE);
        } catch (InterruptedException e) {
            System.out.println("[" + Thread.currentThread().getName() + "] Interrumpido por una excepcion!");
        }
        while(!Thread.interrupted()) {
            // do nothing here

        }
        System.out.println("[" + Thread.currentThread().getName() + "] Interrumpido por segunda vez.");
    }

    public static void main(String[] args) throws InterruptedException {
        Thread myThread = new Thread(new InterruptExample(), "Mi Hilo");
        myThread.start();
        System.out.println("[" + Thread.currentThread().getName() + "] Durmiendo Hilo principal por 5 segundos...");
        Thread.sleep(5000);
        System.out.println("[" + Thread.currentThread().getName() + "] Interrumpiendo Mi Hilo");
        myThread.interrupt();
        System.out.println("[" + Thread.currentThread().getName() + "] Dormir hilo principal durante 5s ...");
        Thread.sleep(5000);
        System.out.println("[" + Thread.currentThread().getName() + "] Interrumpiendo Mi Hilo");
        myThread.interrupt();
    }
}

