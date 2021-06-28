<%-- 
    Document   : dsSP
    Created on : Jun 25, 2021, 9:12:25 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.nhanVienModel"%>
<%@page import="Model.sanphamModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String usNV = null;
    Cookie[] cookies = request.getCookies();
    for (Cookie c : cookies) {
        if (c.getName().equals("usNV")) {
            usNV = c.getValue();
        }
    }
    nhanVienModel nv = new nhanVienModel();
    int kqSearchCV = CSDL.nhanVien.searchCVNhanVien(nv, usNV);
    if (kqSearchCV == 1) {
        String macv = nv.getMacv();
        if (macv.contains("1") == true) {
%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
<%
} else {
%>
<jsp:include page="layoutAdmin/menuNV.jsp" />
<%
        }
    }

%>
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="menuAdmin.jsp">Sản Phẩm</a></li>
                <li class="breadcrumb-item active">Danh Sách</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <button class="btn btn-dark" style="margin-bottom: 2%">
                        <a href="themSP.jsp" style="text-decoration: none; color:white" >Thêm mới</a>
                    </button>
                    <%
                        Vector<sanphamModel> ds = new Vector<sanphamModel>();
                        int kq = CSDL.SanPham.listSP(ds);
                        if (kq == 1) {
                    %>
                    <table class="table">
                        <tr>
                            <th>
                                Mã Sản Phẩm
                            </th>
                            <th>
                                Mã Loại Sản Phẩm
                            </th>
                            <th>
                                <text>Tên Sản Phẩm</text>
                            </th>
                            <th>
                                <text>Số Lượng</text>
                            </th>
                            <th>
                                <text>Giá Nhập</text>
                            </th>
                            <th>
                                <text>Giá Bán</text>
                            </th>
                            <th>
                                <text>Mô tả</text>
                            </th>

                            <th>
                                <text>Ảnh</text>
                            </th>

                            <th>
                                <text>Tên Loại Sản Phẩm</text>
                            </th>
                            <th></th>
                        </tr>
                        <%
                            for (sanphamModel sp : ds) {
                        %>
                        <tr>
                            <td>
                                <text> <%=sp.getMasp()%></text>
                            </td>
                            <td>
                                <text> <%=sp.getMaloaisp()%></text>
                            </td>
                            <td>
                                <text><%=sp.getTensp()%></text>
                            </td>
                            <td>
                                <text><%=sp.getSoluong()%></text>
                            </td>
                            <td>
                                <text> <%=sp.getGianhap()%></text>
                            </td>
                            <td>
                                <text> <%=sp.getGiaban()%></text>
                            </td>
                            <td>
                                <text> <%=sp.getMota()%></text>
                            </td>
                            <td>
                                <%
                                    String checkImage = "noImage.png";
                                    if (sp.getHinhanh().equals("") != true) {
                                        checkImage = sp.getHinhanh();
                                    }
                                %>
                                <img width='348px' height="348px" id="formFileSm" src="imageSP/<%=checkImage%>"></a>
                            </td>
                            <td>
                                <a href="suaSP.jsp?masp=<%=sp.getMasp()%>">Edit</a>|
                                <a href="chitietSP.jsp?masp=<%=sp.getMasp()%>">Details</a>|
                                <a href="xoaSP.jsp?masp=<%=sp.getMasp()%>">Delete</a>
                            </td>
                        </tr>
                        <%}%>
                    </table>
                    <%}%>

                </div>
            </div>
        </div>
    </main>

    <footer class="py-4 bg-light mt-auto">
        <div class="container-fluid">
            <div class="d-flex align-items-center justify-content-between small">
                <div class="text-muted">Copyright &copy; Your Website 2020</div>
                <div>
                    <a href="#">Privacy Policy</a>
                    &middot;
                    <a href="#">Terms &amp; Conditions</a>
                </div>
            </div>
        </div>
    </footer>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="content/js/scripts.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
<script src="content/assets/demo/datatables-demo.js"></script>
</body>
</html>
