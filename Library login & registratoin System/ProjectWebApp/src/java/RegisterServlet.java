/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import app.ConnectionProvider;
import java.sql.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;



/**
 *
 * @author arlow
 */
@WebServlet(urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
           
            out.println("</head>");
            out.println("<body>");
            
            out.println("</body>");
            out.println("</html>");
         
 
// Gets the input from the users
 String id = request.getParameter("userId");
 String Username = request.getParameter("username");
 String Name = request.getParameter("name");
 String Password = request.getParameter("password");
 String Surname = request.getParameter("surname");
 String Phone = request.getParameter("phone");
 String Email = request.getParameter("email");

ConnectionProvider p = new ConnectionProvider();
if(p.validateRegistration(id, Username, Email) == false) {
             p.add(id, Username, Name, Surname, Password, Phone, Email);
             // Displays a error message if the Registration is successful
            out.println("<h1> You have been registered </h1>");
            out.println("<script type='text/javascript'>");
            out.println("setTimeout(function() { window.location.href = 'login.jsp'; }, 2000);");
            out.println("</script>");
          
         }else{
            // Displays a error message if the Registration is unsuccessful
         out.println("<h1> Unsuccessful </h1>");
         out.println("<h1>There are someone already registered with those Details </h1>");
         out.println("<h1>Please be sure that your : Email, UserId, Username is unique </h1>");
         out.println("<script type='text/javascript'>");
         out.println("setTimeout(function() { window.location.href = 'Register.jsp'; }, 4000);");
         out.println("</script>");
       
         

         
         
         }

     
        
       
       

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
