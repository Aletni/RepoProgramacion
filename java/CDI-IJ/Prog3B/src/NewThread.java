public class NewThread implements Runnable {

    Thread t;

    public NewThread() {
        t = new Thread(this, "Demo Hilo");
        System.out.println("Hilo hijo " + t);
    }

    @Override
    public void run() {
        try {
            for (int i = 5; i > 0; i--) {

                System.out.println("Hilo hijo " + i);
                Thread.sleep(500);
            }
        } catch (InterruptedException e) {
            System.out.println("Hijo Interrumpido");

        }
        System.out.println("Saliendo del hilo Hijo");

    }
}