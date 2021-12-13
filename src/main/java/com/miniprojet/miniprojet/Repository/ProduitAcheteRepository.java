package com.miniprojet.miniprojet.Repository;

import java.util.List;

import com.miniprojet.miniprojet.Model.ProduitAchete;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface ProduitAcheteRepository extends CrudRepository<ProduitAchete, Integer>{
    @Query("from ProduitAchete a where FUNCTION('DATEDIFF', CURRENT_DATE, a.dateAchat) <= :jours")
    List<ProduitAchete> recupererAchatsAvecDate(@Param("jours") int jours);
}
