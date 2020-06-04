package services;

import java.util.ArrayList;

import beans.ProductoDTO;
import dao.DAOFactory;
import interfaces.ProductoDAO;

public class ProductoService {

	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	
	ProductoDAO producto = fabrica.getProductoDAO();
	
	public int registrar(ProductoDTO t) {
		return producto.registrar(t);
	}
	
	public int eliminar(int codigo) {
		return producto.eliminar(codigo);
	}
	
	public int actualizar(ProductoDTO t) {
		return producto.actualizar(t);
	}
	
	public ProductoDTO obtenerObjeto(int codigo) {
		return producto.obtenerObjeto(codigo);
	}
	
	public ArrayList<ProductoDTO> listado() {
		return producto.listado();
	}
	
	public ArrayList<ProductoDTO> listar(int cat){
		return producto.listar(cat);
	}
	
}
