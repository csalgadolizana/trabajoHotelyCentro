/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Empresa;
import Entity.Usuario;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Duoc
 */
public class EmpresaDAO {

    private Session se;
    private Transaction tr;

    private void init() {
        //inicial las variables para conectarse ... probar con  openSession() o getCurrentSession()
        se = HibernateUtil.getSessionFactory().openSession();
        tr = se.beginTransaction();
    }

    public Empresa buscar(Integer idEmpresa) {
        try {
            init();
            List<Empresa> lis = se.createQuery("from Empresa where id='" + idEmpresa + "'").list();
            tr.commit();
            se.close();
            for (Empresa li : lis) {
                if (li != null) {
                    System.err.println("***************Encontro la empresa");
                    return li;
                }
            }
            System.err.println(" Empresa buscar(Empresa e) { Encontro  NULLL" + " *****************************++++++++++++++++++");
            return null;
        } catch (Exception ex) {
            se.close();
            throw new RuntimeException(ex.getMessage());
        }
    }

}
