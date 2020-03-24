public class Prog1 {
    public static void main(String[] args) {
        long id = Thread.currentThread().getId();
        String nombre = Thread.currentThread().getName();
        int prioridad = Thread.currentThread().getPriority();
        Thread.State estado = Thread.currentThread().getState();
        String NombreDelGrupo = Thread.currentThread().getThreadGroup().getName();
        System.out.println("id=" + id + "; nombre=" + nombre + "; prioridad=" + prioridad + "; estado=" + estado
                + "; nombre del grupo de Hilos=" + NombreDelGrupo);
    }
}