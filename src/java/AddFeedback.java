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

/**
 *
 * @author mobai
 */
public class AddFeedback extends HttpServlet {

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
            out.println("<title>Servlet AddFeedback</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddFeedback at " + request.getContextPath() + "</h1>");
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

        String name = request.getParameter("name");
        String country = request.getParameter("country");
        String phone = request.getParameter("Phone");
        String email = request.getParameter("Email");
        String Subject = request.getParameter("Subject");
        String Type = request.getParameter("Type");
        String Message = request.getParameter("Message");

        final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/repairshop";

        //  Database credentials
        final String USER = "root";
        final String PASS = "";

        try {
            //  Database credentials
            Class.forName(JDBC_DRIVER);
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            String sql = "insert into feedback(name,COUNTRY,phone,email,subject,type,MESSAGE) values(?,?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, country);
            stmt.setString(3, phone);
            stmt.setString(4, email);
            stmt.setString(5, Subject);
            stmt.setString(6, Type);
            stmt.setString(7, Message);

            int k = stmt.executeUpdate();

            System.out.println(k);
            if (k == 1) {
                //insert a record success
                
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
        out.println("");
        out.println(" <br> <p class=\"a1 ads1 co \"> feedback added Successfully </p>");
        out.println(" ");
        out.println("</body></html>");
            } else // i.e.  k = 0
            {
                //insert a record error
                out.println("<p class=\"error\"> There was an error in adding the data! Try again. </p>");
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddFeedback.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AddFeedback.class.getName()).log(Level.SEVERE, null, ex);
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
