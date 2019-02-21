/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelet;

import be.personabe;
import br.personabr;
import dao.personadao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gustavo-pc
 */
public class svrpersona extends HttpServlet {

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
            String accion = request.getParameter("accion");
            if(accion.equals("insertar")){
                this.RegistrarPersona(request, response);             
            }
            

            
            
        }
    }
   
  private void RegistrarPersona(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        personabe p = new personabe();
              
        p.setNombre(request.getParameter("nombre"));
        p.setDomicilio(request.getParameter("domicilio"));
        p.setTelefono(request.getParameter("tel"));
        p.setCelular(request.getParameter("cel"));
        p.setEmail(request.getParameter("mail"));
        p.setIddepartamento(request.getParameter("seldpto"));
        p.setIdprovincia(request.getParameter("selprov"));
        p.setIddistrito(request.getParameter("seldist"));
        p.setIdtipodocumento(request.getParameter("seldni"));
        p.setDescripcion(request.getParameter("descripcion"));
        p.setArchivo(request.getParameter("customFileLang"));
        p.setDni(request.getParameter("dni"));
        p.setFecha(request.getParameter("fecha"));
        p.setFuncionario(request.getParameter("funcionario"));
            
     
      personabr pbr= new personabr();
       int resp= pbr.registrarpersona(p);

       if(resp==1){
            response.sendRedirect("index.html"); 
        }else{
            response.sendRedirect("registro.jsp"); 
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     processRequest(request, response);
    
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
