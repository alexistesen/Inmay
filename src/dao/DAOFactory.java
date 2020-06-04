package dao;

import interfaces.CategoriaDAO;
import interfaces.LocalidadDAO;
import interfaces.ProductoDAO;
import interfaces.ProveedorDAO;
import interfaces.RolDAO;
import interfaces.UsuarioDAO;

public abstract class DAOFactory {

	public static final int MYSQL = 1;
	
	public abstract UsuarioDAO getUsuarioDAO();
	public abstract LocalidadDAO getLocalidadDAO();
	public abstract RolDAO getRolDAO();
	public abstract ProductoDAO getProductoDAO();
	public abstract CategoriaDAO getCategoriaDAO();
	public abstract ProveedorDAO getProveedorDAO();
	
	
	public static DAOFactory getDAOFactory(int q) {
		
		switch(q) {
		case MYSQL: return new MySQLDAOFactory();
		default: return null;
		}
		
	}
	
	
}
