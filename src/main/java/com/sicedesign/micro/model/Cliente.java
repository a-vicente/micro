package com.sicedesign.micro.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.Valid;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;



@Entity
@Table(name = "cliente")
public class Cliente implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	

	@NotBlank(message="Nome é Obrigatório")
	@Pattern(regexp = "^[\\p{L} .'-]+$", message = "O nome não pode conter número.")
	private String nome;
	
	@NotBlank(message="Apelido é Obrigatório")
	@Pattern(regexp = "^[\\p{L} .'-]+$", message = "O nome não pode conter número.")
	private String apelido;
	
	@NotBlank(message="Profissão ou Nome Da Empresa é Obrigatório")
	@Column(name = "nome_empresa_profissao")
	private String nomeEmpresaProfissao;

	private String nic;
	
	@NotNull(message="Sexo é Obrigatório")
	@Enumerated(EnumType.STRING)
	private Sexo sexo;
	
	@NotNull(message="Tipo Documento é Obrigatório")
	@Column(name = "tipo_documento")
	@Enumerated(EnumType.STRING)
	private TipoDocumento tipoDocumento;
	
	@NotBlank(message="Número Do Documento é Obrigatório")
	@Column(name = "numero_documento")
	private String numeroDocumento;
	
	@NotNull(message="Estado Civil é Obrigatório")
	@Enumerated(EnumType.STRING)
	@Column(name="estado_civil")
	private EstadoCivil estadoCivil;
	
	@Enumerated(EnumType.STRING)
	@Column(name="tipo_pessoa")
	private TipoPessoa tipoPessoa;
	
	@NotNull(message="Data de Nascimento é Obrigatório")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Temporal(TemporalType.DATE)
	@Column(name = "data_nascimento")
	private Date dataNascimento;
	
	@Size(min = 9, max = 15, message = "Contacto deve ter no minimo 9 Dígitos")
	private String contacto;
	
	@Size(min = 9, max = 15, message = "Contacto Alternativo deve ter no minimo 9 Dígitos")
	@Column(name = "contacto_alternativo")
	private String contactoAlternativo;
	
	
	@NotBlank(message="NUIT é Obrigatório")
	@Size(min = 9, max = 9, message = "NUIT deve ter 9 Dígitos")
	private String nuit;
	
	
	@Email(message = "E-mail inválido")
	private String email;
	
	@NotNull(message="Nacionalidade é Obrigatório")
	@ManyToOne
	@JoinColumn(name="codigo_nacionalidade")
	private Nacionalidade nacionalidade;
	
	
	@Valid
	@JsonIgnore
	@Embedded
	private Endereco endereco;
	
	@NotBlank(message="Avenida/Rua é Obrigatório")
	private String avenida;


	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getApelido() {
		return apelido;
	}

	public void setApelido(String apelido) {
		this.apelido = apelido;
	}

	public String getNomeEmpresaProfissao() {
		return nomeEmpresaProfissao;
	}

	public void setNomeEmpresaProfissao(String nomeEmpresaProfissao) {
		this.nomeEmpresaProfissao = nomeEmpresaProfissao;
	}

	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}

	public Sexo getSexo() {
		return sexo;
	}

	public void setSexo(Sexo sexo) {
		this.sexo = sexo;
	}

	public TipoDocumento getTipoDocumento() {
		return tipoDocumento;
	}

	public TipoPessoa getTipoPessoa() {
		return tipoPessoa;
	}

	public void setTipoPessoa(TipoPessoa tipoPessoa) {
		this.tipoPessoa = tipoPessoa;
	}

	public void setTipoDocumento(TipoDocumento tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	public String getNumeroDocumento() {
		return numeroDocumento;
	}

	public void setNumeroDocumento(String numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
	}

	public EstadoCivil getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(EstadoCivil estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getContacto() {
		return contacto;
	}

	public void setContacto(String contacto) {
		this.contacto = contacto;
	}

	public String getContactoAlternativo() {
		return contactoAlternativo;
	}

	public void setContactoAlternativo(String contactoAlternativo) {
		this.contactoAlternativo = contactoAlternativo;
	}

	public String getNuit() {
		return nuit;
	}

	public void setNuit(String nuit) {
		this.nuit = nuit;
	}



	public Nacionalidade getNacionalidade() {
		return nacionalidade;
	}

	public void setNacionalidade(Nacionalidade nacionalidade) {
		this.nacionalidade = nacionalidade;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public String getAvenida() {
		return avenida;
	}

	public void setAvenida(String avenida) {
		this.avenida = avenida;
	}
	
	


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codigo == null) ? 0 : codigo.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cliente other = (Cliente) obj;
		if (codigo == null) {
			if (other.codigo != null)
				return false;
		} else if (!codigo.equals(other.codigo))
			return false;
		return true;
	}
	
	

}
