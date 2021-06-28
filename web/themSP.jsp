<%-- 
    Document   : themSP
    Created on : Apr 29, 2021, 7:30:25 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.loaispModel"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.html">Sản Phẩm</a></li>
                <li class="breadcrumb-item active">Thêm sản phẩm </li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    <%
                        Vector<loaispModel> ds = new Vector<loaispModel>();
                        int kq = CSDL.LoaiSP.listLoaiSP(ds);
                        if (kq == 1) {
                    %>
                    <form method="post" action="themSP" enctype="multipart/form-data">
                        <fieldset>
                            <legend><h4>Thêm Sản Phẩm</h4></legend>
                            <hr />
                            <span id="messBoxErr" style="color: red"></span>
                            <span id="messBox" style="color: greenyellow"></span>
                            <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold"> Mã sản phẩm</p>
                                <div class="col-sm-10">
                                    <input class="col-md-10" type="text" id="masp" name="masp">
                                </div>
                            </div>
                            <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold"> Mã loại sản phẩm</p>
                                <div class="col-sm-10">
                                    <select class="col-md-10" id="maloaisp" name="maloaisp">
                                        <%for (loaispModel lsp : ds) {%>
                                        <option><%=lsp.getMaloaisp()%></option>
                                        <%}%>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Tên sản phẩm</p>
                                <div class="col-sm-10">
                                    <input class="col-md-10" type="text" id="tenSP" name="tenSP">
                                </div>
                            </div>
                        
                                <div class="form-group row">
                                    <p class="col-sm-2 font-weight-bold"> Số lượng</p>
                                    <div class="col-sm-10">
                                        <input class="col-md-10" type="text" id="soluong" name="soluong">
                                    </div>
                                </div>
                               
                                    <div class="form-group row">
                                        <p class="col-sm-2 font-weight-bold"> Giá nhập</p>
                                        <div class="col-sm-10">
                                            <input class="col-md-10" type="text" id="gianhap" name="gianhap">
                                        </div>
                                    </div>
                                  
                                        <div class="form-group row">
                                            <p class="col-sm-2 font-weight-bold"> Giá bán</p>
                                            <div class="col-sm-10">
                                                <input class="col-md-10" type="text" id="giaban" name="giaban">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <p class="col-sm-2 font-weight-bold"> Mô tả</p>
                                            <div class="col-sm-10">
                                                <textarea class="col-md-10" type="text" id="mota" name="mota"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <p class="col-sm-2 font-weight-bold"> Ảnh</p>
                                            <div class="col-sm-10">
                                                <input class="col-md-10" type="file" id="anh" name="anh">
                                            </div>
                                             </div>
                                            <div class="form-group row">
                                                <div class="col-md-offset-2 col-md-10">
                                                    <button type="submit" value="Create" class="btn btn-dark">Thêm sản phẩm</button>
                                                </div>
                                                <a href=dsSP.jsp" class="btn btn-dark" role="button" aria-pressed="true">Quay lại danh sách</a>
                                            </div>
                                            </fieldset>
                                            </form>
                                                   
     
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
                                       
       
                                        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
                                        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
                                        <script src="content/js/scripts.js"></script>
                                        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
                                        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
                                        <script src="content/assets/demo/datatables-demo.js"></script>
                                        <script>
                                            $(document).ready(function () {
                                                $('#masp').keyup(function () {
                                                    $.ajax({
                                                        method: 'POST',
                                                        url: 'checkMaSP',
                                                        data: {
                                                            masp: $('#masp').val()
                                                        },
                                                        success: function (res) {
                                                            var messBox = document.getElementById('messBox');
                                                            var messBoxErr = document.getElementById('messBoxErr');
                                                            if (res == 1) {
                                                                messBox.innerHTML = " ";
                                                                messBoxErr.innerHTML = "Đã tồn tại mã  sản phẩm";
                                                            } else if (res == -1) {
                                                                messBoxErr.innerHTML = " ";
                                                                messBox.innerHTML = "mã sản phẩm hợp lệ";
                                                            }

                                                        }
                                                    });
                                                });
                                            });
                                        </script>
                                        </body>
                                        <%}%>

