/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Ejecutivo;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Duoc
 */
public class EjecutivoDAO {

    private Session se;
    private Transaction tr;

    private void init() {
        //inicial las variables para conectarse ... probar con  openSession() o getCurrentSession()
        se = HibernateUtil.getSessionFactory().openSession();
        tr = se.beginTransaction();
    }

    public Ejecutivo buscarEjecutivo(Integer e) {
        try {
            init();
            List<Ejecutivo> lis = se.createQuery("from Ejecutivo where idPersona=" + e).list();
            System.err.println("Entro al FOOORR");
            tr.commit();
            se.close();
            for (Ejecutivo li : lis) {
                if (li != null) {
                    return li;
                }
            }
            System.err.println("Ejecutivo buscarEjecutivo(Integer e) { Encontro  NULLL" + " *****************************++++++++++++++++++");
            return null;
        } catch (Exception ex) {
            se.close();
            System.err.println("Ejecutivo buscarEjecutivo(Integer e) { Encontro  NULLL" + " *****************************++++++++++++++++++");
            throw new RuntimeException(ex.getMessage());
        }
    }

}
