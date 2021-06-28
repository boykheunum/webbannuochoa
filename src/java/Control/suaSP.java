/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import CSDL.tienich;
import Model.sanphamModel;
import com.oracle.webservices.internal.api.databinding.DatabindingModeFeature;
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
@WebServlet(name = "suaSP", urlPatterns = {"/suaSP"})
public class suaSP extends HttpServlet {

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
                    String masp = tienich.inputFile(listItem, "masp");
                    String maloaisp = tienich.inputFile(listItem, "maloaisp");
                    String tensp = tienich.inputFile(listItem, "tensp");
                    int soluong = Integer.parseInt(tienich.inputFile(listItem, "soluong"));
                    float gianhap = Float.parseFloat(tienich.inputFile(listItem, "gianhap"));
                    float giaban = Float.parseFloat(tienich.inputFile(listItem, "giaban"));
                    String mota = tienich.inputFile(listItem, "mota");

                    String anh = tienich.inputFile(listItem, "anh");
                    if (anh.equals(""))//nếu không có ảnh mới thì lấy tên ảnh hiện tại
                    {
                        anh = tienich.inputFile(listItem, "anhhientai");
                    }
                    sanphamModel sp = new sanphamModel(masp, maloaisp, tensp, soluong, gianhap, giaban, mota, anh);
                    int kq = CSDL.SanPham.editLoaiSP(sp);
                    if (kq > 0) {
                        response.sendRedirect("dsSP.jsp");
                    } else {
                        response.sendRedirect("admin500.jsp");
                    }
                } catch (Exception ex) {
                    Logger.getLogger(suaSP.class.getName()).log(Level.SEVERE, null, ex);
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
