public class Prog1 {
    public static void main(String[] args) {
        long id = Thread.currentThread().getId(); //obtenemos el id del hilo actual
        String nombre = Thread.currentThread().getName();//obtenemos el nombre del hilo actual
        int prioridad = Thread.currentThread().getPriority();//obtenemos la prioridad del hilo actual
        Thread.State estado = Thread.currentThread().getState();//obtenemos el estado del hilo actual
        String NombreDelGrupo = Thread.currentThread().getThreadGroup().getName();//obtenemos el nombre del grupo al que pertebece el hilo actual
        System.out.println("id=" + id + "; nombre=" + nombre + "; prioridad=" + prioridad + "; estado=" + estado
                + "; nombre del grupo de Hilos=" + NombreDelGrupo);
    }
}