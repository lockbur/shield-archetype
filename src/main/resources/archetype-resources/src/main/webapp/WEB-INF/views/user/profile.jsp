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
                <h1 class="page-header">用户管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <i class="fa fa-list"></i> 用户详细信息
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-4 col-lg-4 " align="center">
                                <img src="/assets/images/id-card-placehold.png">
                            </div>
                            <div class=" col-md-8 col-lg-8 ">
                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <td style="width: 15%">用户名:</td>
                                        <td>王坤</td>
                                        <td style="width: 15%">真实姓名:</td>
                                        <td>王坤</td>
                                    </tr>
                                    <tr>
                                        <td>身份证号码:</td>
                                        <td>532128199108084911</td>
                                        <td>手机号码:</td>
                                        <td>13661014724</td>
                                    </tr>
                                    <tr>
                                        <td>电子邮箱:</td>
                                        <td>845885222@qq.com</td>
                                        <td>推荐人:</td>
                                        <td>张三</td>
                                    </tr>
                                    <tr>
                                        <td>性别:</td>
                                        <td>男</td>
                                        <td>出生日期:</td>
                                        <td>1991-08-08</td>
                                    </tr>
                                    <tr>
                                        <td>民族:</td>
                                        <td>汉族</td>
                                        <td>婚姻状况:</td>
                                        <td>未婚</td>
                                    </tr>
                                    <tr>
                                        <td>个人介绍:</td>
                                        <td colspan="3">非常有潜力的借款用户,按时还款,提前还款</td>
                                    </tr>
                                    <tr>
                                        <td>数据来源:</td>
                                        <td>沪房联</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
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

</body>

</html>
