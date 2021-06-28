<%-- 
    Document   : chitietloaiSP
    Created on : Apr 29, 2021, 3:52:50 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.nhanVienModel"%>
<%@page import="java.util.Vector"%>
<%@page import="Model.loaispModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


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
                <li class="breadcrumb-item"><a href="index.html">Loại Sản Phẩm</a></li>
                <li class="breadcrumb-item active">Danh Sách</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <button class="btn btn-dark" style="margin-bottom: 2%">
                        <a href="themloaiSP.jsp" style="text-decoration: none; color:white" >Thêm mới</a>
                    </button>
                    <table class="table">
                        <tr>
                            <th>
                                <text>Mã Loại Sản Phẩm</text>
                            <th>
                                <text>Tên Loại Sản Phẩm</text>
                            </th>
                            <th></th>
                        </tr>
                        <%                            Vector<loaispModel> ds = new Vector<loaispModel>();
                            int kq = CSDL.LoaiSP.listLoaiSP(ds);
                            if (kq == 1) {
                                for (loaispModel lsp : ds) {
                        %>
                        <tr>
                            <td>
                                <text>  <%=lsp.getMaloaisp()%></text>
                            </td>
                            <td>
                                <text> <%=lsp.getTenloaisp()%></text>
                            </td>
                            <td>
                                <a href="sualoaiSP.jsp?maloaisp=<%=lsp.getMaloaisp()%>">Edit</a>|
                                <a href="chitietloaiSP.jsp?maloaisp=<%=lsp.getMaloaisp()%>">Details</a>|
                                <a href="xoaloaiSP.jsp?maloaisp=<%=lsp.getMaloaisp()%>">Delete</a>
                            </td>
                        </tr>
                        <%}%>

                    </table>


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
<%}%>

