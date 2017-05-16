<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户中心系统 - 中房联</title>


    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/assets/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">
    <!-- DataTables Responsive CSS -->
    <link href="/assets/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

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
                <h1 class="page-header">逾期管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <i class="fa fa-list"></i> 逾期人员列表
                        <div class="pull-right">
                            <a href="/overdue/addoverdue" class="btn btn-success btn-xs">
                                <i class="fa fa-plus"></i> 增加逾期人员
                            </a>
                        </div>
                    </div>

                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="well form-inline">
                            <div class="form-group input-group">
                                <span class="input-group-addon">手机号码</span>
                                <input type="text" id="search-mobile" class="form-control" placeholder="手机号码">
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon">姓名</span>
                                <input type="text" id="search-name" class="form-control" placeholder="姓名">
                            </div>
                            <button id="search-btn" class="btn btn-primary">查询</button>
                        </div>
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover"
                                   id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>姓名</th>
                                    <th>手机号</th>
                                    <th>身份证号</th>
                                    <th>订单号</th>
                                    <th>欠款总额</th>
                                    <th>罚息</th>
                                    <th>逾期时间</th>
                                    <th>状态</th>
                                </tr>
                                </thead>
                                <c:forEach items="${list}" var="overdue">
                                    <tr>
                                        <td>${ overdue.id }</td>
                                        <td>${ overdue.name }</td>
                                        <td>${ overdue.mobile }</td>
                                        <td>${ overdue.idCard }</td>
                                        <td>${ overdue.orderNo }</td>
                                        <td>${ overdue.amount }</td>
                                        <td>${ overdue.penalty }</td>
                                        <td>${ overdue.overDueTime }</td>
                                        <td>${ overdue.status }</td>
                                    </tr>
                                </c:forEach>
                            </table>
                            <!-- /.table-responsive -->
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

<!-- DataTables JavaScript -->
<script src="/assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assets/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
<script src="/assets/vendor/datatables-responsive/dataTables.responsive.js"></script>


<!-- Custom Theme JavaScript -->
<script src="/assets/js/sb-admin-2.js"></script>

<script>
    $(document).ready(function () {
        var dataTable = $('#dataTables-example').DataTable({
            "bProcessing": true,
            "processing": true,
            "serverSide": true,
            "searching": true,
            ajax: {
                url: '${pageContext.request.contextPath}/overdue/list/dataTables',
                method: 'POST',
                contentType: 'application/json',
                dataType: 'json',
                data: function (data) {
                    return JSON.stringify(data);
                }
            },
            columns: [
                {data: 'id', 'name': 'id'},
                {data: 'name', name: 'name'},
                {data: 'mobile', name: 'mobile'},
                {data: 'idCard', name: 'idCard'},
                {data: 'orderNo', name: 'orderNo'},
                {data: 'amount', name: 'amount'},
                {data: 'penalty', name: 'penalty'},
                {data: 'overDueTime', name: 'overDueTime'},
                {data: 'status', name: 'status'}
            ],
            "columnDefs": [{
                "targets": 0,
                "searchable": false,
                "render": function (data, type, full, meta) {
                    return data;
                }
            }, {
                "targets": 1,
                "searchable": false,
                "render": function (data, type, full, meta) {
                    return data;
                }
            }, {
                "targets": 2,
                "searchable": false,
                "render": function (data, type, full, meta) {
                    return data;
                }
            }, {
                "targets": 3,
                "searchable": false,
                "render": function (data, type, full, meta) {
                    return data;
                }
            }, {
                "targets": 4,
                "searchable": false,
                "render": function (data, type, full, meta) {
                    return data;
                }
            }, {
                "targets": 5,
                "searchable": false,
                "render": function (data, type, full, meta) {
                    return data;
                }
            }, {
                "targets": 6,
                "searchable": false,
                "render": function (data, type, full, meta) {
                    return data;
                }
            }, {
                "targets": 7,
                "searchable": false,
                "render": function (data, type, full, meta) {
                    return data;
                }
            }, {
                "targets": 8,
                "searchable": false,
                "render": function (data, type, full, meta) {
                    return data;
                }
            }],
            "language": {
                "processing": "正在努力加载中...",
                "lengthMenu": "显示 _MENU_ 项结果 ",
                "zeroRecords": "没有匹配结果",
                "info": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "infoEmpty": "显示第 0 至 0 项结果，共 0 项",
                "infoFiltered": "(由 _MAX_ 项结果过滤)",
                "infoPostFix": "",
                "sSearch": "搜索",
                "url": "",
                "paginate": {
                    "first": "首页",
                    "previous": "上一页",
                    "next": "下一页",
                    "last": "末页"
                }
            }
        });

        //搜索查询
        $("#search-btn").click(function () {
            var _name = $("#search-name").val();
            var _mobile = $("#search-mobile").val();
            if (_name) {
                dataTable.column(1).search(_name);
            } else {
                dataTable.column(1).search("");
            }
            if (_mobile) {
                dataTable.column(2).search(_mobile);
            } else {
                dataTable.column(2).search("");
            }
            dataTable.draw();
        });
    });
</script>
</body>

</html>
