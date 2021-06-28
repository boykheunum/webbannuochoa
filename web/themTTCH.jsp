<%-- 
    Document   : themTTCH
    Created on : Jun 2, 2021, 12:20:51 AM
    Author     : quyenlh
--%>

<%@page import="Model.loaispModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <main>
                        <div class="container-fluid">
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item"><a href="index.html">Thông tin cửa hàng</a></li>
                                <li class="breadcrumb-item active">Thêm thông tin cửa hàng</li>
                            </ol>
                            <div class="card mb-4">
                                <div class="card-body">
                                    <form class="form-horizontal" action="themTTCH" method="post">
                                        <h4>Thông tin cửa hàng</h4>
                                        <hr />
                                        <span id="messBoxErr" style="color: red"></span>
                                        <span id="messBox" style="color: greenyellow"></span>
                                        
                                        <div class="form-group">
                                           Địa chỉ cửa hàng
                                            <input  id="diachi" name="diachi" type="text">
                                        </div>
                                         <div class="form-group">
                                            Email
                                            <input id="email" name="email" type="text">
                                        </div>

                                        <div class="form-group">
                                           Số điện thoại
                                            <input  id="sdtcuahang" name="sdt" type="text">
                                        </div>
                                         <div class="form-group row">
                            <div class="col-md-offset-2 col-md-10">

                                <button type="submit" value="Create" class="btn btn-dark">Thêm thông tin cửa hàng</button>
                            </div>
                            
                        </div>
                                    </form>
                                   

                                </div>
                            </div>
                        </div>
                    </main>
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
        <script>
            $(document).ready(function () {
                $('#maloaisp').keyup(function () {
                    $.ajax({
                        
                        method: 'POST',
                        url: 'checkLoaiSP',
                        data: {
                            maloaisp: $('#maloaisp').val()
                        },
                        success: function (res) {
                            var messBox = document.getElementById('messBox');
                            var messBoxErr = document.getElementById('messBoxErr');
                            if (res == 1) {
                                messBox.innerHTML = " ";
                                messBoxErr.innerHTML = "Đã tồn tại mã loai sản phẩm";
                            } else {
                                messBoxErr.innerHTML = " ";
                                messBox.innerHTML = "mã loại sản phẩm hợp lệ";
                            }

                        }
                    });
                });
            });
        </script>
    </body>

</html>
