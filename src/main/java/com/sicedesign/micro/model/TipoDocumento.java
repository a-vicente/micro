package com.sicedesign.micro.model;


public enum TipoDocumento {

	ID("Bilhete de Identidade"),
	DIRE("Dire"),
	PASSPORT("Passaporte");

	
	private String descricao;
	
	TipoDocumento(String descricao){
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}
	
	
}
