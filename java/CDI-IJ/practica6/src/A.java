public class A {
    private int contador;

    public A() {
        this.contador = 1000;
    }

    public synchronized void EnterAndWait() {
        this.contador--;
        System.out.println("Informacion hilo actual: "+Thread.currentThread().getName() + " " + this.contador);
    }

    public boolean finalizado() {
        return this.contador == 0;
    }
}
