/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Empresa;
import Entity.Habitacion;
import Entity.Hotel;
import Entity.Sucursal;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Cristopher
 */
public class HotelDAO {

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
            Hotel h = (Hotel) o;
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
            Hotel h = (Hotel) o;
            //List<Sucursal> lis = se.createQuery("from Sucursal where codigo=" + s.getCodigo()).list();
            se.delete(h);
            tr.commit();
            se.close();
            System.err.println("Elimino Hotel  *****************************++++++++++++++++++");
            return true;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public Hotel buscar(Hotel h) {
        try {
            init();
            //List<Sucursal> lis = se.createQuery("from Sucursal where codigo=" + s.getCodigo()).list();
            h = (Hotel) se.get(Hotel.class, h.getId());
            tr.commit();
            se.close();
            System.err.println("Encontro Sucursal *****************************++++++++++++++++++");
            return h;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public boolean modificar(Object o) {
        try {
            init();
            Hotel h = (Hotel) o;
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

    public List<Hotel> listar() {
        try {
            init();
            List<Hotel> lis = se.createQuery("from Hotel").list();
            tr.commit();
            se.close();
            System.err.println("Encontro  Hotel Hotel sNULLL" + " *****************************++++++++++++++++++");
            return lis;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public List<Hotel> listarPorSucursal(Integer s) {
        try {
            init();
            List<Hotel> lis = se.createQuery("from Hotel where id_sucursal=" + s).list();
            System.err.println("********************Encontro listado ");
            tr.commit();
            se.close();
            return lis;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
}
