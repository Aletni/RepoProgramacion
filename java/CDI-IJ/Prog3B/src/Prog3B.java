

class Prog3B {
    public static void main(String args[]) {

        NewThread nt = new NewThread();
        nt.t.start();
        try {
            for (int i = 5; i >= 0; i--) {
                System.out.println("Hilo Principal:" + i);

                Thread.sleep(1000);
            }
        } catch (InterruptedException e) {
            System.out.println("Hilo principal interrumpido");
        }
        System.out.println("Saliendo del hilo principal");
    }
}
