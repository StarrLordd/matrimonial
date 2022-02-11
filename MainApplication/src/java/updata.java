/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import test.DBManager;

/**
 *
 * @author Amit
 */
@MultipartConfig
@WebServlet(urlPatterns = {"/updata"})
public class updata extends HttpServlet {

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
            out.println("<title>Servlet updata</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updata at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        response.setContentType("text/html; chartset=UTF-8");
        PrintWriter pr=response.getWriter();
         String name, gen, fatname, quali, occu, height, mt, number, dob, foccu, city, desig, reli, u, nationality, email;
       name=request.getParameter("name");
       gen=request.getParameter("gen");
       fatname=request.getParameter("fn");
       quali=request.getParameter("ql");
       occu=request.getParameter("occu");
       height=request.getParameter("ht");
       mt=request.getParameter("mt");
       number=request.getParameter("num");
       dob=request.getParameter("dob");
       foccu=request.getParameter("fo");
       city=request.getParameter("city");
       desig=request.getParameter("dg");
       reli=request.getParameter("rl");
       nationality=request.getParameter("nlty");
       email=request.getParameter("em");
       
          Part pic=request.getPart("pic");
        u=pic.getSubmittedFileName();
        InputStream content=pic.getInputStream();
       DBManager db=new DBManager();
       
       String cmd="update reg set Name='"+name+"', FName='"+fatname+"', Gender='"+gen+"', Quali='"+quali+"', Contact='"+number+"', Occupation='"+occu+"', Designation='"+desig+"', FOccupation='"+foccu+"', Height='"+height+"', Nationality='"+nationality+"', Rel='"+reli+"', MToungh='"+mt+"',DOB='"+dob+"', Address='"+city+"', Photo='"+u+"' where Email='"+email+"'";
    
     boolean w=db.ExecuteInserUpdateDelete(cmd);
   
       if(w==true)
       {
          
           
            File fl=new File(request.getRealPath("/AdminZone/img/"),u);
           Files.copy(content,fl.toPath());
          pr.print("<script>alert('FILE UPDATED SUCCESSFULLY');window.location.href='UserZone/upp.jsp'</script>");
       }
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
