package com.sicedesign.micro.model;

public enum Sexo {

	FEMININO("Feminino"), MASCULINO("Masculino"),
	OUTROS("Outros");

	private String descricao;

	private Sexo(String descricao) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}
	
	

}
