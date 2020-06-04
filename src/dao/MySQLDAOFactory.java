package dao;

import interfaces.CategoriaDAO;
import interfaces.LocalidadDAO;
import interfaces.ProductoDAO;
import interfaces.ProveedorDAO;
import interfaces.RolDAO;
import interfaces.UsuarioDAO;

public class MySQLDAOFactory extends DAOFactory {

	@Override
	public UsuarioDAO getUsuarioDAO() {
		// TODO Auto-generated method stub
		return new MySQLUsuarioDAO();
	}

	@Override
	public LocalidadDAO getLocalidadDAO() {
		// TODO Auto-generated method stub
		return new MySQLLocalidadDAO();
	}

	@Override
	public RolDAO getRolDAO() {
		// TODO Auto-generated method stub
		return new MySQLRolDAO();
	}

	@Override
	public ProductoDAO getProductoDAO() {
		// TODO Auto-generated method stub
		return new MySQLProductoDAO();
	}

	@Override
	public CategoriaDAO getCategoriaDAO() {
		// TODO Auto-generated method stub
		return new MySQLCategoriaDAO();
	}

	@Override
	public ProveedorDAO getProveedorDAO() {
		// TODO Auto-generated method stub
		return new MySQLProveedorDAO();
	}

}
