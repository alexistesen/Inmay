package etiquetas;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import beans.LocalidadDTO;
import services.LocalidadService;

public class cboCiudadTag extends TagSupport {

	public int doStartTag() throws JspException {

		JspWriter out = pageContext.getOut();
		try {
			LocalidadService ls = new LocalidadService();
			ArrayList<LocalidadDTO> l = ls.listado("ciudad","1","Pais");
			for(LocalidadDTO temp : l) {
				out.println("<option value='"+temp.getIdLocalidad()+"'>"+temp.getDescLocalidad()+"</option>");
			}
			
			
		} catch (IOException e) {
			System.out.println("Error: " + e.getMessage());
		}
		return SKIP_BODY;
	}

}
