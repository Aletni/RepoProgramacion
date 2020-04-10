
class Prog5 {
    public static void main(String args[]) {
        NewThread nt1 = new NewThread("One");
        NewThread nt2 = new NewThread("Two");
        NewThread nt3 = new NewThread("Three");
        nt1.t.start();
        nt2.t.start();
        nt3.t.start();
        try {
            // wait for other threads to end
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            System.out.println("Hilo principal interrumpido");
        }
        System.out.println("Saliendo del hilo principal");
    }
}