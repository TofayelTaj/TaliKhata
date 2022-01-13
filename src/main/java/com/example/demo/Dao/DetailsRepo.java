package com.example.demo.Dao;

import com.example.demo.Entities.Details;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface DetailsRepo extends CrudRepository<Details, Integer> {

    @Query(value = "select * from  Details where entry_e_id = :id", nativeQuery = true)
     List<Details> getAllEntryDetails(@Param("id") int id);

    @Query(value = "SELECT tk from Details where entry_e_id = ?1", nativeQuery = true)
     List<Integer> getAllTkByEntryId(int id);





}
