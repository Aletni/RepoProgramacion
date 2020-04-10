public class B extends Thread {
    private A objetoA = null;
    private Thread hilo = null;

    public B(A object) {
        this.objetoA = object;
    }

    public void setThread(Thread pointer) {
        this.hilo = pointer;
    }

    @Override
    public void run() {
        try {
            while (true) {
                synchronized (objetoA) {
                    ((B) this.hilo).esperarHilo();
                    if (!objetoA.finalizado()) objetoA.EnterAndWait();
                    ((B) this.hilo).notificarHilo();
                }
            }
        } catch (InterruptedException ie) {
        }
    }

    public void notificarHilo() {
        synchronized (this.objetoA) {
            this.objetoA.notify();
        }
    }

    public void esperarHilo() throws InterruptedException {
        synchronized (this.objetoA) {
            this.objetoA.wait();
        }
    }
}

