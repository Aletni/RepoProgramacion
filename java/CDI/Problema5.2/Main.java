class Main {
    public static void main(String[] args) {
        int MaxCount = 20;
        int Nthreads = 6;
        A objetoA = new A(MaxCount);
        int nh = Nthreads;
        B bs[] = new B[nh];
        // Thread ts[] = new Thread[nh];
        long startTime = System.nanoTime();
        for (int i = 0; i < nh; i++) {
            bs[i] = new B(i, objetoA);
            // ts[i] = new Thread(bs[i]);
            bs[i].start();
        }
        while (!objetoA.fin())
            ;
        try {
            for (int i = 0; i < nh; i++) {
                bs[i].join();
            }
        } catch (InterruptedException e) {
            System.out.println(e.getMessage());
        }
        long estimatedTime = System.nanoTime() - startTime;
        System.out.println((float) estimatedTime / (1.e6));
    }

}