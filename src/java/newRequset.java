/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
public class newRequset extends HttpServlet {

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
            out.println("<title>Servlet newRequset</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet newRequset at " + request.getContextPath() + "</h1>");
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
        String name = request.getParameter("computerOwner");

        String ComputerSerialNumber = request.getParameter("ComputerSerialNumber");

        String type = request.getParameter("type");

        String model = request.getParameter("model");
        String memGB = request.getParameter("memGB");
        String hardDiskGB = request.getParameter("hardDiskGB");
        String Problems = request.getParameter("Problems");
        String RepairCost = request.getParameter("RepairCost");
        String Repair_Status = request.getParameter("Repair_Status");
        String RepairFinishDateTime = request.getParameter("RepairFinishDateTime");
        String RepairDeliveryDateTime = request.getParameter("RepairDeliveryDateTime");


        final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/repairshop";

        //  Database credentials
        final String USER = "root";
        final String PASS = "";

        try {
            Class.forName(JDBC_DRIVER);
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            String sql = "insert into repair(Computer_Owner,Computer_Serial_Number,Type,Model,Memory_GB,HardDisk_GB,Problems,Repair_Cost,Repair_Status,Repair_Finish_DateTime,Repair_Delivery_DateTime)"
                    + " values(?,?,?,?,?,?,?,?,?,?,?)";

            java.util.Date dt = new java.util.Date();

            java.text.SimpleDateFormat sdf
                    = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            String currentTime = sdf.format(dt);

            int x1 = Integer.parseInt(memGB);
            int x2 = Integer.parseInt(hardDiskGB);
            float y = Float.parseFloat(RepairCost);
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, ComputerSerialNumber);
            stmt.setString(3, type);
            stmt.setString(4, model);

            stmt.setInt(5, x1);
            stmt.setInt(6, x2);
            stmt.setString(7, Problems);
            stmt.setFloat(8, y);
            stmt.setString(9, Repair_Status);
            stmt.setString(10, RepairFinishDateTime);
            stmt.setString(11, RepairDeliveryDateTime);

            int k = stmt.executeUpdate();

            if (k == 1) {
              
                 out.println("<html><head>");
        out.println("  <link rel=\"stylesheet\" href=\"css/style.css\">");
        out.println("<title>Logout</title></head>");
        out.println("  <header class=\"header\">");
        out.println("            <img src=\"./image/Logo/logo_transparent.png\" alt=\"logo\" class=\"logo\">\n"
                + "");
        out.println(""
                + "  <div class=\"login_sec\"> "
                + ""+        
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
        out.println("<p class=\"ads1 co \"> successfully add data </p>");
        out.println(" ");
        out.println("</body></html>");
                
                
                
                
                
            } else // i.e.  k = 0
            {
                //insert a record error
                out.println("<p class=\"error\"> There was an error in adding the data! Try again. </p>");
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("An exception occurred while inserting data in Table. Exception is :: "
                    + ex);
            Logger.getLogger(newRequset.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(newRequset.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
