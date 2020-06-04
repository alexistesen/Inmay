package etiquetas;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import beans.CategoriaDTO;
import beans.ProveedorDTO;
import services.CategoriaService;
import services.ProveedorService;


public class cboProveedor extends TagSupport {


	public int doStartTag() throws JspException {

		
		JspWriter out = pageContext.getOut();
		try {
			
			ProveedorService rs = new ProveedorService();
			ArrayList<ProveedorDTO> l = rs.listado();
			for(ProveedorDTO temp : l) {
				out.print("<option value='"+temp.getIdProveedor()+"'>"+temp.getEmpresa()+"</option>");
			}
			
			
		} catch (IOException e) {
			System.out.println("Error: " + e.getMessage());
		}
		return SKIP_BODY;
	}

}
