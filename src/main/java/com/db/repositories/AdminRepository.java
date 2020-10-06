package com.db.repositories;

import com.db.entitis.Admin;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface AdminRepository  extends CrudRepository<Admin, Long> {
    List<Admin> findByLastName(String lastName);
    Admin findById(long id);
}
