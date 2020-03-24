import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Prog7 {
    public static void main(String[] args) throws InterruptedException {
        final int NUMERO_THREADS = 32;
        List<Thread> threadList = new ArrayList<Thread>(NUMERO_THREADS);
        for (int i = 1; i <= NUMERO_THREADS; ++i) {
            threadList.add(new MyThread());
        }
        Iterator<Thread> l1 = threadList.iterator();

        while (l1.hasNext()) {

            l1.next().start();
        }
        for(Thread l : threadList){
            System.out.println(l.getName()+" esta vivo:"+l.isAlive());
            if(l.isAlive()){
                l.join();
            }

        }
        System.out.println("El programa ha terminado");
    }
}

