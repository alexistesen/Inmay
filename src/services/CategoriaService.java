package services;

import java.util.ArrayList;

import beans.CategoriaDTO;
import dao.DAOFactory;
import interfaces.CategoriaDAO;

public class CategoriaService {

	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	CategoriaDAO cat = fabrica.getCategoriaDAO();
	
	public ArrayList<CategoriaDTO> listado() {
		return cat.listado();
	}
	
}
