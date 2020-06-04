package interfaces;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UsuarioDTO;

public interface UsuarioDAO extends CRUD<UsuarioDTO>{

	public UsuarioDTO busxEmail (String email);
	public boolean cerrarSesion(HttpServletRequest request, HttpServletResponse response);
	public UsuarioDTO validar(String email, String pass);
}
