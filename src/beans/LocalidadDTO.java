package beans;

public class LocalidadDTO {

	private int idLocalidad; 
	private String descLocalidad;
	
	public int getIdLocalidad() {
		return idLocalidad;
	}
	public void setIdLocalidad(int idLocalidad) {
		this.idLocalidad = idLocalidad;
	}
	public String getDescLocalidad() {
		return descLocalidad;
	}
	public void setDescLocalidad(String descLocalidad) {
		this.descLocalidad = descLocalidad;
	}
	
	@Override
	public String toString() {
		return "LocalidadDTO [idLocalidad=" + idLocalidad + ", descLocalidad=" + descLocalidad + "]";
	}
	
}
