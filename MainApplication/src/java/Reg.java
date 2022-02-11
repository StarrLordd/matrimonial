/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//import java.io.File;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
//import java.nio.file.Files;
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
 * @author Amit Tripathi
 */
@MultipartConfig
@WebServlet(urlPatterns = {"/Reg"})
public class Reg extends HttpServlet {

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
            out.println("<title>Servlet Reg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Reg at " + request.getContextPath() + "</h1>");
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
        try
        {
         String a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v;
      a=request.getParameter("name");
      b=request.getParameter("fname");
      c=request.getParameter("gen");
      d=request.getParameter("qual");
      e=request.getParameter("email");
      f=request.getParameter("mob");
      g=request.getParameter("occu");
      h=request.getParameter("desig");
      i=request.getParameter("foccu");
      j=request.getParameter("height");
      k=request.getParameter("nat");
      l=request.getParameter("rel");
      m=request.getParameter("mt");
      n=request.getParameter("dob");
      p=request.getParameter("add");
      q=request.getParameter("pass");  
      
      r=request.getParameter("cpass");
      s=request.getParameter("cap");
      t=request.getParameter("captcha");
       
        Part pic=request.getPart("pic");
        u=pic.getSubmittedFileName();
        InputStream content=pic.getInputStream();
       DBManager db=new DBManager();
       String en="insert into reg(Name,Fname,Gender,Quali,Email,Contact,Occupation,Designation,FOccupation,Height,Nationality,Rel,MToungh,DOB,photo,Address,Date)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"','"+n+"','"+u+"','"+p+"',curdate())";
     
      boolean w=db.ExecuteInserUpdateDelete(en);
   
       if(w==true)
       {
          
           String sent="insert into login(Email,Password)values('"+e+"','"+q+"')";
           db.ExecuteInserUpdateDelete(sent);
            File fl=new File(request.getRealPath("/AdminZone/img/"),u);
           Files.copy(content,fl.toPath());
          pr.print("<script>alert('FILE UPLOADED SUCCESSFULLY');window.location.href='index.jsp'</script>");
       }
       else
       {
           pr.print("Error");
       }
        }
       catch(Exception ex)
       {
           pr.print(ex);
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
