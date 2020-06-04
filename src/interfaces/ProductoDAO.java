package interfaces;

import java.util.ArrayList;

import beans.ProductoDTO;

public interface ProductoDAO extends CRUD<ProductoDTO> {

	public ArrayList<ProductoDTO> listar(int cat);
	
}
