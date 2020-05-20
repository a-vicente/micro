package com.sicedesign.micro.repository.helper.usuario;

import java.util.List;
import java.util.Optional;

import com.sicedesign.micro.model.Usuario;
import com.sicedesign.micro.repository.filter.UsuarioFilter;

public interface UsuariosQueries {

public Optional<Usuario> porEmailEAtivo(String email);
	
	public List<String> permissoes(Usuario usuario);
	
	public List<Usuario> filtrar(UsuarioFilter filtro);


}
