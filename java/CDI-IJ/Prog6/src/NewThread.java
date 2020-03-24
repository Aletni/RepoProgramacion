public class NewThread implements Runnable {
    String nombre;
    Thread t;
    public NewThread(String nombreHilo) {
        nombre=nombreHilo;
        t=new Thread(this,nombre);
        System.out.println("Nuevo hilo "+t);
    }

    @Override
    public void run() {
        try {
            for (int i = 5; i >0 ; i--) {
                System.out.println("Hilo hijo " + i);
                Thread.sleep(500);
            }
        }catch (InterruptedException e){
            System.out.println("Hilo hijo interrumpido");
        }
        System.out.println("Saliendo del hilo hijo");

    }
}
