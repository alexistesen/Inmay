package interfaces;

import java.util.ArrayList;
import beans.LocalidadDTO;

public interface LocalidadDAO {

	public ArrayList<LocalidadDTO> listado(String tbInf,String valor,String tbSup);
	
}
