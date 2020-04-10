class A {

    synchronized public void EnterAndWait(int nh) {
        try {
            System.out.println("Start Thread " + nh);
            Thread.sleep((int) (Math.random() * 100));
            System.out.println("Finish Thread " + nh);
        } catch (InterruptedException e) {
            System.out.println(e.getMessage());
        }
    }


}
