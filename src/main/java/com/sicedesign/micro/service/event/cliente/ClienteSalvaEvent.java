package com.sicedesign.micro.service.event.cliente;

//import org.springframework.util.StringUtils;

import com.sicedesign.micro.model.Cliente;

public class ClienteSalvaEvent {

	private Cliente cliente;

	public ClienteSalvaEvent(Cliente cliente) {
		this.cliente = cliente;
	}

	public Cliente getCliente() {
		return cliente;
	}
	
	/*public boolean temFoto() {
		return !StringUtils.isEmpty(cliente.getFoto());
	}*/
}
