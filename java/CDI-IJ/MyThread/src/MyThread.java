class MyThread extends Thread {
    public MyThread(String name) {
        super(name);
    }

    @Override
    public void run() {
        System.out.println("Ejecutando hilo: " + Thread.currentThread().getName());
    }

    public static void main(String[] args) throws InterruptedException {
        MyThread myThread = new MyThread("Mi Hilo");
        myThread.start();
    }
}