/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package InterfaceDAO;

import java.util.List;
import javax.sql.rowset.serial.SerialJavaObject;

/**
 *
 * @author Cristopher
 */
public interface InterfaceForDAO {
    boolean grabar(Object o);
    boolean eliminar(Object o);
    Object buscar(Object o);
    boolean modificar(Object o);
    List<Object> listar();
}