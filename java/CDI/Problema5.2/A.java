class A {
    volatile private int Ncurrent;
    private int thLast = 0;

    public A(int nc) {
        this.Ncurrent = nc;
    }

    synchronized public void EnterAndWait(int nh) {
        try {
            System.out.println("Start Thread " + nh + " Ncurrent=" + Ncurrent);
            Thread.sleep((int) (Math.random() * 100));
        } catch (InterruptedException e) {
            System.out.println(e.getMessage());
        }
    }

    public boolean fin() {
        return Ncurrent <= 0;
    }

    public int getNc() {
        return Ncurrent;
    }

    public void setNc(int nc) {
        this.Ncurrent = nc;
    }

    public int getLastTh() {
        return thLast;
    }

    public void setLastTh(int thId) {
        this.thLast = thId;
    }
}