package com.example.parcial3.Services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.example.parcial3.Models.Comidas;

public class ComidaDB {
    Connection _cn;

    public ComidaDB() {
        _cn = new Conexion().openDB();
    }

    public List<Comidas> ObtenerComida() {
        try {
            Statement stnt = _cn.createStatement();
            String query = "SELECT * FROM Comidas";

            List<Comidas> comidas = new ArrayList<>();

            ResultSet result = stnt.executeQuery(query);

            while(result.next()){
                Comidas comida = new Comidas(
                    result.getString("url"), 
                    result.getString("nom_comida"),
                    result.getString("tipo_comida"),
                    result.getString("descripcion")
                    );

                comidas.add(comida);
            }
            result.close();
            stnt.close();
            return comidas;
        } catch (Exception e) {
            System.out.println("ERROR");
        }
        return null;
    }
}
