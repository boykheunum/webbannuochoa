/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.phieuGiamGiaModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nguyen Tien Dat
 */
@WebServlet(name = "suaPGG", urlPatterns = {"/suaPGG"})
public class suaPGG extends HttpServlet {

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
            boolean kieugiamgia = false;
            String idmagiamgia = request.getParameter("idmagiamgia");
            String ngaybatdau = request.getParameter("ngaybatdau");
            String ngayketthuc = request.getParameter("ngayketthuc");
            if(Integer.parseInt(request.getParameter("kieugiamgia"))==1){
                kieugiamgia=true;
            }else{
                kieugiamgia=false;
            }
            int soluong = Integer.parseInt(request.getParameter("soluong"));
            int giatri = Integer.parseInt(request.getParameter("giatri"));
            int dieukien = Integer.parseInt(request.getParameter("dieukien"));
            phieuGiamGiaModel pgg = new phieuGiamGiaModel(idmagiamgia, kieugiamgia, ngaybatdau, ngayketthuc, soluong, giatri, dieukien);
            int kq = CSDL.phieugiamgia.editPhieuGiamGia(idmagiamgia, pgg);
            if(kq==1){
                response.sendRedirect("dsPGG.jsp");
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
