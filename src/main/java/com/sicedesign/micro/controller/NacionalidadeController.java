package com.sicedesign.micro.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sicedesign.micro.model.Nacionalidade;
import com.sicedesign.micro.service.CadastroNacionalidadeService;
import com.sicedesign.micro.service.exception.NomeNacionalidadeJaCadastradoException;

@Controller
@RequestMapping("/nacionalidade")
public class NacionalidadeController {
	
	@Autowired
	private CadastroNacionalidadeService cadastroNacionalidadeService;
	
	@RequestMapping("/novo")
	public ModelAndView novo(Nacionalidade nacionalidade) {
		return new ModelAndView("nacionalidade/cadastro-nacionalidade");
	}
	
	@RequestMapping(value = "/novo", method = RequestMethod.POST)
	public ModelAndView cadastrar(@Valid Nacionalidade nacionalidade, BindingResult result, RedirectAttributes attributes) {
		if (result.hasErrors()) {
			return novo(nacionalidade);
		}
		
		try {
			cadastroNacionalidadeService.salvar(nacionalidade);
		} catch (NomeNacionalidadeJaCadastradoException e) {
			result.rejectValue("nome", e.getMessage(), e.getMessage());
			return novo(nacionalidade);
		}
		
		attributes.addFlashAttribute("mensagem", "País salvo com sucesso");
		return new ModelAndView("redirect:/nacionalidade/novo");
	}
	
	@RequestMapping(method = RequestMethod.POST, consumes = { MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody ResponseEntity<?> salvar(@RequestBody @Valid Nacionalidade nacionalidade, BindingResult result) {
		if (result.hasErrors()) {
			return ResponseEntity.badRequest().body(result.getFieldError("nome").getDefaultMessage());
		}
		
		nacionalidade = cadastroNacionalidadeService.salvar(nacionalidade);
		return ResponseEntity.ok(nacionalidade);
	}
	

}
