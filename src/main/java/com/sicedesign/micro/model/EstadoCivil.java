package com.sicedesign.micro.model;

public enum EstadoCivil {

	CASADO("Casado"),
	DIVORCIADO("Divorciado"),
	SOLTEIRO("Solteiro"),
	MARITALMENTE("União De Fato");
	
	private String descricao;
	
	private EstadoCivil(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	
}
