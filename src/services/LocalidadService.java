package services;

import java.util.ArrayList;

import beans.LocalidadDTO;
import dao.DAOFactory;
import interfaces.LocalidadDAO;

public class LocalidadService {

	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	
	LocalidadDAO Localidad = fabrica.getLocalidadDAO();
	
	public ArrayList<LocalidadDTO> listado(String tbInf,String valor,String tbSup) {
		return Localidad.listado(tbInf,valor,tbSup);
	}
	
	
	
}
