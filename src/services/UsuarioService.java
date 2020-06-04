package services;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UsuarioDTO;
import dao.DAOFactory;
import interfaces.UsuarioDAO;

public class UsuarioService{

	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	
	UsuarioDAO usuario = fabrica.getUsuarioDAO();

	public int registrar(UsuarioDTO t) {
		return usuario.registrar(t);
	}

	public int eliminar(int codigo) {
		return usuario.eliminar(codigo);
	}

	public int actualizar(UsuarioDTO t) {
		return usuario.actualizar(t);
	}

	public UsuarioDTO obtenerObjeto(int codigo) {
		return usuario.obtenerObjeto(codigo);
	}

	public ArrayList<UsuarioDTO> listado() {
		return usuario.listado();
	}
	
	public UsuarioDTO busxEmail(String email) {
		return usuario.busxEmail(email);
	}
	
	public UsuarioDTO validar(String email, String pass) {
		return usuario.validar(email, pass);
	}
	
	public boolean cerrarSesion(HttpServletRequest request, HttpServletResponse response) {
		return usuario.cerrarSesion(request, response);
	}
	
	
	
}
