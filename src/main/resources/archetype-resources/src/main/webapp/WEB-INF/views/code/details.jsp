<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户中心系统 - 中房联</title>

    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <link href="/assets/css/sb-admin-2.css" rel="stylesheet">
    <link href="/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
    <script src="/assets/vendor/ie/html5shiv.js"></script>
    <script src="/assets/vendor/ie/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">借款用户中心系统</a>
        </div>
        <!-- /.navbar-header -->
        <jsp:include page="/WEB-INF/views/commons/navbar-header.jsp"/>
        <!-- /.navbar-top-links -->
        <jsp:include page="/WEB-INF/views/commons/sidebar.jsp"/>
        <!-- /.navbar-static-side -->
    </nav>

    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">字典管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <i class="fa fa-list"></i> 字典数据列表
                        <div class="pull-right">
                            <a href="${pageContext.request.contextPath}/code/addValue/${details.id}" class="btn btn-success btn-xs">
                                <i class="fa fa-plus"></i> 增加字典
                            </a>
                        </div>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <span class="hidden" id="roleId" data-id="${details.id}"></span>
                                <div class="form-group">
                                    <label>字典名称</label>
                                    <input class="form-control" value="${details.name}">
                                </div>
                            </div>
                        </div>

                        <table width="100%" class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>名称</th>
                                <th>描述</th>
                                <th>启用</th>
                                <th>创建人</th>
                                <th>创建时间</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <c:forEach items="${details.values}" var="codeValue">
                            <tr>
                                    <td>${ codeValue.id }</td>
                                    <td>${ codeValue.name }</td>
                                    <td>${ codeValue.description }</td>
                                    <td>
                                        <c:if test="${ codeValue.active }">
                                            <span class="label label-success ml5">否</span>
                                        </c:if>
                                        <c:if test="${not codeValue.active }">
                                            <span class="label label-success ml5">是</span>
                                        </c:if>
                                    </td>
                                    <td>${ codeValue.createdBy }</td>
                                    <td>
                                        <fmt:formatDate value="${ codeValue.createdTime }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
                                    </td>
                                    <td>
                                        <a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/code/edit/${codeValue.id}">修改</a>
                                        <a class="btn btn-sm btn-primary" data-drop="delete">删除</a>

                                        <div class="modal" id="mymodal">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <p align="center">确定要删除吗？</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                        <button type="button" class="btn btn-primary"  data-drop="sure"  data-id="${codeValue.id}">确定</button>
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->

                                        <c:if test="${ codeValue.active }">
                                            <a data-provider="active" class="btn btn-sm btn-danger" data-code="${details.id}" data-id="${codeValue.id}">停用</a>
                                        </c:if>
                                        <c:if test="${not codeValue.active }">
                                            <a  data-provider="active" class="btn btn-sm btn-primary" data-code="${details.id}" data-id="${codeValue.id}">启用</a>
                                        </c:if>

                                    </td>
                            </tr>
                            </c:forEach>
                        </table>
                        <!-- /.table-responsive -->

                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->


<!-- jQuery -->
<script src="/assets/vendor/jquery/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="/assets/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="/assets/js/sb-admin-2.js"></script>
<script>
    $(document).ready(function () {
        $("[data-provider='active']").click(function () {
            var _id=$(this).data("id");
            var _code=$(this).data("code");
            $.ajax({
                url: '/code/toggleActive/'+_id,
                method: 'POST',
                dataType: 'json',
                success:function (result) {
                    if(result.code=="200"){
                        location.href="/code/details/"+_code;
                    }
                }
            });

        });

        $(function(){
            $("[data-drop='delete']").click(function(){
                $("#mymodal").modal("toggle");
            });
        });
        $(function(){
            $("[data-drop='sure']").click(function(){
                var _id=$(this).data("id");
                location.href="${pageContext.request.contextPath}/code/delete/"+_id;
            });
        });
    });
</script>
</body>

</html>
