<%-- 
    Document   : themChucVu
    Created on : Jun 2, 2021, 3:51:11 PM
    Author     : Nguyen Tien Dat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <main>
                        <div class="container-fluid">
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item"><a href="index.html">Loại Sản Phẩm</a></li>
                                <li class="breadcrumb-item active">Thêm loại sản phẩm</li>
                            </ol>
                            <div class="card mb-4">
                                <div class="card-body">
                                    <form class="form-horizontal" action="themcv" method="post">
                                        <h4>Loại Sản Phẩm</h4>
                                        <hr />
                                        <span id="messBoxErr" style="color: red"></span>
                                        <span id="messBox" style="color: greenyellow"></span>
                                        <div class="form-group">
                                            Mã chức vụ
                                            <input id="macv" name="macv" type="text">
                                        </div>

                                        <div class="form-group">
                                            Tên chức vụ
                                            <input  id="tencv" name="tencv" type="text">
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-offset-2 col-md-10">
                                                <input type="submit" value="Create" class="btn btn-default" />
                                            </div>
                                        </div>
                                    </form>
                                    <div>
                                        "Back to List", "Index"
                                    </div>

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
                $('#macv').keyup(function () {
                    $.ajax({
                        
                        method: 'POST',
                        url: 'checkTrungCV',
                        data: {
                            maloaisp: $('#macv').val()
                        },
                        success: function (res) {
                            var messBox = document.getElementById('messBox');
                            var messBoxErr = document.getElementById('messBoxErr');
                            if (res == 1) {
                                messBox.innerHTML = " ";
                                messBoxErr.innerHTML = "Đã tồn tại mã chức vụ";
                            } else {
                                messBoxErr.innerHTML = " ";
                                messBox.innerHTML = "mã chức vụ hợp lệ";
                            }

                        }
                    });
                });
            });
        </script>
    </body>

</html>
