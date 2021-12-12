package com.miniprojet.miniprojet.Repository;

import com.miniprojet.miniprojet.Model.Stock;

import org.springframework.data.repository.CrudRepository;

public interface StockRepository extends CrudRepository<Stock, Integer>{
    
}

