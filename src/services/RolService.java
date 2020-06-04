package services;

import java.util.ArrayList;

import beans.RolDTO;
import dao.DAOFactory;
import interfaces.RolDAO;

public class RolService {

	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	RolDAO rol = fabrica.getRolDAO();
	
	public ArrayList<RolDTO> listado() {
		return rol.listado();
	}
	
}
