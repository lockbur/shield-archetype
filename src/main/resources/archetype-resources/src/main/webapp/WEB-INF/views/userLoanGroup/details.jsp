<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                <h1 class="page-header">用户管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="col-sm-3"><!--left col-->
                <ul class="list-group">
                    <li class="list-group-item text-muted">联合借款人</li>
                    <li class="list-group-item text-right">
                        <span class="pull-left">
                            <strong>组名</strong>
                        </span>
                        ${groupDetails.name}
                    </li>
                    <li class="list-group-item text-right">
                        <span class="pull-left">
                            <strong>所属办公室</strong>
                        </span>
                        ${groupDetails.officeId}
                    </li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>创建时间</strong></span>
                        <fmt:formatDate value="${groupDetails.createdTime}" pattern="yyyy-MM-dd HH:ss"></fmt:formatDate>
                    </li>
                </ul>
            </div>
            <div class="col-sm-9">

                <ul class="nav nav-tabs" id="myTab">
                    <li class="active"><a href="#home" data-toggle="tab" aria-expanded="false">借款人列表</a></li>
                </ul>

                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>UID</th>
                                    <th>姓名</th>
                                    <th>性别</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${groupDetails.users}" var="user">
                                    <tr>
                                        <td>${user.id}</td>
                                        <td><a href="/user/details/${user.id}">${user.name}</a></td>
                                        <td>${user.gender.key}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div><!--/tab-pane-->
                </div><!--/tab-content-->
            </div>
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

    });
</script>
</body>

</html>
