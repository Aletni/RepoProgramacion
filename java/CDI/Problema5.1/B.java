class B implements Runnable {

    A a;
    int nh;

    B(int nh, A a) {
        this.nh = nh;
        this.a = a;
    }

    public void run() {
        a.EnterAndWait(nh);
    }
}
