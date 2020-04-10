class B extends Thread {
    A a;
    int thId;

    B(int id, A a) {
        this.thId = id;
        this.a = a;
    }public void run(){
        synchronized(a){
            while(!a.fin()) {
                System.out.println("thId="+thId+" name="+Thread.currentThread().getName()+" state="+Thread.currentThread().getState()+" lastTh="+ a.getLastTh() );
                while (a.getLastTh()==thId) {
                    try{System.out.println("sent waiting=" + this.thId);a.wait();
                }
                catch(InterruptedException e){}
            }
            if (!a.fin()){
                a.EnterAndWait(thId);
                a.setNc(a.getNc()-1);
                a.setLastTh(this.thId);
                a.notifyAll();
                System.out.println("---------------");
            }
        }

        }
    }
}
