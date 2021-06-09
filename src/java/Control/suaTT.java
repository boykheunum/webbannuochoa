/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import CSDL.tienich;
import Model.sanphamModel;
import Model.tintucModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nguyen Tien Dat
 */
@WebServlet(name = "suaTT", urlPatterns = {"/suaTT"})
public class suaTT extends HttpServlet {

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
            response.setContentType("text/html; charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
            String checkEntype = request.getContentType();
            if (checkEntype.contains("multipart/form-data")) {
                List listItem = tienich.Uploads(request, "imageSP");
                try {
                    int id = Integer.parseInt(tienich.inputFile(listItem, "id"));
                    String tieude = tienich.inputFile(listItem, "tieude");
                    String noidung = tienich.inputFile(listItem, "noidung");
                    String ngaydang = tienich.inputFile(listItem, "ngaydang");
                    String anh = tienich.inputFile(listItem, "anh");
                    tintucModel tt = new tintucModel(id, anh, ngaydang, tieude, noidung);
                    int kq = CSDL.tintuc.editTinTuc(id, tt);
                    if (kq > 0) {
                        response.sendRedirect("dsTT.jsp");
                    }
                } catch (Exception ex) {
                    Logger.getLogger(suaTT.class.getName()).log(Level.SEVERE, null, ex);
                }

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