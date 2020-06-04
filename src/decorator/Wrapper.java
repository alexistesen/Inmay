package decorator;

import java.text.DecimalFormat;

import org.displaytag.decorator.TableDecorator;

import beans.ProductoDTO;
import beans.UsuarioDTO;

public class Wrapper extends TableDecorator{
	
	public String getImagen() {
		
		UsuarioDTO u = (UsuarioDTO) getCurrentRowObject();
		
		return 	"<a href='users?opcion=update&cod="+u.getId()+"'><img src='img/update.png' width='20' height='20'></a>"
				+"<a href='users?opcion=delete&cod="+u.getId()+"' onclick='ConfirmDemo(event)'><img src='img/delete.png' width='20' height='20'></a>";
	}
	
	
	public String getImagen2() {
		
		ProductoDTO u = (ProductoDTO) getCurrentRowObject();
		
		return 	"<a href='prod?opcion=update&cod="+u.getIdProducto()+"'><img src='img/update.png' width='20' height='20'></a>"
				+"<a href='prod?opcion=delete&cod="+u.getIdProducto()+"' onclick='ConfirmDemo(event)'><img src='img/delete.png' width='20' height='20'></a>";
	}
	
	public String getPrecioProd(){
		ProductoDTO p = (ProductoDTO) getCurrentRowObject();
		DecimalFormat df = new DecimalFormat("0.00");
		return "S/."+ df.format(p.getPrecioU());		
	}
	
	public String getSeleccionaProd() {
		ProductoDTO p = (ProductoDTO) getCurrentRowObject();
		return "<a href='prod?opcion=bus&cod="+p.getIdProducto()+"'>Seleccione</a>";
	}
	
	public String getInputCantidad() {
		return "<input type='number' name='editable'>";
	}

}
