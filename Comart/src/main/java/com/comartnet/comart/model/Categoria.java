package com.comartnet.comart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Productos")
public class Categoria {
	@Id
	@Column(name = "Id_Producto")
	private int codProducto;
	
	@Column(name = "nom_categoria")
	private String nombreCategoria;
	
	@Column(name = "des_Producto")
	private String descripProducto;
	
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
