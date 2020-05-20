package com.sicedesign.micro.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sicedesign.micro.model.Profissao;
import com.sicedesign.micro.service.CadastroProfissaoService;
import com.sicedesign.micro.service.exception.NomeProfissaoJaCadastradoException;




@Controller
@RequestMapping("/profissao")
public class ProfissaoController {
	
	
	@Autowired
	private CadastroProfissaoService cadastroProfissaoService;
	
	@RequestMapping("/novo")
	public ModelAndView novo(Profissao profissao) {
		ModelAndView mv = new ModelAndView("profissao/cadastro-profissao");
		
		return mv ;
	}
	
	@RequestMapping(value = "/novo", method = RequestMethod.POST)
	public ModelAndView salvar(@Valid Profissao profissao, BindingResult result, Model model,
			RedirectAttributes attribute) {
		
		if(result.hasErrors()) {
			return novo(profissao);
		}
		
		try {
		
		cadastroProfissaoService.salvar(profissao);
		
		} catch(NomeProfissaoJaCadastradoException e) {
			result.rejectValue("nome", e.getMessage(), e.getMessage());
			return novo(profissao);
		}
		
		attribute.addFlashAttribute("mensagem", "Gravado com Sucesso!");
		return new ModelAndView("redirect:/profissao/novo");
	}
	
	@RequestMapping(method = RequestMethod.POST, consumes = { MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody ResponseEntity<?> salvar(@RequestBody @Valid Profissao profissao, BindingResult result){
		
		if(result.hasErrors()) {
			return ResponseEntity.badRequest().body(result.getFieldError("nome").getDefaultMessage());
		}
				
		profissao = cadastroProfissaoService.salvar(profissao);
		return ResponseEntity.ok(profissao);
		
	}

}
