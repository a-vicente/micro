package com.sicedesign.micro.model;

public enum Estado {
	
	ENCONTRADO("Aguardando Entrega"),
	ENTREGUE("Entregue"),
	PENDENTE("Não Reclamado");
	
	private String descricao;
	
	Estado(String descricao){
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}
	
	

}
