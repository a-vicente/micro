package com.sicedesign.micro.model;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;


@Embeddable
public class Endereco implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	@NotNull(message = "Distrito é Obrigatório")
	@ManyToOne
	@JoinColumn(name = "codigo_distrito")
	private Distrito distrito;
	
	@NotNull(message = "Provincia é Obrigatório")
	@Transient
	private Provincia provincia;
	

	public Distrito getDistrito() {
		return distrito;
	}

	public void setDistrito(Distrito distrito) {
		this.distrito = distrito;
	}

	public Provincia getProvincia() {
		return provincia;
	}

	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}
	
	public String getNomeDistritoSiglaProvincia() {
		if(this.distrito != null) {
			return this.distrito.getNome()+" / "+this.distrito.getProvincia().getSigla();
		}
		
		return null;
	}


}
