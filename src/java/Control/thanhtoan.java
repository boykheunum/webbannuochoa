/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.chiTietHoaDonModel;
import Model.hoaDonModel;
import Model.nguoiDungModel;
import Model.phieuGiamGiaModel;
import Model.sanphamModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.Set;
import java.util.TreeMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nguyen Tien Dat
 */
@WebServlet(name = "thanhtoan", urlPatterns = {"/thanhtoan"})
public class thanhtoan extends HttpServlet {

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
            String ngaymua = java.time.LocalDate.now().toString();
            int tongtien = Integer.parseInt(request.getParameter("tongGia"));
            // xu ly ma giam gia
            String magiamgia = request.getParameter("magiamgia");
            if (magiamgia == "") {
                magiamgia = "0";
            } else {
                phieuGiamGiaModel pgg = new phieuGiamGiaModel();
                int searchMaGiamGia = CSDL.phieugiamgia.searchPhieuGiamGia(magiamgia, pgg);
                if (searchMaGiamGia == 1) {
                    int soluong = pgg.getSoluong();
                    soluong--;
                    int truMaGiamGia = CSDL.phieugiamgia.truSoluong(magiamgia, soluong);
                    if (truMaGiamGia != 1) {
                        out.print("-1");
                    }
                } else {
                    out.print("-1");
                }
            }
            HttpSession session = request.getSession();
            String usKhach = null;
            Cookie[] cookies = request.getCookies();
            for (Cookie c : cookies) {
                if (c.getName().equals("usKhach")) {
                    usKhach = c.getValue();
                }
            }
            //lay username khach hang
            nguoiDungModel nd = new nguoiDungModel();
            int kqSearchKH = CSDL.nguoidung.searchTenNguoiDung(nd, usKhach);
            int makh = 0;
            if (kqSearchKH == 1) {
                makh = nd.getMakh();
            } else {
                out.print("-1");
            }
            //nhap hoa don
            hoaDonModel hd = new hoaDonModel(makh, ngaymua, tongtien);
            int kqHoaDon = CSDL.hoadon.addHD(hd);
            if (kqHoaDon != 1) {
                out.print("-1");
            }
            int layMaHoaDonCuoiCung = CSDL.hoadon.layMahdCuoi(hd);
            int mahd = 0;
            if (layMaHoaDonCuoiCung == 1) {
                mahd = hd.getMahd();
                session.setAttribute("mahd", mahd);
            }
            //nhap chi tiet hoa don
            TreeMap<String, Integer> hoadon = (TreeMap<String, Integer>) session.getAttribute("cart");
            Set<String> ds = hoadon.keySet();
            float thanhtien = 0;
            for (String masp : ds) {
                sanphamModel sp = new sanphamModel();
                int searchSP = CSDL.SanPham.searchSP(sp, masp);
                if (searchSP == 1) {
                    String maloaisp = sp.getMaloaisp();
                    String tensp = sp.getTensp();
                    int soluongmua = hoadon.get(masp);
                    int soluong = sp.getSoluong();
                    soluong = soluong - soluongmua;
                    float giaban = sp.getGiaban();
                    thanhtien = giaban * soluongmua;
                    chiTietHoaDonModel cthd = new chiTietHoaDonModel(mahd, masp, soluongmua, giaban, thanhtien, magiamgia);
                    int kqChiTietHoaDon = CSDL.chitiethoadon.addCTHD(cthd);
                    if (kqChiTietHoaDon != 1) {
                        out.print("-1");
                    } else {
                        int truSoLuongSP = CSDL.SanPham.truSoLuongSP(masp, soluong);
                        if (truSoLuongSP != 1) {
                            out.print("-1");
                        }
                    }
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
