/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Empresa;
import Entity.Persona;
import Entity.Sucursal;
import Entity.Usuario;
import InterfaceDAO.InterfaceForDAO;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author LC13005
 */
public class SucursalDAO {

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
            Sucursal s = (Sucursal) o;
            //Salva los datos de la clase Persona
            se.save(s);
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
            Sucursal s = (Sucursal) o;
            //List<Sucursal> lis = se.createQuery("from Sucursal where codigo=" + s.getCodigo()).list();
            se.delete(s);
            tr.commit();
            se.close();
            System.err.println("Elimino Sucursal  *****************************++++++++++++++++++");
            return true;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public Sucursal buscar(Sucursal s  ) {
        try {
            init();
            //List<Sucursal> lis = se.createQuery("from Sucursal where codigo=" + s.getCodigo()).list();
            s = (Sucursal) se.get(Sucursal.class, s.getCodigo());
            tr.commit();
            se.close();
            System.err.println("Encontro Sucursal *****************************++++++++++++++++++");
            return s;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public boolean modificar(Object o) {
        try {
            init();
            Sucursal s = (Sucursal) o;
            se.update(s);
            tr.commit();
            se.close();
            return true;
        } catch (Exception e) {
            tr.rollback();
            se.close();
            throw new RuntimeException(e.getMessage());
        }
    }

    public List<Sucursal> listar() {
        try {
            init();
            List<Sucursal> lis = se.createQuery("from Sucursal").list();
            tr.commit();
            se.close();
            System.err.println("Encontro NULLL" + " *****************************++++++++++++++++++");
            return lis;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public List<Sucursal> listarPorEmpresa(Empresa em) {
        try {
            init();
            List<Sucursal> lis = se.createQuery("from Sucursal where id_empresa=" + em.getId()).list();
            System.err.println("********************Encontro listado ");
            tr.commit();
            se.close();
            return lis;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
}
