package com.sicedesign.micro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sicedesign.micro.controller.page.PageWrapper;
import com.sicedesign.micro.model.Cliente;
import com.sicedesign.micro.model.EstadoCivil;
import com.sicedesign.micro.model.Sexo;
import com.sicedesign.micro.model.TipoDocumento;
import com.sicedesign.micro.model.TipoPessoa;

import com.sicedesign.micro.repository.Clientes;
import com.sicedesign.micro.repository.Distritos;
import com.sicedesign.micro.repository.Nacionalidades;
import com.sicedesign.micro.repository.Provincias;
import com.sicedesign.micro.repository.filter.ClienteFilter;
import com.sicedesign.micro.service.CadastroClienteService;
import com.sicedesign.micro.service.exception.EmailClienteJaCadastradoException;
import com.sicedesign.micro.service.exception.MenorDeIdadeCadastradoException;
import com.sicedesign.micro.service.exception.NuitClienteJaCadastradoException;
import com.sicedesign.micro.service.exception.TipoDeDocumentoENrDeDocumentoJaCadastradoException;


@Controller
@RequestMapping("/clientes")
public class ClienteController {

	@Autowired
	private CadastroClienteService clienteService;
	
	@Autowired
	private Nacionalidades nacionalidades;
	
	
	@Autowired
	private Provincias provincias;
	
	@Autowired
	private Distritos distritos;
	
	@Autowired
	private Clientes clientes;
	
	

	@RequestMapping("/novo")
	public ModelAndView novo(Cliente cliente){
		ModelAndView mv = new ModelAndView("cliente/cadastro-cliente");
		mv.addObject("sexo", Sexo.values());
		mv.addObject("tipoDocumento", TipoDocumento.values());
		mv.addObject("estadoCivil", EstadoCivil.values());
		mv.addObject("tipoPessoa", TipoPessoa.values());
		mv.addObject("provincias", provincias.findAll());
		mv.addObject("distritos", distritos.findAll());
		mv.addObject("nacionalidade", nacionalidades.findAll());


		return mv;
	}
	
	@RequestMapping(value = "/novo", method = RequestMethod.POST)
	public ModelAndView salvar(@Valid Cliente cliente, BindingResult result, Model model,
			RedirectAttributes attribute
			){
		
		if(result.hasErrors()){
			return novo(cliente);
		}
		
		try{
			clienteService.salvar(cliente);
		} catch (MenorDeIdadeCadastradoException e) {
			result.rejectValue("dataNascimento", e.getMessage(), e.getMessage());
			return novo(cliente);
		}
		catch (EmailClienteJaCadastradoException e) {
			result.rejectValue("email", e.getMessage(), e.getMessage());
			return novo(cliente);
		}
		catch (NuitClienteJaCadastradoException e) {
			result.rejectValue("nuit", e.getMessage(), e.getMessage());
			return novo(cliente);
		}
		catch (TipoDeDocumentoENrDeDocumentoJaCadastradoException e) {
			result.rejectValue("numeroDocumento", e.getMessage(), e.getMessage());
			return novo(cliente);
		}
		
		attribute.addFlashAttribute("mensagem", "Gravado com Sucesso! \n Código do Cliente: " +cliente.getNic());
		
		return new ModelAndView("redirect:/clientes/novo");
	}
	
	@GetMapping
	public ModelAndView pesquisar(ClienteFilter clienteFilter, BindingResult result,
			@PageableDefault(size = 2) Pageable pageable, HttpServletRequest httpServletRequest) {
		ModelAndView mv = new ModelAndView("cliente/pesquisa-cliente");

		
		PageWrapper<Cliente> paginaWrapper = new PageWrapper<>(clientes.filtrar(clienteFilter, pageable),httpServletRequest);
		mv.addObject("pagina", paginaWrapper);

		return mv;
	}
}
