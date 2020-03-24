class NewThread extends Thread {
    NewThread() {
        super("Demo Thread");
        System.out.println("Hilo Hijo: " + this);
    }

    public void run() {
        try {
            for (int i = 5; i > 0; i--) {
                System.out.println("Hilo Hijo:  " + i);
                Thread.sleep(500);
            }
        } catch (InterruptedException e) {
            System.out.println("Hijo  interrumpido");
        }
        System.out.println("Saliendo del  hilo hijo");
    }
}

class Prog3C {
    public static void main(String args[]) {
        NewThread nt = new NewThread();
        nt.start();
        try {
            for (int i = 5; i > 0; i--) {
                System.out.println("Hilo Principal: " + i);
                Thread.sleep(200);
            }
        } catch (InterruptedException e) {
            System.out.println("Hilo Principal: interrupted");
        }
        System.out.println("Hilo Principal: exiting.");
    }
}