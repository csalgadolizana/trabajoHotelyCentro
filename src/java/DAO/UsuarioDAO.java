/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Usuario;
import InterfaceDAO.InterfaceForDAO;
import java.util.List;
import javax.sql.rowset.serial.SerialJavaObject;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Cristopher
 */
public class UsuarioDAO {

    private Session se;
    private Transaction tr;

    private void init() {
        //inicial las variables para conectarse ... probar con  openSession() o getCurrentSession()
        se = HibernateUtil.getSessionFactory().openSession();
        tr = se.beginTransaction();
    }

    public boolean grabar(Object o) {
        try {
            init();
            Usuario u = (Usuario) o;
            se.save(u);
            tr.commit();
            se.close();
            return true;
        } catch (Exception e) {
            tr.rollback();
            se.close();
            throw new RuntimeException(e.getMessage());
        }
    }

    public boolean eliminar(Object o) {
        try {
            init();
            Usuario u = (Usuario) o;
            se.delete(u);
            tr.commit();
            se.close();
            return true;
        } catch (Exception e) {
            tr.rollback();
            se.close();
            throw new RuntimeException(e.getMessage());
        }
    }

    public Usuario buscar(Usuario u) {
        try {
            init();
            List<Usuario> lis = se.createQuery("from Usuario where username='" + u.getUsername() + "' and password='" + u.getPassword() + "'").list();
            tr.commit();
            se.close();
            for (Usuario li : lis) {
                if (li != null) {
                    return li;
                }
            }
            System.err.println("Encontro USUARIO nULLL" + " *****************************++++++++++++++++++");
            return null;
        } catch (Exception e) {
            se.close();
            throw new RuntimeException(e.getMessage());
        }
    }

    public boolean modificar(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Object> listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
