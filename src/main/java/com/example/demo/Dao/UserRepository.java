package com.example.demo.Dao;

import com.example.demo.Entities.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

@Service
public interface UserRepository extends CrudRepository<User, Integer> {

    @Query("select u from User u where u.email = ?1 and u.password = ?2 ")
    User findByEmailAndPass(String email, String pass);
}
