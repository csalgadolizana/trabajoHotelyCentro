/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ClienteDAO;
import DAO.EjecutivoDAO;
import DAO.EmpresaDAO;
import DAO.HabitacionDAO;
import DAO.ReservacionDAO;
import DAO.SucursalDAO;
import DAO.UsuarioDAO;
import Entity.Cliente;
import Entity.Ejecutivo;
import Entity.Empresa;
import Entity.Habitacion;
import Entity.Reservacion;
import Entity.Sucursal;
import Entity.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.core.HttpHeaders;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Cristopher
 */
@Controller
public class ControllerIndex {

    //usuario
    private Usuario usuario;
    private UsuarioDAO usuarioDAO;
    //ejecutivo
    private EjecutivoDAO ejecutivoDAO;
    private Ejecutivo ejecutivo;
    //sucursal
    private Sucursal sucursal;
    private EmpresaDAO empresaDAO;
    //empresa
    private SucursalDAO sucursalDAO;
    private Empresa empresa;
    //Habitacion
    private Habitacion habitacion;
    private HabitacionDAO habitacionDAO;
    //Cliente
    private Cliente cliente;
    private ClienteDAO clienteDAO;
    //Cliente
    private Reservacion reservacion;
    private ReservacionDAO reservacionDAO;

    @RequestMapping(value = "/index.html", method = RequestMethod.POST)
    public ModelAndView iniciarSesion(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        switch (request.getParameter("iniciarSession")) {
            case "initRegistro":
                return initRegistrarse(request, response, modelAndView);
            case "iniCliente":
                return initSessionCliente(request, response, modelAndView);
            case "iniAdministrador":
                return initSessionEjecutivo(request, response, modelAndView);
        }
        modelAndView.setViewName("indexxx");
        return modelAndView;
    }

    @RequestMapping(value = "/Reservacion.html", method = RequestMethod.POST)
    public ModelAndView dahh(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
        HttpSession session = request.getSession();
        String acc = "";
        int idHab = 0;
        acc = request.getParameter("Accion");
        idHab = Integer.parseInt(request.getParameter("idHabitacion"));
        System.out.println("acc : " + acc + " idHab : " + idHab);
        reservacionDAO = new ReservacionDAO();
        usuario = (Usuario) session.getAttribute("usuario");
        try {
            cliente = clienteDAO.buscarPorUsuario(usuario);

            habitacionDAO = new HabitacionDAO();
            habitacion = habitacionDAO.buscar(new Habitacion(idHab));
            reservacionDAO.grabar(new Reservacion(cliente, habitacion, habitacion.getPrecioPorDia(), "PENDIENTE"));

            List<Reservacion> lisres = reservacionDAO.listar();
            List<Habitacion> lis = habitacionDAO.listar();
            modelAndView.addObject("listEmpresa", lis);
            modelAndView.addObject("misRes", lisres);
            modelAndView.setViewName("catalogoCliente");
        } catch (Exception e) {
            System.err.println("ERROR :" + e.getMessage());
            modelAndView.setViewName("index");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public ModelAndView iniciando(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            //session.invalidate();
            System.err.println("Dejo nulla la sesion");
            session.setAttribute("usuario", null);
        }
        modelAndView.getModel().put("men", request.getParameter("iniciarsession") + " vbjnvbj ");
        modelAndView.getModel().put("errorMensaje", null);
        modelAndView.setViewName("index");
        return modelAndView;
    }

    

    @RequestMapping(value = "/api.html", method = RequestMethod.GET)
    public void ApiRes(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) throws IOException {
        PrintWriter out = response.getWriter();

        reservacionDAO = new ReservacionDAO();
        List<Reservacion> lisres = reservacionDAO.listar();
        modelAndView.addObject("misRes", lisres);
        response.setContentType("application/json");
        JSONArray jsonarray = new JSONArray();
        for (Reservacion object : lisres) {
            JSONObject obj = new JSONObject();
            if (object != null) {
                obj.put("reservacion", object.getIdReservacion());
                obj.put("n° ", object.getHabitacion().getNumero());
                obj.put("res", object.getEstado());
                jsonarray.add(obj);
            }
        }
        out.println(jsonarray);
    }

    private ModelAndView initRegistrarse(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
        modelAndView.getModel().put("men", request.getParameter("iniciarSession") + " initRegistrarse ");
        if (request.getParameter("iniciarSession") != null) {
            modelAndView.setViewName("indexxx");
        } else {
            modelAndView.setViewName("error");
        }
        return modelAndView;
    }

    private ModelAndView initSessionCliente(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
        modelAndView.getModel().put("men", request.getParameter("iniciarSession") + " initSessionAdmin ");
        if (request.getParameter("iniciarSession") != null) {
            try {
                usuario = new Usuario(request.getParameter("username"), request.getParameter("password"));
                Object obj = (Object) usuario;
                usuarioDAO = new UsuarioDAO();
                clienteDAO = new ClienteDAO();
                //sucursalDAO = new SucursalDAO();
                //empresaDAO = new EmpresaDAO();
                usuario = usuarioDAO.buscar(usuario);
                cliente = clienteDAO.buscarPorUsuario(usuario);
                if (usuario != null) {
                    if (cliente != null) {

                        modelAndView.addObject("us", usuario);
                        HttpSession session = request.getSession();
                        session.setAttribute("empresa", empresa);
                        session.setAttribute("usuario", usuario);
                        habitacionDAO = new HabitacionDAO();
                        reservacionDAO = new ReservacionDAO();
                        List<Reservacion> lisres = reservacionDAO.listar();
                        modelAndView.addObject("misRes", lisres);

                        List<Habitacion> lis = habitacionDAO.listar();
                        if (lis != null) {
                            modelAndView.addObject("listEmpresa", lis);
                        }
                        modelAndView.setViewName("catalogoCliente");
                    } else {
                        return initSessionEjecutivo(request, response, modelAndView);
                    }
                } else {
                    modelAndView.getModel().put("errorMensaje", "Datos incorectos Del Cliente");
                    modelAndView.setViewName("index");
                }
            } catch (Exception e) {
                System.err.println("Error : " + e.getMessage() + "  ++++++++++++++++++++++++++++++++++++++++++++++++++");
            }
        } else {
            modelAndView.setViewName("error");
        }
        return modelAndView;
    }

    private ModelAndView initSessionEjecutivo(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {
        modelAndView.getModel().put("men", request.getParameter("iniciarSession") + " initSessionAdmin ");
        if (request.getParameter("iniciarSession") != null) {
            try {
                usuario = new Usuario(request.getParameter("correoAdmin"), request.getParameter("contraseAdmin"));
                Object obj = (Object) usuario;
                usuarioDAO = new UsuarioDAO();
                ejecutivoDAO = new EjecutivoDAO();
                sucursalDAO = new SucursalDAO();
                empresaDAO = new EmpresaDAO();
                usuario = usuarioDAO.buscar(usuario);
                if (usuario != null) {
                    modelAndView.addObject("us", usuario);
                    HttpSession session = request.getSession();
                    ejecutivo = ejecutivoDAO.buscarEjecutivo(usuario.getIdUsuario());
                    empresa = empresaDAO.buscar(ejecutivo.getEmpresa().getId());
                    session.setAttribute("empresa", empresa);
                    session.setAttribute("usuario", usuario);
                    habitacionDAO = new HabitacionDAO();
                    List<Habitacion> lis = habitacionDAO.listar();
                    if (lis != null) {
                        modelAndView.addObject("listEmpresa", lis);
                    }
                    modelAndView.setViewName("MantenedorAdministrador");
                } else {
                    modelAndView.getModel().put("errorMensaje", "Datos incorectos");
                    modelAndView.setViewName("index");
                }
            } catch (Exception e) {
                System.err.println("Error : " + e.getMessage() + "  ++++++++++++++++++++++++++++++++++++++++++++++++++");
                modelAndView.getModel().put("errorMensaje", "Datos incorectos");
                modelAndView.setViewName("index");
            }
        } else {
            modelAndView.setViewName("error");
        }
        return modelAndView;
    }

}
