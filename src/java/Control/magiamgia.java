/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.phieuGiamGiaModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nguyen Tien Dat
 */
@WebServlet(name = "magiamgia", urlPatterns = {"/magiamgia"})
public class magiamgia extends HttpServlet {

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
            String magiamgia = request.getParameter("magiamgia");
            Float tongGia = Float.parseFloat(request.getParameter("tongGia"));
            if (magiamgia != null) {

                int checkmagiamgia = CSDL.phieugiamgia.checkPhieuGiamGia(magiamgia);
                if (checkmagiamgia == 1) {
                    phieuGiamGiaModel pgg = new phieuGiamGiaModel();
                    int kq = CSDL.phieugiamgia.searchPhieuGiamGia(magiamgia, pgg);
                    if (kq == 1) {
                        String ngaysudung = LocalDate.now().toString();
                        int checkNgaySuDung = CSDL.phieugiamgia.checkPhieuThoiGianSuDung(ngaysudung, ngaysudung, magiamgia);
                        boolean checkLoaiGiamGia = pgg.isKieugiamgia();
                        float checkDieuKien = pgg.getDieukien();
                        if (checkNgaySuDung == 1) {
                            if (checkDieuKien <= tongGia) {
                                if (checkLoaiGiamGia == true) {
                                    float pt = pgg.getGiatri();
                                    tongGia = tongGia / pgg.getGiatri();
                                    out.print(tongGia);
                                } else {
                                    float tm = pgg.getGiatri();
                                    tongGia = tongGia - pgg.getGiatri();
                                    out.print(tongGia);
                                }
                            } else {
                                out.print("-2");
                            }
                        } else {
                            out.print("-1");
                        }
                    }
                } else {
                    out.print("-1");
                }
            } else {
                out.print(tongGia);
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
