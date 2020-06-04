package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UsuarioDTO;
import services.LocalidadService;
import services.RolService;
import services.UsuarioService;

/**
 * Servlet implementation class UsuariosServlet
 */
@WebServlet(name = "users", urlPatterns = { "/users" })
public class UsuariosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UsuarioService service = new UsuarioService();
	LocalidadService lservice = new LocalidadService();
	RolService rservice = new RolService();
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("Entramos al service de Usuarios");
		
		String opcion = request.getParameter("opcion");
		switch(opcion) {
		case "lst": listado(request,response); break;
		case "save": save(request,response); break;
		case "delete": delete(request,response); break;
		case "update": update(request,response);break;
		case "updateSave": updateSave(request,response);break;
		case "saveCliente": saveCliente(request,response);break;
		}
	}
	

	protected void listado(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Entramos al listado");
		
		request.getSession().setAttribute("listadito", service.listado());
		request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
		
	}
	
	protected void save(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Entramos al save");
		
		String nombres = request.getParameter("txtNombres");
		String apellidos = request.getParameter("txtApellidos");
		String email = request.getParameter("txtEmail");
		String clave = request.getParameter("txtClave");
		String direccion = request.getParameter("txtDireccion");
		int ciudad = Integer.parseInt(request.getParameter("txtCiudad"));
		int provincia = Integer.parseInt(request.getParameter("txtProvincia"));
		int distrito = Integer.parseInt(request.getParameter("txtDistrito"));
		int rol = Integer.parseInt(request.getParameter("txtRol"));
		String telefono = request.getParameter("txtTelefono");
		
		UsuarioDTO reg = new UsuarioDTO();
		reg.setNombre(nombres);
		reg.setApellido(apellidos);
		reg.setEmail(email);
		reg.setClave(clave);
		reg.setDireccion(direccion);
		reg.setIdCiudad(ciudad);
		reg.setIdProvincia(provincia);
		reg.setIdDistrito(distrito);
		reg.setRol(rol);
		reg.setTelefono(telefono);
		
		service.registrar(reg);
		
		
		request.getSession().setAttribute("listadito", service.listado());
		request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
		
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Entramos al delete");
		
		int codigo = Integer.parseInt(request.getParameter("cod"));
		
		service.eliminar(codigo);

		request.getSession().setAttribute("listadito", service.listado());
		request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
		
		
	}
	
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Entramos al Update");
		
		int cod = Integer.parseInt(request.getParameter("cod"));
		System.out.println("Codigo: "+cod);
		
		UsuarioDTO usuario = service.obtenerObjeto(cod);
		
		request.setAttribute("txtId", usuario.getId());
		request.setAttribute("txtNombres",usuario.getNombre());
		request.setAttribute("txtApellidos",usuario.getApellido());
		request.setAttribute("txtEmail",usuario.getEmail());
		request.setAttribute("txtClave",usuario.getClave());
		request.setAttribute("txtDireccion",usuario.getDireccion());
		request.setAttribute("txtCiudad",usuario.getIdCiudad());
		request.setAttribute("txtProvincia",usuario.getIdProvincia());
		request.setAttribute("txtDistrito",usuario.getIdDistrito());
		request.setAttribute("txtRol",usuario.getRol());
		request.setAttribute("txtTelefono",usuario.getTelefono());
		request.setAttribute("txtCtrSelect", "ok");
		
		//listado de localidades
		request.setAttribute("listaCiudad", lservice.listado("ciudad", "1", "Pais"));
		request.setAttribute("listaProvincia", lservice.listado("provincia", String.valueOf(usuario.getIdCiudad()), "Ciudad"));
		request.setAttribute("listaDistrito", lservice.listado("distrito", String.valueOf(usuario.getIdProvincia()), "Provincia"));
		request.setAttribute("listaRol", rservice.listado());
		
		request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
		
	}
	
	private void updateSave(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Entramos a UpdateSave!");
		int codigo = Integer.parseInt(request.getParameter("txtId"));

		String nombres = request.getParameter("txtNombres");
		String apellidos = request.getParameter("txtApellidos");
		String email = request.getParameter("txtEmail");
		String clave = request.getParameter("txtClave");
		String direccion = request.getParameter("txtDireccion");
		int ciudad = Integer.parseInt(request.getParameter("txtCiudad"));
		int provincia = Integer.parseInt(request.getParameter("txtProvincia"));
		int distrito = Integer.parseInt(request.getParameter("txtDistrito"));
		int rol = Integer.parseInt(request.getParameter("txtRol"));
		String telefono = request.getParameter("txtTelefono");
		
		UsuarioDTO reg = new UsuarioDTO();
		
		reg.setId(codigo);
		reg.setNombre(nombres);
		reg.setApellido(apellidos);
		reg.setEmail(email);
		reg.setClave(clave);
		reg.setDireccion(direccion);
		reg.setIdCiudad(ciudad);
		reg.setIdProvincia(provincia);
		reg.setIdDistrito(distrito);
		reg.setRol(rol);
		reg.setTelefono(telefono);
		
		service.actualizar(reg);
		
		request.getSession().setAttribute("listadito", service.listado());
		request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
	}
	
	protected void saveCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Entramos al save del Cliente");
		
		String nombres = request.getParameter("txtNombres");
		String apellidos = request.getParameter("txtApellidos");
		String email = request.getParameter("txtEmail");
		String clave = request.getParameter("txtClave");
		String direccion = request.getParameter("txtDireccion");
		int ciudad = Integer.parseInt(request.getParameter("txtCiudad"));
		int provincia = Integer.parseInt(request.getParameter("txtProvincia"));
		int distrito = Integer.parseInt(request.getParameter("txtDistrito"));
		String telefono = request.getParameter("txtTelefono");
		
		UsuarioDTO reg = new UsuarioDTO();
		
		reg.setNombre(nombres);
		reg.setApellido(apellidos);
		reg.setEmail(email);
		reg.setClave(clave);
		reg.setDireccion(direccion);
		reg.setIdCiudad(ciudad);
		reg.setIdProvincia(provincia);
		reg.setIdDistrito(distrito);
		reg.setTelefono(telefono);
		reg.setRol(3); //Para indicar que es un cliente
		service.registrar(reg);
		
		
		request.getRequestDispatcher("Publica.jsp").forward(request, response);
		
	}
	
}
