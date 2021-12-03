package com.comartnet.comart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.comartnet.comart.model.Producto;
import com.comartnet.comart.repositoryService.IProductoService;

@Controller
@RequestMapping
public class ProductoController {
	
	@Autowired
	private IProductoService service;
	
	@GetMapping("/listar")
	public String listar(Model model) {
		List<Producto> productos =  service.listar();
		model.addAttribute("lstProductos", productos);
		return "index";
	}
}
