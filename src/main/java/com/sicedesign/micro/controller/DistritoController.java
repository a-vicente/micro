package com.sicedesign.micro.controller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Controller;
import org.springframework.http.MediaType;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sicedesign.micro.model.Distrito;
import com.sicedesign.micro.repository.Distritos;
import com.sicedesign.micro.repository.Provincias;
import com.sicedesign.micro.service.CadastroDistritoService;
import com.sicedesign.micro.service.exception.NomeDistritoJaCadastradoException;



@Controller
@RequestMapping("/distrito")
public class DistritoController {
	
	@Autowired
	private Provincias provincias;
	
	@Autowired
	private Distritos distritos;
	
	@Autowired
	private CadastroDistritoService cadastroDistritoService;
	
	@RequestMapping("/novo")
	public ModelAndView novo(Distrito distrito){
		ModelAndView mv = new ModelAndView("distrito/cadastro-distrito");
		mv.addObject("provincias", provincias.findAll());
		
		return mv;
	}
	
	@PostMapping("/novo")
	@CacheEvict(value = "distrito", key = "#distrito.provincia.codigo", condition = "#distrito.temProvincia")
	public ModelAndView salvar(@Valid Distrito distrito, BindingResult result,
			RedirectAttributes atribute) {
		
		if(result.hasErrors()) {
			return novo(distrito);
		}
		
		try {
			
			cadastroDistritoService.salvar(distrito);
			
		} catch (NomeDistritoJaCadastradoException e) {
			result.rejectValue("nome", e.getMessage(), e.getMessage());
		}
		
		atribute.addFlashAttribute("mensagem", "Distrito Salvo com Sucesso!");
		
		return new ModelAndView("redirect:/distrito/novo");
	}
	
	@RequestMapping(consumes = MediaType.APPLICATION_JSON_VALUE )
	public @ResponseBody List<Distrito> pesquisarPorCodigoProvincia(@RequestParam(name = "provincia", defaultValue = "-1") Long codigoProvincia){
		
		try {
			Thread.sleep(500);
		}catch (InterruptedException e) {
		
		}
		return distritos.findByProvinciaCodigo(codigoProvincia);
		
	}
}
