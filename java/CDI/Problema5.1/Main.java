public class Main {
    public static void main(String[] args) {
        A objetoA = new A();
        int nh = 5;
        B bs[] = new B[nh];
        Thread ts[] = new Thread[nh];
        for (int i = 0; i < nh; i++) {
            bs[i] = new B(i, objetoA);
            ts[i] = new Thread(bs[i]);
            ts[i].start();
        }
        try {
            for (int i = 0; i < nh; i++) {
                ts[i].join();
            }
        } catch (InterruptedException e) {
            System.out.println(e.getMessage());
        }
        System.out.println("Finished.");
    }
}
