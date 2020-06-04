package beans;

public class PedidoDetDTO {

	private int idPedidoDet,idPedido,idProducto,cantidad;	
	private double precioVen,importe;
	private String stProducto;

	public int getIdPedido() {
		return idPedido;
	}

	public void setIdPedido(int idPedido) {
		this.idPedido = idPedido;
	}

	public int getIdProducto() {
		return idProducto;
	}

	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getPrecioVen() {
		return precioVen;
	}

	public void setPrecioVen(double precioVen) {
		this.precioVen = precioVen;
	}

	public double getImporte() {
		return importe;
	}

	public void setImporte(double importe) {
		this.importe = importe;
	}

	public String getStProducto() {
		return stProducto;
	}

	public void setStProducto(String stProducto) {
		this.stProducto = stProducto;
	}

	public int getIdPedidoDet() {
		return idPedidoDet;
	}

	public void setIdPedidoDet(int idPedidoDet) {
		this.idPedidoDet = idPedidoDet;
	}
	
		
}
