package com.comartnet.comart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table
@Entity(name = "Factura")
public class Factura {
	@Id
	@Column(name = "num_factura")
	private String num_factura;
	
	@Column(name = "Id_Producto")
	private int Id_Producto;
	
	@Column(name = "fec_venta")
	private String fec_venta;
	
	@Column(name = "hora_venta")
	private String hora_venta;
	
	@Column(name = "tot_venta")
	private int tot_venta;
}
