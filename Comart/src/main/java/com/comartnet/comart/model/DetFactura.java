package com.comartnet.comart.model;

import javax.persistence.*;

@Table
@Entity(name = "DetFactura")
public class DetFactura {
	@Id
	@Column(name = "num_venta")
	private String num_venta;
	
	@Column(name = "Id_Producto")
	private int idProducto;
	
	@Column(name = "cant_venta")
	private int cantVenta;
	
	@Column(name = "precio_venta")
	private double precioVenta;
	
	@Column(name = "importe_venta")
	private double importeVenta;
	
}
