class Prog6 {
    public static void main(String args[]) {
        NewThread nt1 = new NewThread("Uno");
        NewThread nt2 = new NewThread("Dos");
        NewThread nt3 = new NewThread("Tres");
        nt1.t.start();
        nt2.t.start();
        nt3.t.start();
        System.out.println("Hilo Uno esta vivo: " +nt1.t.isAlive());
        System.out.println("Hilo Dos esta vivo " +nt2.t.isAlive());
        System.out.println("Hilo Tres esta vivo "+nt3.t.isAlive());
        System.out.println("Hilo principal vivo: "+Thread.currentThread().isAlive());
        try {
            System.out.println("Esperando a que los otros hilos terminen");
            nt1.t.join();
            nt2.t.join();
            nt3.t.join();
        } catch (InterruptedException e){
            System.out.println("Hilo principal interrumpido");
        }
        System.out.println("Hilo Uno esta vivo: " +nt1.t.isAlive());
        System.out.println("Hilo Dos esta vivo " +nt2.t.isAlive());
        System.out.println("Hilo Tres esta vivo "+nt3.t.isAlive());
        System.out.println("Saliendo del hilo principal");
        System.out.println("Hilo principal vivo: "+Thread.currentThread().isAlive());
    }
}