package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.RolDTO;
import interfaces.RolDAO;
import utils.MySQLConexion;

public class MySQLRolDAO implements RolDAO {

	@Override
	public ArrayList<RolDTO> listado() {
		
		ArrayList<RolDTO> temp = new ArrayList<RolDTO>();
		ResultSet rs = null;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql = "Select * from tb_roles";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()){
				RolDTO reg = new RolDTO();
				reg.setIdRol(rs.getInt(1));
				reg.setDescripcionRol(rs.getString(2));
				temp.add(reg);
			}
			
		} catch (Exception e) {
			System.out.println("Error en: "+e.getMessage());
		}
		finally {
			CerrarConexion.Cerrar(pst, con);
		}
		
		return temp;
	}
	
	//METODOS NO NECESARIOS PARA LA INSTANCIA DE ROL
	@Override
	public int registrar(RolDTO t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eliminar(int codigo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int actualizar(RolDTO t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public RolDTO obtenerObjeto(int codigo) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
