package services;

import java.util.ArrayList;

import beans.ProveedorDTO;
import dao.DAOFactory;
import interfaces.ProveedorDAO;

public class ProveedorService {

	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	ProveedorDAO pro = fabrica.getProveedorDAO();
	
	public ArrayList<ProveedorDTO> listado(){
		return pro.listado();
	}
	
}
