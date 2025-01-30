package es.cie.repositories;
import java.util.List;
import es.cie.webordenador.Ordenador;

public interface OrdenadorRepository {
	
	List<Ordenador> buscarTodos();	
	void insertar(Ordenador ordenador);	
	List <Ordenador> buscarTodosOrdenados (String orden);

}
