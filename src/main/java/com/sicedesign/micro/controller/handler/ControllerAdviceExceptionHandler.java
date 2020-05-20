package com.sicedesign.micro.controller.handler;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.sicedesign.micro.service.exception.NomeNacionalidadeJaCadastradoException;
import com.sicedesign.micro.service.exception.NomeProfissaoJaCadastradoException;

@ControllerAdvice
public class ControllerAdviceExceptionHandler {

	@ExceptionHandler(NomeNacionalidadeJaCadastradoException.class)
	public ResponseEntity<String> handleNomeNacionalidadeJaCadastradoException(NomeNacionalidadeJaCadastradoException e) {
		return ResponseEntity.badRequest().body(e.getMessage());
	}
	
	@ExceptionHandler(NomeProfissaoJaCadastradoException.class)
	public ResponseEntity<String> handleNomeProfissaoJaCadastradoException(NomeProfissaoJaCadastradoException e) {
		return ResponseEntity.badRequest().body(e.getMessage());
	}
}
