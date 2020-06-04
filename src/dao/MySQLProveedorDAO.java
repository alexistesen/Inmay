package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.ProveedorDTO;
import interfaces.ProveedorDAO;
import utils.MySQLConexion;

public class MySQLProveedorDAO implements ProveedorDAO {

	@Override
	public int registrar(ProveedorDTO t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eliminar(int codigo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int actualizar(ProveedorDTO t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ProveedorDTO obtenerObjeto(int codigo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProveedorDTO> listado() {

		ArrayList<ProveedorDTO> temp = new ArrayList<ProveedorDTO>();
		ResultSet rs = null;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql = "Select * from tb_proveedor";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()){
				ProveedorDTO reg = new ProveedorDTO();
				reg.setIdProveedor(rs.getInt(1));
				reg.setEmpresa(rs.getString(2));
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
