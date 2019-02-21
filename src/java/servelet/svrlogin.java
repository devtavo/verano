/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelet;

import be.perfilbe;
import be.usuariobe;
import br.usuariobr;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jamil
 */
public class svrlogin extends HttpServlet{
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
       HttpSession session = request.getSession(); 
        
         usuariobe usu = new usuariobe();
         usu.setNomusuario(request.getParameter("txtUsuario"));
         usu.setClaveusuario(request.getParameter("txtContra"));
         
         usuariobr usuario = new usuariobr();
         int res = usuario.validandousuario(usu);
            if (res==1){
             request.setAttribute("datos", "");
             
             List<perfilbe> listaperfiles = usuario.listarPerfiles(usu);
             
             if (listaperfiles!=null && listaperfiles.size()>0){
                 session.setAttribute("perfiles", listaperfiles);
             }
             else{
                 session.setAttribute("perfiles", null);
             }
             
             RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.html");
             rd.forward(request, response);
         }
         else{
             request.setAttribute("datos", "Loguin Incorrecto");
             RequestDispatcher rd = getServletContext().getRequestDispatcher("/loguin.jsp");
             rd.forward(request, response);
         }
            
            }
        }
    }
