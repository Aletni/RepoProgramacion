
class Prog3C {
    public static void main(String args[]) {
        NewThread nt = new NewThread();
        nt.start();

        try {
            for (int i = 5; i > 0; i--) {
                System.out.println("Hilo Principal: " + i);
                Thread.sleep(1000);
                //Thread.currentThread().interrupt();
            }

        } catch (InterruptedException e) {
            System.out.println("Hilo Principal: interrupted");
        }
        System.out.println("Hilo Principal: exiting.");
    }
}