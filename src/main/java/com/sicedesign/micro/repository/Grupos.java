package com.sicedesign.micro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sicedesign.micro.model.Grupo;

@Repository
public interface Grupos extends JpaRepository<Grupo, Long> {

	
}
