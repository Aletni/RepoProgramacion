class Prog8 {
    public static void main(String[] args) throws InterruptedException {
        // Thread priority infomation
        System.out.printf("Minimum Priority: %s\n", Thread.MIN_PRIORITY);
        System.out.printf("Normal Priority: %s\n", Thread.NORM_PRIORITY);
        System.out.printf("Maximun Priority: %s\n", Thread.MAX_PRIORITY);
        Thread threads[];
        Thread.State status[];
        // 10 threads do work, 5 with the max priority
        // 5 with the min priority
        threads = new Thread[10];
        status = new Thread.State[10];
        for (int i = 0; i < 10; i++) {
            threads[i] = new Thread(new Calculator());
            if ((i % 2) == 0) {
                threads[i].setPriority(Thread.MAX_PRIORITY);
            } else {
                threads[i].setPriority(Thread.MIN_PRIORITY);
            }
            threads[i].setName("My Thread " + i);
        }
        for (int i = 0; i < 10; i++) {
            System.out.println("Main : Status of Thread " + i + " : " + threads[i].getState());
            status[i] = threads[i].getState();
        }
        for (int i = 0; i < 10; i++) {
            threads[i].start();
        }
        // Wait for the finalization of the threads. We save the status of
        // the threads and only write the status if it changes.
        boolean finish = false;
        while (!finish) {
            for (int i = 0; i < 10; i++) {
                if (threads[i].getState() != status[i]) {
                    writeThreadInfo(threads[i], status[i]);
                    status[i] = threads[i].getState();
                }
            }
            finish = true;
            for (int i = 0; i < 10; i++) {
                finish = finish && (threads[i].getState() == Thread.State.TERMINATED);
            }
        }
    }

    private static void writeThreadInfo(Thread thread, Thread.State state) {
        System.out.printf("Main : Id %d - %s\n", thread.getId(), thread.getName());
        System.out.printf("Main : Priority: %d\n", thread.getPriority());
        System.out.printf("Main : Old State: %s\n", state);
        System.out.printf("Main : New State: %s\n", thread.getState());
        System.out.printf("Main : ************************************\n");
    }
}
