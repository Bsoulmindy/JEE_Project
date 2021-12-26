package com.miniprojet.miniprojet.Repository;

import java.util.List;

import com.miniprojet.miniprojet.Model.ClientProduitId;
import com.miniprojet.miniprojet.Model.Panier;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface PanierRepository extends CrudRepository<Panier, ClientProduitId>{
    @Query("from Panier where idClient = :idClient")
    List<Panier> recupererPaniersDuClient(@Param("idClient") int idClient);
}
