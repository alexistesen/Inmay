package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UsuarioDTO;
import interfaces.UsuarioDAO;
import utils.MySQLConexion;

public class MySQLUsuarioDAO implements UsuarioDAO {

	@Override
	public int registrar(UsuarioDTO t) {
		
		int rs=0;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			
			con = MySQLConexion.getConexion();
			String sql = "insert into tb_usuarios values (default,?,?,?,sha1(?),curdate(),?,1,?,?,?,?,?,1,true) ";
			pst = con.prepareStatement(sql);
			
			pst.setString(1, t.getNombre());
			pst.setString(2,t.getApellido());
			pst.setString(3, t.getEmail());
			pst.setString(4, t.getClave());
			pst.setString(5, t.getDireccion());
			pst.setInt(6, t.getIdCiudad());
			pst.setInt(7, t.getIdProvincia());
			pst.setInt(8, t.getIdDistrito());
			pst.setString(9, t.getTelefono());
			pst.setInt(10, t.getRol());
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
			String sql = "update tb_usuarios set idEstado_U=2 where idUsuario="+codigo+"";
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
	public int actualizar(UsuarioDTO t) {
		
		int rs=0;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql= "update tb_usuarios set nombreU=?,apellidoU=?,emailU=?,claveU=?,"
					+ "direccionU=?,idCiudad=?,idProvincia=?,idDistrito=?,telefonoU=?,"
					+ "idRol=? where idUsuario=?";
			pst = con.prepareStatement(sql);
			pst.setString(1, t.getNombre());
			pst.setString(2, t.getApellido());
			pst.setString(3, t.getEmail());
			pst.setString(4, t.getClave());
			pst.setString(5, t.getDireccion());
			pst.setInt(6, t.getIdCiudad());
			pst.setInt(7, t.getIdProvincia());
			pst.setInt(8, t.getIdDistrito());
			pst.setString(9,t.getTelefono());
			pst.setInt(10, t.getRol());
			pst.setInt(11, t.getId());
			
			rs = pst.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("Error en la sentencia " + e.getMessage());
		} finally {
			CerrarConexiones(pst,con);
		}
		
		return rs;
		
	}

	@Override
	public UsuarioDTO obtenerObjeto(int codigo) {
		
		UsuarioDTO reg = null;
		ResultSet rs=null;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql = "select * from tb_usuarios where idUsuario="+codigo+"";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()) {
			reg = new UsuarioDTO();
			reg.setId(rs.getInt(1));
			reg.setNombre(rs.getString(2));
			reg.setApellido(rs.getString(3));
			reg.setEmail(rs.getString(4));
			reg.setClave(rs.getString(5));
			reg.setDireccion(rs.getString(7));
			reg.setIdCiudad(rs.getInt(9));
			reg.setIdProvincia(rs.getInt(10));
			reg.setIdDistrito(rs.getInt(11));
			reg.setTelefono(rs.getString(12));
			reg.setRol(rs.getInt(13));
			reg.setIdEstado_U(rs.getInt(14));
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
	public ArrayList<UsuarioDTO> listado() {
		
		ArrayList<UsuarioDTO> temp = new ArrayList<UsuarioDTO>();
		ResultSet rs = null; //para almacenar el resultado del listado en sql
		Connection con = null; //para ejecutar la conexion
		PreparedStatement pst = null; // Clase para compilar la sentencia SQL 
		UsuarioDTO u=null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql = "CALL LISTADO_USUARIOS";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				u = new UsuarioDTO();
				u.setId(rs.getInt(1));
				u.setNombre(rs.getString(2));
				u.setApellido(rs.getString(3));
				u.setEmail(rs.getString(4));
				u.setfRegistro(rs.getString(5));
				u.setDireccion(rs.getString(6));
				u.setStPais(rs.getString(7));
				u.setStCiudad(rs.getString(8));
				u.setStProvincia(rs.getString(9));
				u.setStDistrito(rs.getString(10));
				u.setTelefono(rs.getString(11));
				u.setDesc_Rol(rs.getString(12));
				u.setDesc_estadoU(rs.getString(13));
				u.setIs_staff(rs.getBoolean(14));
				temp.add(u);
			}
		
		} catch (SQLException e) {
			System.out.println("Error en la sentencia " + e.getMessage());
		} finally {
			CerrarConexiones(pst,con);
		}
			return temp;	
	}
	
	

	@Override
	public UsuarioDTO busxEmail(String email) {
		
		ResultSet rs  = null;
		Connection con= null;
		PreparedStatement pst = null;
		UsuarioDTO u = null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql = " select * from tb_usuarios where emailU=?";
			pst = con.prepareStatement(sql);
			pst.setString(1, email);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				u = new UsuarioDTO();
				u.setId(rs.getInt(1));
				u.setNombre(rs.getString(2));
				u.setApellido(rs.getString(3));
				u.setEmail(rs.getString(4));
				u.setClave(rs.getString(5));
				u.setfRegistro(rs.getString(6));
				u.setDireccion(rs.getString(7));
				u.setIdPais(rs.getInt(8));
				u.setIdCiudad(rs.getInt(9));
				u.setIdProvincia(rs.getInt(10));
				u.setIdDistrito(rs.getInt(11));
				u.setTelefono(rs.getString(12));
				u.setRol(rs.getInt(13));
			}
			
		} catch (SQLException e) {
			System.out.println("Error en la sentencia " + e.getMessage());
		} finally {
			CerrarConexiones(pst,con);
		}
		
		return u;
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
	
	public UsuarioDTO validar(String email, String pass) {
		
		ResultSet rs  = null;
		Connection con= null;
		PreparedStatement pst = null;
		UsuarioDTO u = null;
		
		try {
			con = MySQLConexion.getConexion();
			String sql = " select * from tb_usuarios where emailU=? AND claveU = SHA1(?)";
			pst = con.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, pass);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				u = new UsuarioDTO();
				u.setId(rs.getInt(1));
				u.setNombre(rs.getString(2));
				u.setApellido(rs.getString(3));
				u.setEmail(rs.getString(4));
				u.setClave(rs.getString(5));
				u.setfRegistro(rs.getString(6));
				u.setDireccion(rs.getString(7));
				u.setIdPais(rs.getInt(8));
				u.setIdCiudad(rs.getInt(9));
				u.setIdProvincia(rs.getInt(10));
				u.setIdDistrito(rs.getInt(11));
				u.setTelefono(rs.getString(12));
				u.setRol(rs.getInt(13));
			}
			
		} catch (SQLException e) {
			System.out.println("Error en la sentencia " + e.getMessage());
		} finally {
			CerrarConexiones(pst,con);
		}
		
		return u;
	}
	
	public boolean cerrarSesion(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().removeAttribute("usuario");
		return true;
	}

}
