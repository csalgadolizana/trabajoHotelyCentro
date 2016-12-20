/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Cristopher
 */
@Controller
public class DefaultController {

    @RequestMapping
    public void unmappedRequest(HttpServletResponse response, HttpServletRequest request) throws IOException {
        response.setStatus(HttpServletResponse.SC_NOT_FOUND);
        response.getWriter().write("<div><center>");
        response.getWriter().write("<h1>PAGINA NO ENCONTRADA</h1>");
        response.getWriter().write("<h4>Contacte al Administrador </h4>");
        response.getWriter().write("<h5>NO DISPONIBLE : " + request.getRequestURI() + "</h5>");
        response.getWriter().write("</center></div>");
    }
}
