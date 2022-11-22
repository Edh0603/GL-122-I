package com.example.parcial3.Services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    public Connection openDB() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String connectionUrl = "jdbc:sqlserver://localhost:1433;"
            + "databaseName=Parcial3;"
            + "user=sa;"
            + "password=12345;"
            + "trustServerCertificate=true;";
            Connection conexion = DriverManager.getConnection(connectionUrl);
            return conexion;
        } catch (SQLException e) {
            System.out.println("LA BASE DE DATOS NO HA PODIDO SER CONECTADA");
        }
        catch(ClassNotFoundException cnfex){
            System.out.println("ERROR");
        }
        return null;
    }
}
