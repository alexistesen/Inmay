package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ProductoDTO;
import services.CategoriaService;
import services.ProductoService;
import services.ProveedorService;

/**
 * Servlet implementation class ProductoServlet
 */
@WebServlet(name = "prod", urlPatterns = { "/prod" })
public class ProductoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ProductoService service = new ProductoService();
	CategoriaService cservice = new CategoriaService();
	ProveedorService pservice = new ProveedorService();
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Entramos al service de Productos");
		
		String opcion = request.getParameter("opcion");
		switch(opcion) {
		case "lst": listado(request,response); break;
		case "save": save(request,response); break;
		case "delete": delete(request,response); break;
		case "update": update(request,response);break;
		case "updateSave": updateSave(request,response);break;
		case "listaCat": listarCat(request,response); break;
		case "bus": obtener(request,response); break;
		}

	}
	
	protected void listado(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Entramos al listado");
		
		request.getSession().setAttribute("listadito", service.listado());
		request.getRequestDispatcher("Productos.jsp").forward(request, response);
		
	}
	
	protected void save(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Entramos al save");
		
		String producto = request.getParameter("txtProducto");
		int categoria = Integer.parseInt(request.getParameter("txtCategoria"));
		int stock = Integer.parseInt(request.getParameter("txtStock"));
		double precio = Double.parseDouble(request.getParameter("txtPrecio"));
		int proveedor = Integer.parseInt(request.getParameter("txtProveedor"));
		
		ProductoDTO reg = new ProductoDTO();
		reg.setDescProducto(producto);
		reg.setIdCategoria(categoria);
		reg.setStock(stock);
		reg.setPrecioU(precio);
		reg.setIdProveedor(proveedor);
		
		service.registrar(reg);
		
		
		request.getSession().setAttribute("listadito", service.listado());
		request.getRequestDispatcher("Productos.jsp").forward(request, response);
		
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Entramos al delete");
		
		int codigo = Integer.parseInt(request.getParameter("cod"));
		
		service.eliminar(codigo);

		request.getSession().setAttribute("listadito", service.listado());
		request.getRequestDispatcher("Productos.jsp").forward(request, response);

}
	
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Entramos al Update");
		
		int cod = Integer.parseInt(request.getParameter("cod"));
		System.out.println("Codigo: "+cod);
		
		ProductoDTO producto = service.obtenerObjeto(cod);
		
		request.setAttribute("txtId", producto.getIdProducto());
		request.setAttribute("txtProducto",producto.getDescProducto());
		request.setAttribute("txtCategoria",producto.getIdCategoria());
		request.setAttribute("txtStock",producto.getStock());
		request.setAttribute("txtPrecio",producto.getPrecioU());
		request.setAttribute("txtProveedor",producto.getIdProveedor());
		request.setAttribute("txtCtrSelect", "ok");
		
		//listado de Selects!
		request.setAttribute("listaCategoria", cservice.listado());
		request.setAttribute("listaProveedor", pservice.listado());
		
		request.getRequestDispatcher("Productos.jsp").forward(request, response);
		
	}
	
	private void updateSave(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Entramos a UpdateSave!");
		int codigo = Integer.parseInt(request.getParameter("txtId"));

		String producto = request.getParameter("txtProducto");
		int categoria = Integer.parseInt(request.getParameter("txtCategoria"));
		int stock = Integer.parseInt(request.getParameter("txtStock"));
		double precio = Double.parseDouble(request.getParameter("txtPrecio"));
		int proveedor = Integer.parseInt(request.getParameter("txtProveedor"));
		
		ProductoDTO reg = new ProductoDTO();
		
		reg.setIdProducto(codigo);
		reg.setDescProducto(producto);
		reg.setIdCategoria(categoria);
		reg.setStock(stock);
		reg.setPrecioU(precio);
		reg.setIdProveedor(proveedor);
		
		service.actualizar(reg);
		
		request.getSession().setAttribute("listadito", service.listado());
		request.getRequestDispatcher("Productos.jsp").forward(request, response);
	}
	
	private void obtener(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Busqueda por codigo");
		int cod = Integer.parseInt(request.getParameter("cod"));
		ProductoDTO p = service.obtenerObjeto(cod);
		
		request.getSession().setAttribute("p", p);
		request.getRequestDispatcher("Pedidos.jsp").forward(request,response);
		
	}

	private void listarCat(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Listado por categoria");
		String url = "Registro.jsp";
		int cat = Integer.parseInt(request.getParameter("cbCat"));
		
		ArrayList<ProductoDTO> lista = service.listar(cat);
		request.getSession().setAttribute("listadito", lista);
		request.getRequestDispatcher(url).forward(request,response); 
		
	}
	
}
