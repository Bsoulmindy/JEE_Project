package com.miniprojet.miniprojet.Repository;

import java.util.List;

import com.miniprojet.miniprojet.Model.Compte;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface CompteRepository extends CrudRepository<Compte, Integer>{
    @Query("from Compte where mail = :mail and password = :password")
    List<Compte> connecterAvecMail(@Param("mail") String mail, @Param("password") String password);
}
