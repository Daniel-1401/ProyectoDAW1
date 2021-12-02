package com.comartnet.comart.model;

import javax.persistence.*;

@Entity
@Table(name = "Productos")
public class Producto {
	@Id
	@Column(name = "Id_Producto")
	private int Id_Producto;
	
	@Column(name = "Nom_Producto")
	private String Nom_Producto;
	
	@Column(name = "Des_Producto")
	private String Des_Producto;
	
	@Column(name = "PrecioUnidad")
	private double PrecioUnidad;
	
	@Column(name = "Stock_Producto")
	private int Stock_Producto;
	
	@Column(name = "UnidadesEnPedido")
	private int UnidadesEnPedido;
	
	@Column(name = "imagen")
	private String imagen;
	
	@Column(name = "cod_Categoria")
	private int cod_Categoria;
}
