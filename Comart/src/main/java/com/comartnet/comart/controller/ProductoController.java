package com.comartnet.comart.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.comartnet.comart.model.Producto;
import com.comartnet.comart.repositoryService.IProductoService;

@Controller
@RequestMapping
public class ProductoController {
	
	@Autowired
	private IProductoService service;
	
	@GetMapping("/listarProductos")
	public String listarprod(Model model) {
		List<Producto> productos =  service.listar();
		model.addAttribute("lstProductos", productos);
		return "tables-productos";
	}
	
	@GetMapping("/nuevoProducto")
	public String nuevoProd(Model model) {
		model.addAttribute("producto", new Producto());
		return "registro-producto";
	}
	
	
	@GetMapping("/editarProducto/{id}")
	public String editarProd(@PathVariable int id, Model model) {
		Optional<Producto> producto = service.listarId(id);
		model.addAttribute("producto", producto);
		return "formularioProducto";
	}
	@PostMapping("/insertarProducto")
	public String insertarProd(@Validated Producto p, Model model ) {
		service.guardar(p);
		return "redirect:/listarProdutos";
	}
}
