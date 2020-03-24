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
