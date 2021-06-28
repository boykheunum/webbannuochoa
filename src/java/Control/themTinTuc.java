/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import CSDL.tienich;
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
@WebServlet(name = "themTinTuc", urlPatterns = {"/themTinTuc"})
public class themTinTuc extends HttpServlet {

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
            String fileImage = "imageSP\\";
            String checkEnctype = request.getContentType();
            if (checkEnctype.contains("multipart/form-data")) {
                List fieldItem = tienich.Uploads(request, fileImage);
                try {
                    String tieude = tienich.inputFile(fieldItem, "tieude");
                    String noidung = tienich.inputFile(fieldItem, "noidung");
                    String ngaydang = tienich.inputFile(fieldItem, "ngaydang");
                    String anh = tienich.inputFile(fieldItem, "anh");
                    tintucModel tt = new tintucModel(0, anh, ngaydang, tieude, noidung);
                    int kq = CSDL.tintuc.addTintuc(tt);
                    if (kq == 1) {
                        response.sendRedirect("dsTT.jsp");
                    }
                     else {
                response.sendRedirect("admin500.jsp");
            }
                } catch (Exception ex) {
                    Logger.getLogger(themSP.class.getName()).log(Level.SEVERE, null, ex);
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
