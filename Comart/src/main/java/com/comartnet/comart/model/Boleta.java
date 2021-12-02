package com.comartnet.comart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table
@Entity(name = "Boleta")
public class Boleta {
	@Id
	@Column(name = "IdBoleta")
	private String IdBoleta;
	
	@Column(name = "cod_Usuario")
	private String cod_Usuario;
	
	@Column(name = "fec_venta")
	private String fec_venta;
	
	@Column(name = "hora_venta")
	private String hora_venta;
	
	@Column(name = "tot_venta")
	private int tot_venta;
	
	
}
