package com.sicedesign.micro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sicedesign.micro.model.Provincia;

@Repository
public interface Provincias extends JpaRepository<Provincia, Long>{

}
