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
    <script src="/assets/vendor/moment/min/moment.min.js"></script>
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
        <form role="form" action="/overdue/addOverdueInfo" method="post" accept-charset="UTF-8">

            <div class="form-group">
                <input type="hidden" class="form-control" id="id" name="codeId">
            </div>
            <div class="form-group">
                <label class="control-label" for="name">姓名</label>
                <input type="text" class="form-control" id="name" name="name">
            </div>
            <div class="form-group">
                <label class="control-label" for="mobile">手机号</label>
                <input type="text" class="form-control" id="mobile" name="mobile">
            </div>
            <div class="form-group">
                <label class="control-label" for="idCard">身份证号</label>
                <input type="text" class="form-control" id="idCard" name="idCard">
            </div>
            <div class="form-group">
                <label class="control-label" for="orderNo">订单号</label>
                <input type="text" class="form-control" id="orderNo" name="orderNo">
            </div>
            <div class="form-group">
                <label class="control-label" for="amount">欠款总额</label>
                <input type="text" class="form-control" id="amount" name="amount">
            </div>
            <div class="form-group">
                <label class="control-label" for="penalty">罚息</label>
                <input type="text" class="form-control" id="penalty" name="penalty">
            </div>
            <div class="form-group">
                <label class="control-label" for="overDueTime">逾期时间</label>
                <input type="text" class="form-control" id="overDueTime" name="overDueTime">
            </div>
            <div class="form-group">
                <label class="control-label" for="status">状态</label>
                <input type="text" class="form-control" id="status" name="status">
            </div>
            <p>
                <button type="submit" class="btn btn-primary">提交</button>
            </p>
        </form>
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

</script>

</body>

</html>
