package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.CategoriaDTO;
import interfaces.CategoriaDAO;
import utils.MySQLConexion;

public class MySQLCategoriaDAO implements CategoriaDAO {

	@Override
	public int registrar(CategoriaDTO t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eliminar(int codigo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int actualizar(CategoriaDTO t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public CategoriaDTO obtenerObjeto(int codigo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<CategoriaDTO> listado() {
		
		ArrayList<CategoriaDTO> temp = new ArrayList<CategoriaDTO>();
		ResultSet rs = null;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql = "Select * from tb_categoria";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()){
				CategoriaDTO reg = new CategoriaDTO();
				reg.setIdCategoria(rs.getInt(1));
				reg.setNombreCat(rs.getString(2));
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

}
