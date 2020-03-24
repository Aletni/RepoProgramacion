public class MyThread extends Thread{
    @Override
    public void run() {
        System.out.println ("Mi nombre es: " + this.getName() );
        System.out.println("Finalizado el proceso "+ this.getName());
    }
}