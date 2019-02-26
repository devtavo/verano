/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be;

/**
 *
 * @author gustavo-pc
 */

public class personabe {
    
    private int idpersona;
    private String nombre;
    private String domicilio;
    private String telefono;
    private String celular;
    private String email;
    private String iddepartamento;
    private String idprovincia;
    private String iddistrito;
    private String idtipodocumento;
    private String dni;
    private String descripcion;
    private String archivo;
    private String fecha;
    private String funcionario;

    public personabe() {
    }

    public personabe(int idpersona, String nombre, String domicilio, String telefono, String celular, String email, String iddepartamento, String idprovincia, String iddistrito, String idtipodocumento, String dni, String descripcion, String archivo, String fecha, String funcionario) {
        this.idpersona = idpersona;
        this.nombre = nombre;
        this.domicilio = domicilio;
        this.telefono = telefono;
        this.celular = celular;
        this.email = email;
        this.iddepartamento = iddepartamento;
        this.idprovincia = idprovincia;
        this.iddistrito = iddistrito;
        this.idtipodocumento = idtipodocumento;
        this.dni = dni;
        this.descripcion = descripcion;
        this.archivo = archivo;
        this.fecha = fecha;
        this.funcionario = funcionario;
    }
        
    public int getIdpersona() {
        return idpersona;
    }

    public void setIdpersona(int idpersona) {
        this.idpersona = idpersona;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIddepartamento() {
        return iddepartamento;
    }

    public void setIddepartamento(String iddepartamento) {
        this.iddepartamento = iddepartamento;
    }

    public String getIdprovincia() {
        return idprovincia;
    }

    public void setIdprovincia(String idprovincia) {
        this.idprovincia = idprovincia;
    }

    public String getIddistrito() {
        return iddistrito;
    }

    public void setIddistrito(String iddistrito) {
        this.iddistrito = iddistrito;
    }

    public String getIdtipodocumento() {
        return idtipodocumento;
    }

    public void setIdtipodocumento(String idtipodocumento) {
        this.idtipodocumento = idtipodocumento;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getArchivo() {
        return archivo;
    }

    public void setArchivo(String archivo) {
        this.archivo = archivo;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(String funcionario) {
        this.funcionario = funcionario;
    }

    
    
    
}
