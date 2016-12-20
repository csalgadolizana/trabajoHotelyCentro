/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Empresa;
import Entity.Habitacion;
import Entity.Sucursal;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Cristopher
 */
public class HabitacionDAO {

    private Session se;
    private Transaction tr;

    private void init() {
        //inicial las variables para conectarse ... probar con  openSession()
        se = HibernateUtil.getSessionFactory().openSession();
        tr = se.beginTransaction();
    }

    public boolean grabar(Object o) {
        try {
            init();
            //parsea el Object a Persona
            Habitacion h = (Habitacion) o;
            //Salva los datos de la clase Persona
            se.save(h);
            //Confirma la Transaction
            tr.commit();
            //Cierra la Session
            se.close();
            return true;
        } catch (Exception e) {
            //Revierte los cambios de la Transaction
            tr.rollback();
            //Cierra la Session
            se.close();
            throw new RuntimeException(e.getMessage());
        }
    }

    public boolean eliminar(Object o) {
        try {
            init();
            Habitacion h = (Habitacion) o;
            //List<Sucursal> lis = se.createQuery("from Sucursal where codigo=" + s.getCodigo()).list();
            se.delete(h);
            tr.commit();
            se.close();
            System.err.println("Elimino Sucursal  *****************************++++++++++++++++++");
            return true;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public Habitacion buscar(Habitacion h) {
        try {
            init();
            //List<Sucursal> lis = se.createQuery("from Sucursal where codigo=" + s.getCodigo()).list();
            h = (Habitacion) se.get(Habitacion.class, h.getNumero());
            tr.commit();
            se.close();
            System.err.println("Encontro Habitacion *****************************++++++++++++++++++");
            return h;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public boolean modificar(Object o) {
        try {
            init();
            Habitacion h = (Habitacion) o;
            se.update(h);
            tr.commit();
            se.close();
            return true;
        } catch (Exception e) {
            tr.rollback();
            se.close();
            throw new RuntimeException(e.getMessage());
        }
    }

    public List<Habitacion> listar() {
        try {
            init();
            List<Habitacion> lis = se.createQuery("from Habitacion").list();
            tr.commit();
            se.close();
            System.err.println("Encontro Listado" + " *****************************++++++++++++++++++");
            return lis;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public List<Habitacion> listarPorEmpresa(Habitacion h) {
        try {
            init();
            List<Habitacion> lis = se.createQuery("from Habitacion where numero=" + h.getNumero()).list();
            System.err.println("********************Encontro listado ");
            tr.commit();
            se.close();
            return lis;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
}
