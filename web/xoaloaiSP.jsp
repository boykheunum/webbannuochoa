<%-- 
    Document   : xoaloaiSP
    Created on : Apr 30, 2021, 10:52:20 PM
    Author     : Nguyen Tien Dat
--%>

<%@page import="Model.loaispModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layoutAdmin/menuAdmin.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Loại Sản Phẩm</a></li>
                            <li class="breadcrumb-item active">Xóa</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">

                                <h3>Are you sure you want to delete this?</h3>
                                <%
                                    String maloaisp = request.getParameter("maloaisp");
                                    loaispModel lsp = new loaispModel();
                                    int kq = CSDL.LoaiSP.searchLoaiSP(lsp, maloaisp);
                                    if(kq==1){
                                %>
                                <form action="xoaloaiSP" method="post">
                                    <h4>Loại Sản Phẩm</h4>
                                    <hr />
                                    <dl class="dl-horizontal">
                                        <dt>
                                            <input type="hidden" id="maloaisp" name="maloaisp" value="<%=lsp.getMaloaisp()%>">
                                        </dt>    
                                        <dt>
                                            <text>Tên Loại Sản Phẩm:</text>
                                        </dt>
                                        
                                        <dd>
                                           <text id="tenloaisp" name="tenloaisp"><%=lsp.getTenloaisp()%></text>
                                        </dd>

                                    </dl>
                                    <div class="form-actions no-color">
                                        <input type="submit" value="Delete" class="btn btn-default" /> |
                                        "Back to List", "Index")                                   
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
    <%}%>
</html>


