

class Prog3B {
    public static void main(String args[]) {

        NewThread nh=new NewThread();
        nh.t.start();
        try {
            for (int i = 5; i > 0; i--) {
                System.out.println("Hilo principal: " + i);
                Thread.sleep(1000);
            }
        } catch (InterruptedException e) {
            System.out.println("Hilo principal interrumnpido");
        }
        System.out.println("Saliendo del hilo principal");
    }

}