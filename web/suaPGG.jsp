<%-- 
    Document   : suaPGG
    Created on : Jun 2, 2021, 8:42:26 AM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.phieuGiamGiaModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="layoutAdmin/menuAdmin.jsp" />

<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.html">Phiếu giảm giá</a></li>
<<<<<<< HEAD
                <li class="breadcrumb-item active">Sửa phiếu giảm giá</li>
=======
                <li class="breadcrumb-item active">Sửa</li>
>>>>>>> fb8db9797de2a36b53b1f4fae819d6b9e0321716
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <%
                        String idmagiamgia = request.getParameter("idmagiamgia");
                        phieuGiamGiaModel pgg = new phieuGiamGiaModel();
                        int kq = CSDL.phieugiamgia.searchPhieuGiamGia(idmagiamgia, pgg);
                        if (kq == 1) {
                    %>
                    <form class="form-horizontal" method="post" action="suaPGG">
                        <h4>Phiếu giảm giá</h4>
                        <hr />
                        <div class="form-group">
                            <input type="hidden" name="idmagiamgia" id="idmaloaisp" value="<%=pgg.getIdmagiamgia()%>">
                        </div>
                        <div class="form-group">
                            <text><b>Kiểu giảm giá</b></text>
                            <br/>
                            <%
                                boolean kieumagiamgia = pgg.isKieugiamgia();
                                if (kieumagiamgia == true) {
                            %>
                            Phần trăm <input type="radio" name="kieugiamgia" id="kieugiamgia" value="1" checked="checked">
                            <br/>
                            Tiền mặt <input type="radio" name="kieugiamgia" id="kieugiamgia" value="0">
                            <%} else {%>
                            Phần trăm <input type="radio" name="kieugiamgia" id="kieugiamgia" value="1" >
                            <br/>
                            Tiền mặt <input type="radio" name="kieugiamgia" id="kieugiamgia" value="0" checked="checked">
                            <%}%>
                        </div>
                        <div class="form-group">
                            <text><b>Ngày bắt đầu</b></text>
                            <br/>
                            <input class="col-md-10" type="text" id="ngaybatdau" name="ngaybatdau" value="<%=pgg.getNgaybatdau()%>">
                        </div>
                        <div class="form-group">
                            <text><b>Ngày kết thúc</b></text>
                            <br/>
                            <input class="col-md-10" type="text" id="ngayketthuc" name="ngayketthuc" value="<%=pgg.getNgayketthuc()%>">
                        </div>
                        <div class="form-group">
                            <text><b>Số lượng</b></text>
                            <br/>
                            <input class="col-md-10" type="text" id="soluong" name="soluong" value="<%=pgg.getSoluong()%>">
                        </div>
                        <div class="form-group">
                            <text><b>Giá trị</b></text>
                            <br/>
                            <input class="col-md-10" type="text" id="giatri" name="giatri" value="<%=pgg.getGiatri()%>">
                        </div>
                        <div class="form-group">
                            <text><b>Điều kiện</b></text>
                            <br/>
                            <input class="col-md-10" type="text" id="dieukien" name="dieukien" value="<%=pgg.getDieukien()%>">
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <input type="submit" value="Save" class="btn btn-dark" >
                                <button class="btn btn-dark">
                                    <a href="dsPGG.jsp" style="color: white; text-decoration: none">Quay lại danh sách</a>
                                </button>
                            </div>
                        </div>
                    </form>
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