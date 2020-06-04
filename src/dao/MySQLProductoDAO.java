package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.ProductoDTO;
import interfaces.ProductoDAO;
import utils.MySQLConexion;

public class MySQLProductoDAO implements ProductoDAO {

	@Override
	public int registrar(ProductoDTO t) {
		
		int rs=0;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			
			con = MySQLConexion.getConexion();
			String sql = "insert into tb_producto values (default,?,?,?,?,?) ";
			pst = con.prepareStatement(sql);
			
			pst.setString(1, t.getDescProducto());
			pst.setInt(2,t.getIdCategoria());
			pst.setInt(3, t.getStock());
			pst.setDouble(4,t.getPrecioU());
			pst.setInt(5, t.getIdProveedor());
			rs = pst.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("Error en la sentencia " + e.getMessage());
		} finally {
			CerrarConexiones(pst,con);
		}
		
		return rs;
	}

	@Override
	public int eliminar(int codigo) {
		
		int rs=0;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql = "delete from tb_producto where idProducto="+codigo+"";
			pst = con.prepareStatement(sql);
			rs = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error en la sentencia " + e.getMessage());
		}
		finally {
			CerrarConexiones(pst,con);
		}
		
		return rs;
	}

	@Override
	public int actualizar(ProductoDTO t) {

		int rs=0;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql= "update tb_producto set descProducto=?,idCategoria=?,stock=?,precioU=?,"
					+ "idProveedor=? where idProducto=?";
			pst = con.prepareStatement(sql);
			
			pst.setString(1, t.getDescProducto());
			pst.setInt(2, t.getIdCategoria());
			pst.setInt(3,t.getStock());
			pst.setDouble(4, t.getPrecioU());
			pst.setInt(5, t.getIdProveedor());
			pst.setInt(6, t.getIdProducto());
			
			rs = pst.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("Error en la sentencia " + e.getMessage());
		} finally {
			CerrarConexiones(pst,con);
		}
		
		return rs;
		
	}

	@Override
	public ProductoDTO obtenerObjeto(int codigo) {
		
		ProductoDTO reg = null;
		ResultSet rs=null;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql = "select * from tb_producto where idProducto="+codigo+"";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()) {
			reg = new ProductoDTO();
			reg.setIdProducto(rs.getInt(1));
			reg.setDescProducto(rs.getString(2));
			reg.setIdCategoria(rs.getInt(3));
			reg.setStock(rs.getInt(4));
			reg.setPrecioU(rs.getDouble(5));
			reg.setIdProveedor(rs.getInt(6));
			}
			
		} catch (Exception e) {
			System.out.println("Error en la sentencia " + e.getMessage());
		}
		finally {
			CerrarConexiones(pst,con);
		}
		
		return reg;

	}

	@Override
	public ArrayList<ProductoDTO> listado() {

		ArrayList<ProductoDTO> temp = new ArrayList<ProductoDTO>();
		ResultSet rs = null; //para almacenar el resultado del listado en sql
		Connection con = null; //para ejecutar la conexion
		PreparedStatement pst = null; // Clase para compilar la sentencia SQL 
		ProductoDTO u=null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql = "CALL LISTADO_PRODUCTOS";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				u = new ProductoDTO();
				u.setIdProducto(rs.getInt(1));
				u.setDescProducto(rs.getString(2));
				u.setStCategoria(rs.getString(3));
				u.setStock(rs.getInt(4));
				u.setPrecioU(rs.getDouble(5));
				u.setStProveedor(rs.getString(6));
				temp.add(u);
			}
		
		} catch (SQLException e) {
			System.out.println("Error en la sentencia " + e.getMessage());
		} finally {
			CerrarConexiones(pst,con);
		}
			return temp;
		
	}
	
	public ArrayList<ProductoDTO> listar(int cat) {
		ArrayList<ProductoDTO> temp = new ArrayList<ProductoDTO>();
		ResultSet rs = null; 
		Connection con = null;
		PreparedStatement pst = null;  
		ProductoDTO u=null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql = "CALL LISTAR_PRODUCTO_CAT(?)";
			pst = con.prepareStatement(sql);
			pst.setInt(1,cat);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				u = new ProductoDTO();
				u.setIdProducto(rs.getInt(1));
				u.setDescProducto(rs.getString(2));				
				u.setStock(rs.getInt(3));
				u.setPrecioU(rs.getDouble(4));
				u.setStCategoria(rs.getString(5));
				u.setStProveedor(rs.getString(6));
				temp.add(u);
			}
		
		} catch (SQLException e) {
			System.out.println("Error en la sentencia " + e.getMessage());
		} finally {
			CerrarConexiones(pst,con);
		}
			return temp;
	}
	
	//-- creando un metodo que haga los cierres de Conexion) --//
	public void CerrarConexiones(PreparedStatement pst,Connection con) {
		try {
		      if (pst != null) pst.close();
		      if (con != null) con.close();
		   } catch (SQLException e) {
		      System.out.println("Error al cerrar ");
		   }
	}

}
