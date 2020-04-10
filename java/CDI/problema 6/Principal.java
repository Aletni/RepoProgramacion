public class Principal {
    public static void main(String[] args) {
        A objetoA1 = new A();

        B objetoB1 = new B(objetoA1);
        B objetoB2 = new B(objetoA1);

        objetoB1.setThread(objetoB2);
        objetoB2.setThread(objetoB1);

        objetoB1.start();
        objetoB2.start();
        while (objetoB1.getState() != Thread.State.WAITING &&
                objetoB2.getState() != Thread.State.WAITING) ;
        synchronized (objetoA1) {
            objetoA1.notify();
        }

        try {
            Thread.sleep(10000);
        } catch (InterruptedException e) {
        }
        objetoB1.interrupt();
        objetoB2.interrupt();
        System.out.println("Done");
    }
}
docker linux estilo mac