/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "cart", urlPatterns = {"/cart"})
public class cart extends HttpServlet {

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
            HttpSession session = request.getSession();
            String masp = request.getParameter("masp");
            String check = (request.getParameter("soluongmua"));
            int soluong;
            if (check != null) {
                soluong = Integer.parseInt(check);
            } else {
                soluong = 0;
            }
            TreeMap<String, Integer> cart = (TreeMap<String, Integer>) session.getAttribute("cart");
            if (cart == null) {
                cart = new TreeMap<String, Integer>();
            }
            if (cart.containsKey(masp) == false) {
                cart.put(masp, soluong);
            } else {//sản phẩm đã có trong giỏ hàng
//                String tang1 = request.getParameter("soluongmua1");
//
//                int soluong1 = 0;
//                if (tang1 == null) {
//                    soluong1 = 0;
//                } else if (tang1.equals("1")) {
//                    soluong1 = 1;
//                } else {
//                    soluong1 = -1;
//                }
//                int soluong2 = cart.get(masp);//lấy số lượng hiện tại
//                int soluong3 = soluong2 + soluong1;
//                soluong = soluong + soluong3;
                soluong = cart.get(masp);
                cart.put(masp, soluong);
            }
            session.setAttribute("cart", cart);//cập nhật giỏ hàng mới vào sesion
            response.sendRedirect("giohang.jsp");
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
