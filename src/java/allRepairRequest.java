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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mobai
 */
public class allRepairRequest extends HttpServlet {

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
            out.println("<title>Servlet allRepairRequest</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet allRepairRequest at " + request.getContextPath() + "</h1>");
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
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession();

        String email = (String) session.getAttribute("email");

        if (email != null){ 
        
        
        try {
            final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
            final String DB_URL = "jdbc:mysql://localhost:3306/repairshop";

            //  Database credentials
            final String USER = "root";
            final String PASS = "";

            Class.forName(JDBC_DRIVER);
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            String sql = "select * from repair";

            PreparedStatement stmt = conn.prepareStatement(sql);
            
            out.print("<style> "
                    + "body{background-color:#112633;"
                    + "}"
                    + "  tr:first-child{"
                    + "background-color:#FB8500;"
                    + "color:white;"
                    + "}"
                    + "table{"
                    + "text-align:center;"
                    + "}"
                    + " th, td {\n"
                    + "    border: 1px solid #FB8500; color:white"
                    + "}"
                    + "</style>");
            
                  out.println("<html><head>");
        out.println("  <link rel=\"stylesheet\" href=\"css/style.css\">");
        out.println("<title>Logout</title></head>");
        out.println("  <header class=\"header\">");
        out.println("            <img src=\"./image/Logo/logo_transparent.png\" alt=\"logo\" class=\"logo\">\n"
                + "");
        out.println("  <div class=\"login_sec\"> "
                + ""
                + "        <a class=\"btn log\" href=\"logout\">logout</a>\n" +
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
            ResultSet rs = stmt.executeQuery(sql);
            out.print("<table> <tr> "
                    + "<th>ID </th>"
                    + "<th> Computer_Owner</th>"
                    + "<th> Computer_Serial_Number</th>"
                    + "<th>Type </th>"
                    + "<th> Model</th>"
                    + "<th> Miles</th>"
                    + "<th> HardDisk_GB</th>"
                    + "<th>Problems </th>"
                    + "<th>  Repair_Cost</th>"
                    + "<th> Repair_Status</th>"
                    + "<th> Repair_Finish_DateTime</th>"
                    + "<th> Repair_Delivery_DateTime</th>"
                    + "  </tr>");
            while (rs.next()) {
                out.print("<tr><td>");
                out.print(rs.getString("id"));
                out.print("</td>");
                out.print("<td>" + rs.getString("Computer_Owner") + "</td>");
                out.print("<td>" + rs.getString("Computer_Serial_Number") + "</td>");
                out.print("<td>" + rs.getString("Type") + "</td>");
                out.print("<td>" + rs.getString("Model") + "</td>");
                out.print("<td>" + rs.getString("Memory_GB") + "</td>");
                out.print("<td>" + rs.getString("HardDisk_GB") + "</td>");
                out.print("<td>" + rs.getString("Problems") + "</td>");
                out.print("<td>" + rs.getString("Repair_Cost") + "</td>");
                out.print("<td>" + rs.getString("Repair_Status") + "</td>");

                out.print("<td>" + rs.getString("Repair_Finish_DateTime") + "</td>");
                out.print("<td>" + rs.getString("Repair_Delivery_DateTime") + "</td>");
                out.print("</tr>");

            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(allRepairRequest.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(allRepairRequest.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
        else {
                               response.sendRedirect("login.jsp");

        }
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
