<%-- 
    Document   : xoaSP
    Created on : May 2, 2021, 1:40:51 AM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.sanphamModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="layoutAdmin/menuAdmin.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Sản Phẩm</a></li>
                            <li class="breadcrumb-item active">Xóa</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <h3>Are you sure you want to delete this?</h3>
                                <%
                                    String masp = request.getParameter("masp");
                                    sanphamModel sp = new sanphamModel();
                                    int kq = CSDL.SanPham.searchSP(sp, masp);
                                    if (kq == 1) {


                                %>
                                <form method="post" action="xoaSP">
                                    <div class="form-horizontal">
                                      <h4>Xóa sản phẩm</h4>
                                    <div class="form-group">
                                        <text>Mã loại sản phẩm</text>
                                        <div class="col-md-6">
                                             <input class="col-md-10" type="hidden" id="maloaisp" name="maloaisp" value="<%=sp.getMaloaisp()%>">
                                           <text><%=sp.getMaloaisp()%></text>
                                        </div>
                                    </div>
                                        <div class="form-group">
                                        <text>Mã sản phẩm</text>
                                        <div class="col-md-6">
                                            <input type="hidden" id="masp" name="masp" value="<%=sp.getMasp()%>">
                                           <text><%=sp.getMasp()%></text>
                                        </div>
                                    </div>
                                        
                                    <div class="form-group">
                                       <text>Tên sản phẩm</text>
                                        <div class="col-md-6">
                                            <input type="hidden" id="tenSP" name="tenSP" value="<%=sp.getTensp()%>">
                                           <text><%=sp.getMasp()%></text>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                       <text>Số lượng</text>
                                        <div class="col-md-6">
                                            <input type="hidden" id="soluong" name="soluong" value="<%=sp.getSoluong()%>">
                                           <text><%=sp.getSoluong()%></text>
                                        </div>
                                    </div>   
                                     <div class="form-group">
                                       <text>Giá nhập</text>
                                        <div class="col-md-6">
                                            <input type="hidden" id="gianhap" name="gianhap" value="<%=sp.getGianhap()%>">
                                            <text><%=sp.getGianhap()%></text>
                                        </div>
                                    </div>    
                                       <div class="form-group">
                                       <text>Giá bán</text>
                                        <div class="col-md-6">
                                            <input type="hidden" id="giaban" name="giaban" value="<%=sp.getGiaban()%>">
                                            <text><%=sp.getGiaban()%></text>
                                        </div>
                                    </div>                                        
                                    <div class="form-group">
                                             <text>Mô tả</text>
                                        <div class="col-md-6">
                                            <input type="hidden" id="mota" name="mota" value="<%=sp.getMota()%>">
                                            <text><%=sp.getMota()%></text>>
                                        </div>
                                    </div> 
                                        <div class="form-group">
                                            <text>Ảnh</text>
                                                <div class="col-md-6">
                                                <img src="imageSP/<%=sp.getHinhanh()%>">
                                                </div>
                                         </div>
                                       </div> 

                                    <div class="form-actions no-color">
                                        <input type="submit" value="Delete" class="btn btn-default" /> |
                                        @Html.ActionLink("Back to List", "Index")
                                    </div>
                                    }
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




