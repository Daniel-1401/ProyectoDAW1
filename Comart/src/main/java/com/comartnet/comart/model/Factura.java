package com.comartnet.comart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table
@Entity(name = "Factura")
public class Factura {
	@Id
	@Column(name = "num_venta")
	private String codFactura;
	
	@Column(name = "Id_Producto")
	private int codProducto;
	
	@Column(name = "fec_venta")
	private String fchVenta;
	
	@Column(name = "hora_venta")
	private String horaVenta;
	
	@Column(name = "tot_venta")
	private int totVenta;
}
