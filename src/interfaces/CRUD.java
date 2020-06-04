package interfaces;

import java.util.ArrayList;

public interface CRUD <T>{

	public int registrar(T t);

	public int eliminar(int codigo);
		
	public int actualizar(T t);
		 
	public T obtenerObjeto (int codigo);
		
	public ArrayList<T> listado();
		
	//public ArrayList<Usuario> listadoUsuarioPorTipo(int idtipoUsuario) ;
}
