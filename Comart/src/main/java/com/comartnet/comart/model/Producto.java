package com.comartnet.comart.model;

import javax.persistence.*;

@Entity
@Table(name = "Productos")
public class Producto {
	@Id
	@Column(name = "Id_Producto")
	private int codProducto;
	
	@Column(name = "Nom_Producto")
	private String nomProducto;
	
	@Column(name = "Des_Producto")
	private String desProducto;
	
	@Column(name = "PrecioUnidad")
	private double precioUnidad;
	
	@Column(name = "Stock_Producto")
	private int stockProducto;
	
	@Column(name = "UnidadesEnPedido")
	private int unidadesEnPedido;
	
	@Column(name = "imagen")
	private String imagen;
	
	@Column(name = "cod_tipo")
	private int codTipo;
}
