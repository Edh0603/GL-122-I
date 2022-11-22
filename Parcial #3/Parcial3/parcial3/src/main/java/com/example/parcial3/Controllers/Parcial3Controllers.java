package com.example.parcial3.Controllers;

import java.util.*;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.parcial3.Models.Comidas;
import com.example.parcial3.Services.ComidaDB;

@RestController
public class Parcial3Controllers {
    
    @GetMapping("/comidas/all")
    public List<Comidas> ObtenerComida() {
        return new ComidaDB().ObtenerComida();
    }
}
