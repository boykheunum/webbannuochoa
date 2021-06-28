<%-- 
    Document   : themloaisp
    Created on : Apr 29, 2021, 6:22:08 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.nhanVienModel"%>
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
        <main>
            <div class="container-fluid">
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="index.html">Loại Sản Phẩm</a></li>
                    <li class="breadcrumb-item active">Thêm loại sản phẩm</li>
                </ol>
                <div class="card mb-4">
                    <div class="card-body" >
                        <form class="form-horizontal" action="themloaisp" method="post" >
                            <h4>Thêm Loại Sản Phẩm</h4>
                            <hr />
                            <span id="messBoxErr" style="color: red"></span>
                            <span id="messBox" style="color: greenyellow"></span>
                            <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Mã Loại Sản Phẩm</p>
                                <div class="col-sm-10">
                                    <input class="col-md-10" id="maloaisp" name="maloaisp" type="text">
                                </div>
                            </div>
                            <div class="form-group row">
                                <p class="col-sm-2 font-weight-bold">Tên Loại Sản Phẩm</p>
                                <div class="col-sm-10">
                                    <input class="col-md-10" id="tenloaisp" name="tenloaisp" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-2 col-md-10">

                                    <button type="submit" value="Create" class="btn btn-dark">Thêm loại sản phẩm</button>

                                    <a href="dsPGG.jsp" class="btn btn-dark" role="button" aria-pressed="true">Quay lại danh sách</a>
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
