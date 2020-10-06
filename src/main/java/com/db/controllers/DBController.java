package com.db.controllers;

import com.db.entitis.Admin;
import com.db.repositories.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@EnableJpaRepositories("com.db.repositories")
public class DBController {
    @Autowired
    private AdminRepository adminRepository;

    public  Iterable<Admin> getAdmin(){
        return null;
    }
}
