package com.example.demo.Dao;

import com.example.demo.Entities.Entry;
import com.example.demo.Entities.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface EntryRepository extends CrudRepository<Entry, Integer> {

    @Query(value = "select * from Entry  where user_id = ?1", nativeQuery = true)
    public List<Entry>  findAllEntry(int id);

    @Query(value = "select * from Entry  where e_id = ?1", nativeQuery = true)
    public Entry  findEntryById(int id);
}
