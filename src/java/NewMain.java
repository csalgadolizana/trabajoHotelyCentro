
import java.util.Set;

import Cl.Salgado.DAO.ElectrodomesticoDAO;
import Cl.Salgado.Entity.Electrodomestico;
import Cl.Salgado.Entity.Reparacion;
import java.util.Iterator;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Cristopher
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Electrodomestico e = new Electrodomestico();
        ElectrodomesticoDAO aO = new ElectrodomesticoDAO();

        for (Electrodomestico arg : aO.listar()) {
            System.out.println("arg : " + arg.toString());

            Reparacion reparacion = (Reparacion) arg.getReparacions();

            Set certi = arg.getReparacions();
            for (Iterator iterator2 = arg.getReparacions().iterator(); iterator2.hasNext();) {
                Reparacion rr = (Reparacion) iterator2.next();
                System.out.println("Certificate: " + rr.getTecnico());
            }

//            for (String arg1 : arg.getReparacions()) {
//                               
//            }
        }
    }

}
