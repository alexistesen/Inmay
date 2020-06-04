package beans;

public class ProductoDTO {

	private int idProducto,idCategoria,stock;
	private String descProducto;
	private double precioU;
	private int idProveedor;
	
	private String stCategoria,stProveedor;
	
	public int getIdProducto() {
		return idProducto;
	}
	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}
	public int getIdCategoria() {
		return idCategoria;
	}
	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public double getPrecioU() {
		return precioU;
	}
	public void setPrecioU(double precioU) {
		this.precioU = precioU;
	}
	public int getIdProveedor() {
		return idProveedor;
	}
	public void setIdProveedor(int idProveedor) {
		this.idProveedor = idProveedor;
	}
	public String getDescProducto() {
		return descProducto;
	}
	public void setDescProducto(String descProducto) {
		this.descProducto = descProducto;
	}
	public String getStCategoria() {
		return stCategoria;
	}
	public void setStCategoria(String stCategoria) {
		this.stCategoria = stCategoria;
	}
	public String getStProveedor() {
		return stProveedor;
	}
	public void setStProveedor(String stProveedor) {
		this.stProveedor = stProveedor;
	}
	
}
