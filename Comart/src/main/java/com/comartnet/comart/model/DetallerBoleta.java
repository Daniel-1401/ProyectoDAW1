package com.comartnet.comart.model;

import javax.persistence.*;

@Table
@Entity(name = "DetallerBoleta")
public class DetallerBoleta {
	@Id
	@Column(name = "IdDetalleBoleta")
	private String IdDetalleBoleta;
	
	@Column(name = "Id_Producto")
	private int Id_Producto;
	
	@Column(name = "Cantidad")
	private int Cantidad;
	
	@Column(name = "Precio")
	private double Precio;
	
	@Column(name = "Total")
	private double Total;
	
}
