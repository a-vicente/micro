package com.sicedesign.micro.service;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sicedesign.micro.model.Distrito;
import com.sicedesign.micro.repository.Distritos;
import com.sicedesign.micro.service.exception.NomeDistritoJaCadastradoException;



@Service
public class CadastroDistritoService {
	
	@Autowired
	private Distritos distritos;
	
	@Transactional
	public void salvar(Distrito distrito) {
		
		Optional<Distrito> distritoOptional = distritos.findByNomeAndProvincia(distrito.getNome(), distrito.getProvincia());
		
		if(distritoOptional.isPresent()) {
			throw new NomeDistritoJaCadastradoException("Nome de distrito já cadastrado");
		}
		
	}

}
