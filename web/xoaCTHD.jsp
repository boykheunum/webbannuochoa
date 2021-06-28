<%-- 
    Document   : xoaCTHD
    Created on : Jun 28, 2021, 1:18:35 AM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.chiTietHoaDonModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="dsCTHD.jsp">Chi tiết hóa đơn</a></li>
                <li class="breadcrumb-item active">Xóa phiếu chi tiết hóa đơn</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    
                    <%
                        int mahd = Integer.parseInt(request.getParameter("mahd"));
                        chiTietHoaDonModel cthd = new chiTietHoaDonModel();
                        int kq = CSDL.chitiethoadon.searchChiTietHoaDon(mahd, cthd);
                        if (kq == 1) {
                    %>
                    <form method="post" action="xoaCTHD">
                        <div class="form-horizontal">
                            <h4>Xóa chi tiêt hóa đơn</h4>
                            <hr/>
                                    <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Mã hóa đơn</p>
                                <div class="col-sm-10">
                                    <input class="col-md-10" type="hidden" id="mahd" name="mahd" value="<%=cthd.getMahd()%>">
                                    <text><%=cthd.getMahd()%></text>
                                </div>
                            </div>
                                    <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Mã sản phẩm</p>
                                <div class="col-sm-10">
                                    <input type="hidden" id="masp" name="masp" value="<%=cthd.getMasp()%>">
                                    <text><%=cthd.getMasp()%></text>
                                </div>
                            </div>
                                    <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Số lượng mua</p>
                                <div class="col-sm-10">
                                    <input type="hidden" id="soluongmua" name="soluongmua" value="<%=cthd.getSoluongmua()%>">
                                    <text><%=cthd.getSoluongmua()%></text>
                                </div>
                            </div>
                                    <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Giá bán</p>
                                <div class="col-sm-10">
                                    <input type="hidden" id="giaban" name="giaban" value="<%=cthd.getGiaban()%>">
                                    <text><%=cthd.getGiaban()%></text>
                                </div>
                            </div>   
                                    <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Thành tiền</p>
                                <div class="col-sm-10">
                                    <input type="hidden" id="giaban" name="giaban" value="<%=cthd.getThanhtien()%>">
                                    <text><%=cthd.getThanhtien()%></text>
                                </div>
                            </div>
                                   <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">ID Mã giảm giá</p>
                                <div class="col-sm-10">
                                    <input type="hidden" id="giaban" name="giaban" value="<%=cthd.getIdmagiamgia()%>">
                                    <text><%=cthd.getIdmagiamgia()%></text>
                                </div>
                            </div>
                            <div class="form-actions no-color">
                                <input type="submit" value="Delete" class="btn btn-dark">
                            </div>
                        </div> 
                    </form>
                    <%}%>
                    <a href="dsCTHD.jsp">Quay lại danh sách</a>
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
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="content/js/scripts.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
<script src="content/assets/demo/datatables-demo.js"></script>
