package com.sicedesign.micro.service;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sicedesign.micro.model.Cliente;
import com.sicedesign.micro.repository.Clientes;
import com.sicedesign.micro.service.event.cliente.ClienteSalvaEvent;
import com.sicedesign.micro.service.exception.EmailClienteJaCadastradoException;

import com.sicedesign.micro.service.exception.MenorDeIdadeCadastradoException;
import com.sicedesign.micro.service.exception.NuitClienteJaCadastradoException;
import com.sicedesign.micro.service.exception.TipoDeDocumentoENrDeDocumentoJaCadastradoException;


@Service
public class CadastroClienteService {

	@Autowired
	private Clientes clientes;

	@Autowired
	private ApplicationEventPublisher publisher;

	@Transactional
	public void salvar(Cliente cliente) {

		validarUnique(cliente);

		comporNIC(cliente);

		validarIdade(cliente);

		clientes.save(cliente);

		publisher.publishEvent(new ClienteSalvaEvent(cliente));

	}

	private void validarUnique(Cliente cliente) {
		Optional<Cliente> emailExiste = clientes.findByEmail(cliente.getEmail());
		
		Optional<Cliente> nuit = clientes.findByNuit(cliente.getNuit());
				
		Optional<Cliente> numeroDocumento = clientes.findByNumeroDocumento(cliente.getNumeroDocumento());

		
		if (emailExiste.isPresent()) {
			throw new EmailClienteJaCadastradoException("E-mail já cadastrado");
		}
		
		if (nuit.isPresent()) {
			throw new NuitClienteJaCadastradoException("NUIT já cadastrado");
		}
		
		if (numeroDocumento.isPresent()) {
			throw new TipoDeDocumentoENrDeDocumentoJaCadastradoException("Tipo de Documento & Número de Documento já cadastrado");
		}
	}

	private void comporNIC(Cliente cliente) {
		cliente.setNic("LI" + cliente.getTipoPessoa().toString().substring(0, 2)
				+ cliente.getNome().toString().substring(0, 1)+cliente.getApelido().toString().substring(0, 1)+cliente.getDataNascimento().getYear());
	}

	private void validarIdade(Cliente cliente) {
		GregorianCalendar today = new GregorianCalendar();
		GregorianCalendar birth = new GregorianCalendar();

		if (cliente.getDataNascimento() != null) {
			birth.setTime(cliente.getDataNascimento());
		}

		int years = today.get(Calendar.YEAR);
		int yearBirth = birth.get(Calendar.YEAR);

		int result = years - yearBirth;

		if (result < 18) {
			throw new MenorDeIdadeCadastradoException("Só pode fazer empréstimos pessoas maior de idade.!!!");

		}
	}
}
