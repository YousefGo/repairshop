/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.MessageDigest;
import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLIntegrityConstraintViolationException;

/**
 *
 * @author mobai
 */
public class register extends HttpServlet {

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
            out.println("<title>Servlet register</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
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
        PrintWriter out = response.getWriter();
        String name = request.getParameter("fullName");

        String emmailAdd1 = request.getParameter("emmailAdd1");

        String phone1 = request.getParameter("phone1");

        String password1 = request.getParameter("password1");

        final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/repairshop";

        //  Database credentials
        final String USER = "root";
        final String PASS = "";

        try {
            Class.forName(JDBC_DRIVER);
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            String sql = "insert into user(email,username,phone,password,create_at) values(?,?,?,?,?)";

            java.util.Date dt = new java.util.Date();

            java.text.SimpleDateFormat sdf
                    = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            String currentTime = sdf.format(dt);

            PreparedStatement stmt = conn.prepareStatement(sql);
         String hashed_passwd = md5(password1);

            stmt.setString(1, emmailAdd1);
            stmt.setString(2, name );
            stmt.setString(3, phone1);
            stmt.setString(4,hashed_passwd );
            stmt.setString(5, currentTime);

            try{
           int k = stmt.executeUpdate();
                
            System.out.println(k);
            if (k == 1) {
             out.println("<html><head>");
        out.println("  <link rel=\"stylesheet\" href=\"css/style.css\">");
        out.println("<title>Logout</title></head>");
        out.println("  <header class=\"header\">");
        out.println("            <img src=\"./image/Logo/logo_transparent.png\" alt=\"logo\" class=\"logo\">\n"
                + "");
        out.println("  <div class=\"login_sec\"> "
                + ""
                + "        <a class=\"btn log\" href=\"login.jsp\">login</a>\n" +
"</div>");
        out.println("    <nav class=\"nav\">\n"
                + "        <input type=\"checkbox\" id=\"check\">\n"
                + "        <label for=\"check\" class=\"checkbtn\">\n"
                + "          <i class=\"fas fa-bars\"></i>\n"
                + "        </label>\n"
                + "        <ul class=\"sa\">\n"
                + "            \n"
                + "            \n"
                + "            \n"
                + "            <li><a href=\"index.jsp\">Home</a></li>\n"
                + "\n"
                + "            <li><a href=\"RepairRequest.jsp\">Request Now</a></li>\n"
                + "\n"
                + "            <li><a href=\"allRepairRequest\">All Repair </a></li>\n"
                + "\n"
                + "            <li><a href=\"feedback.jsp\">feedback</a></li>\n"
                + "\n"
                + "            \n"
                + "            \n"
                + "        </ul>\n"
                + "    </nav>");
        out.println("<body>");
        out.println("<p class=\"ads1 co \"> successfully registered </p>");
        out.println(" ");
        out.println("</body></html>");
            } else 
            {
              
            }
            }
            catch (SQLIntegrityConstraintViolationException ex){
              out.println("<html><head>");
        out.println("  <link rel=\"stylesheet\" href=\"css/style.css\">");
        out.println("<title>regsiter</title></head>");
        out.println("  <header class=\"header\">");
        out.println("            <img src=\"./image/Logo/logo_transparent.png\" alt=\"logo\" class=\"logo\">\n"
                + "");
        out.println("  <div class=\"login_sec\"> "
                + ""
                + "        <a class=\"btn log\" href=\"login.jsp\">login</a>\n" +
"</div>");
        out.println("    <nav class=\"nav\">\n"
                + "        <input type=\"checkbox\" id=\"check\">\n"
                + "        <label for=\"check\" class=\"checkbtn\">\n"
                + "          <i class=\"fas fa-bars\"></i>\n"
                + "        </label>\n"
                + "        <ul class=\"sa\">\n"
                + "            \n"
                + "            \n"
                + "            \n"
                + "            <li><a href=\"index.jsp\">Home</a></li>\n"
                + "\n"
                + "            <li><a href=\"RepairRequest.jsp\">Request Now</a></li>\n"
                + "\n"
                + "            <li><a href=\"allRepairRequest\">All Repair </a></li>\n"
                + "\n"
                + "            <li><a href=\"feedback.jsp\">feedback</a></li>\n"
                + "\n"
                + "            \n"
                + "            \n"
                + "        </ul>\n"
                + "    </nav>");
        out.println("<body>");
        out.println("");
        out.println("<p class=\"ads1\">email already exist  <a href=\"register.jsp\" class=\"co\" center ads1 a1 \"> register again </a></p>");
        out.println(" ");
        out.println("</body></html>");
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("An exception occurred while inserting data in Table. Exception is :: "
                    + ex);
            Logger.getLogger(newRequset.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(newRequset.class.getName()).log(Level.SEVERE, null, ex);
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

    public static String md5 (String input)
 {
String md5 = null;
if(null == input) return null;
try {
 //Create MessageDigest object for MD5
 MessageDigest digest = MessageDigest.getInstance("MD5");
 //Update input string in message digest
 digest.update(input.getBytes(), 0, input.length());
 //Converts message digest value in base 16 (hex)
 md5 = new BigInteger(1, digest.digest()).toString(16);
} catch (NoSuchAlgorithmException e) {
e.printStackTrace();
}
return md5;
 }
}


