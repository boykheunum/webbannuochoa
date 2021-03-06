<%-- 
    Document   : nvsualoaiSP
    Created on : Jun 2, 2021, 11:08:17 PM
    Author     : quyenlh
--%>


<%@page import="Model.loaispModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="layoutAdmin/menuNV.jsp" />
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">

                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="index.html">Loại Sản Phẩm</a></li>
                        <li class="breadcrumb-item active">Sửa</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-body">
                                <%
                                    String maloaisp = request.getParameter("maloaisp");
                                    loaispModel lsm = new loaispModel();
                                    int kq = CSDL.LoaiSP.searchLoaiSP(lsm, maloaisp);
                                    if(kq == 1){
                                %>
                                <form class="form-horizontal" method="post" action="sualoaiSP">
                                    <h4>Loại sản phẩm</h4>
                                    <hr />
                                    <div class="form-group">
                                        
                                        <input type="hidden" name="maloaisp" id="maloaisp" value="<%=lsm.getMaloaisp()%>">
                                        <text>Tên loại sản phẩm</text>
                                        <div class="col-md-10">
                                            
                                            <input type="text" name="tenloaisp" id="tenloaisp" value="<%=lsm.getTenloaisp()%>">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-10">
                                            <input type="submit" value="Save" class="btn btn-default" />
                                        </div>
                                    </div>
                                </form>
                                <%}%>

                            <div>
                                @Html.ActionLink("Back to List", "Index")
                            </div>

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
