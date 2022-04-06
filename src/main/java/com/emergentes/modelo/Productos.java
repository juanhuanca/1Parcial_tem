package com.emergentes.modelo;
public class Productos {
    private int id;
    private String descripcion;
    private int cantidad;
    private float presio;
    private String categoria;
   
    public Productos() {
        this.id = 0;
        this.descripcion = "";
        this.cantidad = 0;
        this.presio= 0;
        this.categoria = "";
       
                }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getDescripcion() {
        return descripcion;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion= descripcion;
    }
    public int getCantidad() {
        return cantidad;
    }
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    public float getPresio() {
        return presio;
    }
    public void setPresio(float presio) {
        this.presio = presio;
    }
    public String getCategoria() {
        return categoria;
    }
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
       
}