package com.comartnet.comart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class ProductoController {
	
	public String listar(Model model) {
		return "index";
	}
}
