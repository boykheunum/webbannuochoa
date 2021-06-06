<%-- 
    Document   : nvchitietloaiSP
    Created on : Jun 2, 2021, 11:09:46 PM
    Author     : quyenlh
--%>


<%@page import="Model.loaispModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuNV.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Loại Sản Phẩm</a></li>
                            <li class="breadcrumb-item active">Chi tiết</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">


                                <div>

                                    <dl class="dl-horizontal">
                                        <dt>
                                            <text>Mã Loại Sản phẩm</text>
                                        </dt>

                                        <dd>
                                            <%=lsp.getMaloaisp()%>
                                        </dd>
                                        <dt>
                                            <text>Tên Loại Sản phẩm</text>
                                        </dt>

                                        <dd>
                                            <%=lsp.getTenloaisp()%>
                                        </dd>

                                    </dl>
                                </div>
                                <p>
                                    "Edit", "Edit", new { id = Model.MaLoaiSP }
                                    "Back to List", "Index")
                                </p>

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


