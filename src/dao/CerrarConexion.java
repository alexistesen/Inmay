package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CerrarConexion {

	//-- creando un metodo que haga los cierres de Conexion) --//
		public static void Cerrar(PreparedStatement pst,Connection con) {
			try {
			      if (pst != null) pst.close();
			      if (con != null) con.close();
			   } catch (SQLException e) {
			      System.out.println("Error al cerrar ");
			   }
		}
	
}
