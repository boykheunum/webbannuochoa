<%-- 
    Document   : themmagiamgia
    Created on : Jun 1, 2021, 5:22:56 PM
    Author     : Nguyen Tien Dat
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="layoutAdmin/menuAdmin.jsp" />
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">

            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="#">Phiếu giảm giá</a></li>
                <li class="breadcrumb-item active">Thêm phiếu giảm giá </li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">

                    <form class="form-horizontal" method="post" action="themMaGiamGia">
                        <h4>Thêm phiếu giảm giá</h4>
                        <hr />
                        <span id="messBoxErr" style="color: red"></span>
                        <span id="messBox" style="color: greenyellow"></span>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">ID mã giảm giá</p>
                            <div class="col-sm-10">
                                <input class="col-md-10" type="text" id="magiamgia" name="idmagiamgia">
                            </div>
                        </div>


                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">Ngày bắt đầu</p>
                            <div class="col-sm-10">
                                <input class="col-md-10" type="text" id="ngaybatdau" name="ngaybatdau">
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">Ngày kết thúc</p>
                            <div class="col-sm-10">
                                <input class="col-md-10" type="text" id="ngayketthuc" name="ngayketthuc">
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">Số lượng</p>
                            <div class="col-sm-10">
                                <input class="col-md-10" type="text" id="soluong" name="soluong">
                            </div>
                        </div>
                        <div class="form-group row">
                             <p class="col-sm-2 font-weight-bold">Giá trị</p>
                            <div class="col-sm-10">
                                <input class="col-md-10" type="text" id="giatri" name="giatri">
                            </div>
                        </div>
                        <div class="form-group row">
                            <p class="col-sm-2 font-weight-bold">Điều kiện</p>
                            <div class="col-sm-10">
                                <input class="col-md-10" type="dieukien" id="dieukien" name="dieukien">
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
                                <input class="form-check-input" type="radio" name="kieugiamgia" id="kieugiamgia" value="0">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-offset-2 col-md-10">

                                <button type="submit" value="Create" class="btn btn-dark">Thêm mã giảm giá</button>
                            </div>
                            <a href="dsPGG.jsp" class="btn btn-dark" role="button" aria-pressed="true">Danh sách mã giảm giá</a>
                        </div>
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
</div>

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
                        messBoxErr.innerHTML = "Đã tồn tại mã  giảm giá";
                    } else if (res == -1) {
                        messBoxErr.innerHTML = " ";
                        messBox.innerHTML = "mã giảm giá hợp lệ";
                    }

                }
            });
        });
    });
</script>
</body>

