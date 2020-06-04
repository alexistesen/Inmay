package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.LocalidadDTO;
import interfaces.LocalidadDAO;
import utils.MySQLConexion;

public class MySQLLocalidadDAO implements LocalidadDAO {

	@Override
	public ArrayList<LocalidadDTO> listado(String tbInf,String valor,String tbSup) {
		
		ArrayList<LocalidadDTO> temp = new ArrayList<LocalidadDTO>();
		ResultSet rs = null;
		Connection con = null;
		PreparedStatement pst = null;
		LocalidadDTO l = null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql = " Select * From tb_"+tbInf+" where id"+tbSup+"="+valor+"";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				l = new LocalidadDTO();
				l.setIdLocalidad(rs.getInt(1));
				l.setDescLocalidad(rs.getString(2));
				temp.add(l);
			}
			
		} catch (Exception e) {
			System.out.println("Error en la sentencia " + e.getMessage());
		} finally {
			CerrarConexion.Cerrar(pst,con);
		}
		
		return temp;
	}

}
