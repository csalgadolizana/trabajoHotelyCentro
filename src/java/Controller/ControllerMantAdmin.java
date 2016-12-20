/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.EmpresaDAO;
import DAO.HabitacionDAO;
import DAO.SucursalDAO;
import DAO.UsuarioDAO;
import Entity.Empresa;
import Entity.Habitacion;
import Entity.Sucursal;
import Entity.Usuario;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author LC13005
 */
@Controller
public class ControllerMantAdmin {

    private String rutaFiles;
    private String rutaForDB;
    private final String rutaForDBDefaul = "folder\\img\\Usuarios\\";
    private final String rutaDefaulRaiz = "D:\\trabajoHotelyCentro\\web\\";
    private Sucursal sucursal;
    private Empresa empresa;
    private EmpresaDAO empresaDAO;
    private SucursalDAO sucursalDAO;
    //usuario
    private Usuario usuario;
    private UsuarioDAO usuarioDAO;
    //Habitacion
    private Habitacion habitacion;
    private HabitacionDAO habitacionDAO;

//    @RequestMapping(value = "/MantenedorAdministrador.html", method = RequestMethod.GET)
//    public ModelAndView iniciando(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
//        System.err.println("*******************GEEEGEGEGTTTTTTTTTTTTTTTTTTTT************");
//        HttpSession session = request.getSession();
//        habitacionDAO = new HabitacionDAO();
//        List<Habitacion> lis = habitacionDAO.listar();
//        if (lis != null) {
//            modelAndView.addObject("listEmpresa", lis);            
//        System.err.println("*******************GEEEGEGEGTTTTTTTTTTTTTTTTTTTT************");
//        }
//            modelAndView.setViewName("MantenedorAdministrador");
////        empresa = (Empresa) session.getAttribute("empresa");
////        if (empresa != null) {
////            sucursalDAO = new SucursalDAO();
////            List<Sucursal> lis = sucursalDAO.listarPorEmpresa(empresa);
////            modelAndView.addObject("listEmpresa", lis);
////            modelAndView.addObject("variable", "false");
////        } else {
////            modelAndView.addObject("variable", "true");
////            modelAndView.setViewName("MantenedorAdministrador");
////        }
//        return modelAndView;
//    }
//
//    @RequestMapping(value = "/MantenedorAdministrador.html", method = RequestMethod.POST)
//    public ModelAndView CrearSucursal(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) throws Exception {
//        String bnt = "", intputNumeroHabitacion, intputMetrosCuadrados, intputPrecioDia, intputPrecioNoche,intputCantPersonas;
//        if (request.getParameter("Accion") != null) {
//            if (request.getParameter("Accion").equals("eliminar")) {
//                return btnEliminar(request, response, modelAndView);
//            }
//        }
//        List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
//        for (FileItem item : items) {
//            if (item.isFormField() && item.getFieldName().equals("btnAction")) {
//                bnt = item.getString();
//            }
//        }
//        switch (bnt) {
//            case "btnCrear":
//                return btnCrear(request, response, modelAndView, items);
//            case "btnEliminar":
//                return btnEliminar(request, response, modelAndView);
//            case "btnModificar":
//                return btnActualizar(request, response, modelAndView, items);
//        }
//        modelAndView.setViewName("index");
//        return modelAndView;
//    }
//
//    private ModelAndView btnCrear(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView, List<FileItem> items) throws FileUploadException, IOException, Exception {
//        HttpSession session = request.getSession();
//        usuario = (Usuario) session.getAttribute("usuario");
//        rutaFiles = rutaDefaulRaiz + rutaForDBDefaul + usuario.getIdUsuario() + "-" + usuario.getUsername();
//        rutaForDB = rutaForDBDefaul + usuario.getIdUsuario() + "-" + usuario.getUsername() + "\\";
//        File file = new File(rutaFiles);
//        if (!file.exists()) {
//            System.err.println("Directory is not created!");
//            if (file.mkdir()) {
//                System.err.println("Directory is created!");
//            } else {
//                System.err.println("Failed to create directory!");
//            }
//        }
//        String intputNombreSucursal = "", intputDireccion = "";
//        int intputTelefono = 0;
//        for (FileItem item : items) {
//            System.err.println("+++++++ entro for");
//            if (item.isFormField()) {
//                switch (item.getFieldName()) {
//                    case "intputNombreSucursal":
//                        intputNombreSucursal = item.getString();
//                        System.err.println("intputNombreSucursal : " + intputNombreSucursal);
//                        break;
//                    case "intputDireccion":
//                        intputDireccion = item.getString();
//                        System.err.println("intputDireccion : " + intputDireccion);
//                        break;
//                    case "intputTelefono":
//                        intputTelefono = Integer.parseInt(item.getString());
//                        System.err.println("intputTelefono : " + intputTelefono);
//                        break;
//                }
//            } else {
//                if (item.getFieldName().equals("inputImagen")) {
//                    System.err.println("+++++++ item.getFieldName().equals(\"inputImagen\")");
//                    System.err.println("____----_- " + rutaFiles);
//
//                }
//                System.err.println("+++++++ itfgdf");
//                String fieldname = item.getFieldName();
//                String conte = item.getContentType();
//                String filename = FilenameUtils.getName(item.getName());
//                System.err.println("************fieldname : " + fieldname + " fieldvalue : " + filename + " conte : " + conte);
//                InputStream filecontent = item.getInputStream();
//                File f = new File(rutaFiles, item.getName());
//                rutaForDB = rutaForDB + item.getName();
//                System.out.println("Ruta 11 :  " + rutaFiles);
//                System.out.println("Ruta 22 :  " + rutaForDB);
//                item.write(f);
//                Thread.sleep(2000);
//            }
//        }
//        sucursalDAO = new SucursalDAO();
//        try {
//            empresa = (Empresa) session.getAttribute("empresa");
//            Sucursal sucursal = new Sucursal(empresa, intputNombreSucursal, intputDireccion, intputTelefono, rutaForDB);
//            sucursalDAO.grabar(sucursal);
//            List<Sucursal> lis = sucursalDAO.listar();
//            modelAndView.setViewName("MantenedorAdministrador");
//            if (lis != null) {
//                modelAndView.addObject("lis", lis);
//                request.setAttribute("listEmpresa", lis);
//            } else {
//                modelAndView.getModel().put("errorMensaje", "Datos incorectos");
//                modelAndView.setViewName("error");
//            }
//        } catch (Exception e) {
//            System.err.println("Error : " + e.getMessage() + "  ++++++++++++++++++++++++++++++++++++++++++++++++++");
//        }
//        System.out.println("*******************RETORNOOOOOOO------------------------------------------------------------------");
//        return modelAndView;
//    }
//
//    private ModelAndView btnEliminar(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
//        HttpSession session = request.getSession();
//        usuario = (Usuario) session.getAttribute("usuario");
//        sucursalDAO = new SucursalDAO();
//        List<Sucursal> lis = sucursalDAO.listar();
//        request.setAttribute("listEmpresa", lis);
//        try {
//            Integer idSucursal = Integer.parseInt(request.getParameter("idSucursal"));
//            System.err.println("+++++++ " + idSucursal + " *******************************************************************************************");
//            empresa = (Empresa) session.getAttribute("empresa");
//            sucursal = sucursalDAO.buscar(new Sucursal(idSucursal));
//            //sucursalDAO.buscar(sucursal);
//            sucursalDAO.eliminar(sucursal);
//            modelAndView.clear();
//            modelAndView.setViewName("MantenedorAdministrador");
//            lis = sucursalDAO.listar();
//            request.setAttribute("listEmpresa", lis);
//        } catch (Exception e) {
//            System.err.println("Error : " + e.getMessage() + "  ++++++++++++++++++++++++++++++++++++++++++++++++++");
//            modelAndView.setViewName("MantenedorAdministrador");
//        }
//        System.out.println("*******************RETORNOOOOOOO------------------------------------------------------------------");
//        return new ModelAndView("MantenedorAdministrador", modelAndView.getModel());
//    }
//
//    private ModelAndView btnActualizar(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView, List<FileItem> items) throws IOException, Exception {
//        HttpSession session = request.getSession();
//        usuario = (Usuario) session.getAttribute("usuario");
//        rutaFiles = rutaDefaulRaiz + rutaForDBDefaul + usuario.getIdUsuario() + "-" + usuario.getUsername();
//        rutaForDB = rutaForDBDefaul + usuario.getIdUsuario() + "-" + usuario.getUsername() + "\\";
//        File file = new File(rutaFiles);
//        if (!file.exists()) {
//            System.err.println("Directory is not created!");
//            if (file.mkdir()) {
//                System.err.println("Directory is created!");
//            } else {
//                System.err.println("Failed to create directory!");
//            }
//        }
//        String intputNombreSucursal = "", intputDireccion = "";
//        try {
//            int intputTelefono = 0;
//            Integer idSucursal = Integer.parseInt(request.getParameter("idSucursal"));
//            System.err.println("+++++++ " + idSucursal + " *******************************************************************************************");
//            for (FileItem item : items) {
//                System.err.println("+++++++ " + item.getFieldName() + " *******************************************************************************************");
//                if (item.isFormField()) {
//                    switch (item.getFieldName()) {
//                        case "intputNombreSucursal":
//                            intputNombreSucursal = item.getString();
//                            System.err.println("intputNombreSucursal : " + intputNombreSucursal);
//                            break;
//                        case "intputDireccion":
//                            intputDireccion = item.getString();
//                            System.err.println("intputDireccion : " + intputDireccion);
//                            break;
//                        case "intputTelefono":
//                            intputTelefono = Integer.parseInt(item.getString());
//                            System.err.println("intputTelefono : " + intputTelefono);
//                            break;
//                    }
//                } else {
//                    if (item.getFieldName().equals("inputImagen")) {
//                        System.err.println("+++++++ item.getFieldName().equals(\"inputImagen\")");
//                        System.err.println("____----_- " + rutaFiles);
//
//                    }
//                    System.err.println("+++++++ itfgdf");
//                    String fieldname = item.getFieldName();
//                    String conte = item.getContentType();
//                    String filename = FilenameUtils.getName(item.getName());
//                    System.err.println("************fieldname : " + fieldname + " fieldvalue : " + filename + " conte : " + conte);
//                    InputStream filecontent = item.getInputStream();
//                    File f = new File(rutaFiles, item.getName());
//                    rutaForDB = rutaForDB + item.getName();
//                    System.out.println("Ruta 11 :  " + rutaFiles);
//                    System.out.println("Ruta 22 :  " + rutaForDB);
//                    item.write(f);
//                    Thread.sleep(2000);
//                }
//            }
//            sucursalDAO = new SucursalDAO();
//            empresa = (Empresa) session.getAttribute("empresa");
//            //Sucursal sucursal = new Sucursal(empresa, intputNombreSucursal, intputDireccion, intputTelefono, rutaForDB);
//            //Integer idSucursal = Integer.parseInt(request.getParameter("idSucursal"));
//            Sucursal sucursal = new Sucursal(idSucursal, empresa, intputNombreSucursal, intputDireccion, intputTelefono, rutaForDB);
//            sucursalDAO.modificar(sucursal);
//            List<Sucursal> lis = sucursalDAO.listar();
//            modelAndView.setViewName("MantenedorAdministrador");
//            if (lis != null) {
//                modelAndView.addObject("lis", lis);
//                request.setAttribute("listEmpresa", lis);
//            } else {
//                modelAndView.getModel().put("errorMensaje", "Datos incorectos");
//                modelAndView.setViewName("error");
//            }
//        } catch (Exception e) {
//            System.err.println("Error : " + e.getMessage() + "  ++++++++++++++++++++++++++++++++++++++++++++++++++");
//            modelAndView.setViewName("MantenedorAdministrador");
//        }
//        System.out.println("*******************RETORNOOOOOOO------------------------------------------------------------------");
//        return modelAndView;
//    }

}
