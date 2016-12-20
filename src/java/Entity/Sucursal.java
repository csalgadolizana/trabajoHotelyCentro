package Entity;
// Generated 29-11-2016 13:51:25 by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;

/**
 * Sucursal generated by hbm2java
 */
public class Sucursal implements java.io.Serializable {

    private Integer codigo;
    private Empresa empresa;
    private String nombre;
    private String direccion;
    private int telefono;
    private String rutaImagen;
    private Set calificacions = new HashSet(0);
    private Set hotels = new HashSet(0);
    private Set centroeventoses = new HashSet(0);

    public Sucursal() {
    }

    public Sucursal(Integer codigo, Empresa empresa, String nombre, String direccion, int telefono) {
        this.codigo = codigo;
        this.empresa = empresa;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public Sucursal(Empresa empresa, String nombre, String direccion, int telefono) {
        this.empresa = empresa;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public Sucursal(Empresa empresa, String nombre, String direccion, int telefono, String rutaImagen) {
        this.empresa = empresa;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
        this.rutaImagen = rutaImagen;
    }

    public Sucursal(Empresa empresa, String nombre, String direccion, int telefono, String rutaImagen, Set calificacions, Set hotels, Set centroeventoses) {
        this.empresa = empresa;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
        this.rutaImagen = rutaImagen;
        this.calificacions = calificacions;
        this.hotels = hotels;
        this.centroeventoses = centroeventoses;
    }

    public Sucursal(Integer idSucursal, Empresa empresa, String nombre, String direccion, int telefono, String rutaImagen) {
        this.codigo = idSucursal;
        this.empresa = empresa;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
        this.rutaImagen = rutaImagen;
    }

    public Sucursal(Integer idSucursal) {
        this.codigo = idSucursal;
    }

    public Integer getCodigo() {
        return this.codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public Empresa getEmpresa() {
        return this.empresa;
    }

    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }

    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return this.direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTelefono() {
        return this.telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getRutaImagen() {
        return this.rutaImagen;
    }

    public void setRutaImagen(String rutaImagen) {
        this.rutaImagen = rutaImagen;
    }

    public Set getCalificacions() {
        return this.calificacions;
    }

    public void setCalificacions(Set calificacions) {
        this.calificacions = calificacions;
    }

    public Set getHotels() {
        return this.hotels;
    }

    public void setHotels(Set hotels) {
        this.hotels = hotels;
    }

    public Set getCentroeventoses() {
        return this.centroeventoses;
    }

    public void setCentroeventoses(Set centroeventoses) {
        this.centroeventoses = centroeventoses;
    }

}