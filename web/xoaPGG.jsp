<%-- 
    Document   : xoaPGG
    Created on : Jun 2, 2021, 9:49:06 AM
    Author     : Nguyen Tien Dat
--%>
<%@page import="Model.phieuGiamGiaModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="dsPGG.jsp">Phiếu giảm giá</a></li>
                <li class="breadcrumb-item active">Xóa phiếu giảm giá</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <%
                        String idmagiamgia = request.getParameter("idmagiamgia");
                        phieuGiamGiaModel pgg = new phieuGiamGiaModel();
                        int kq = CSDL.phieugiamgia.searchPhieuGiamGia(idmagiamgia, pgg);
                        if (kq == 1) {
                    %>
                    <form class="form-horizontal" method="post" action="xoaPGG">
                        <div class="form-horizontal">
                            <h4>Xóa Phiếu giảm giá</h4>
                            <hr />
                            <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">ID của phiếu giảm giá</p>
                                <div class="col-sm-10">
                                    <input type="hidden" name="idmagiamgia" id="idmagiamgia" value="<%=pgg.getIdmagiamgia()%>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Ngày bắt đầu</p>
                                <div class="col-sm-10">
                                    <input class="col-md-10" type="hidden" id="ngaybatdau" name="ngaybatdau" value="<%=pgg.getNgaybatdau()%>">
                                    <text><%=pgg.getNgaybatdau()%></text>
                                </div>
                            </div>
                            <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Ngày kết thúc</p>
                                <div class="col-sm-10">
                                    <input class="col-md-10" type="hidden" id="ngayketthuc" name="ngayketthuc" value="<%=pgg.getNgayketthuc()%>">
                                    <text><%=pgg.getNgayketthuc()%></text>
                                </div>
                            </div> 
                            <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Số lượng</p>
                                <div class="col-sm-10">
                                    <input class="col-md-10" type="hidden" id="soluong" name="soluong" value="<%=pgg.getSoluong()%>">
                                    <text><%=pgg.getSoluong()%></text>
                                </div>
                            </div> 
                            <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Giá trị</p>
                                <div class="col-sm-10">
                                    <input class="col-md-10" type="hidden" id="giatri" name="giatri" value="<%=pgg.getGiatri()%>">
                                    <text><%=pgg.getGiatri()%></text>
                                </div>
                            </div> 
                            <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Điều kiện</p>
                                <div class="col-sm-10">
                                    <input class="col-md-10" type="hidden" id="dieukien" name="dieukien" value="<%=pgg.getDieukien()%>">
                                    <text> <%=pgg.getDieukien()%></text>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <input type="submit" value="Delete" class="btn btn-default" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">Kiểu giảm giá</p>

                            <div class="form-check form-check-inline">                      
                                <label class="form-check-label" for="inlineRadio1">Phần trăm </label>
                                <input class="form-check-input" type="radio" checked="checked" name="kieugiamgia" id="kieugiamgia" value="1">
                            </div>
                            <div class="form-check form-check-inline">
                                <label class="form-check-label" for="inlineRadio2">Tiền mặt </label>
                                <input type="radio" name="kieugiamgia" id="kieugiamgia" value="0"<%=pgg.isKieugiamgia() ? "checked" : ""%>>
                            </div>
                        </div>
                    </form>
                    <%}%>

                    <a href="dsPGG.jsp">Quay lại danh sách</a>

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
