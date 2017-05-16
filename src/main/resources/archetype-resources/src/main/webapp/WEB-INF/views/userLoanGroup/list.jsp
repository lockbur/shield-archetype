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
                <h1 class="page-header">用户管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <i class="fa fa-list"></i> 用户数据列表
                        <div class="pull-right">
                            <a href="/user/group/add" class="btn btn-success btn-xs">
                                <i class="fa fa-plus"></i> 增加用户
                            </a>
                        </div>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="well form-inline">
                            <div class="form-group input-group">
                                <span class="input-group-addon">所属办公室</span>
                                <select id="search-office" class="form-control">
                                    <option value="京房联">京房联</option>
                                    <option value="沪房联">沪房联</option>
                                    <option value="广房联">广房联</option>
                                    <option value="深房联">深房联</option>
                                </select>
                            </div>
                            <button id="search-btn" class="btn btn-primary">查询</button>
                        </div>

                        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTable">
                            <thead>
                            <tr>
                                <th>UID</th>
                                <th>组名</th>
                                <th>所属办公室</th>
                                <th>创建时间</th>
                            </tr>
                            </thead>
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

<!-- DataTables JavaScript -->
<script src="/assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assets/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
<script src="/assets/vendor/datatables-responsive/dataTables.responsive.js"></script>

<script src="/assets/vendor/moment/min/moment.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="/assets/js/sb-admin-2.js"></script>
<script>
    $(document).ready(function () {
        var groupDataTable = $('#dataTable').DataTable({
            "bProcessing": true,
            "processing": true,
            "serverSide": true,
            "searching": true,
            ajax: {
                url: '/user/group/list/dataTables',
                method: 'POST',
                contentType: 'application/json',
                dataType: 'json',
                data: function (data) {
                    return JSON.stringify(data);
                }
            },
            columns: [{
                data: 'id',
                name: 'id',
                orderable: false
            }, {
                data: 'name',
                name: 'name',
                orderable: false,
                //searchable: false,
                render: function (data, type, full, meta) {
                    var uid = full['id'];
                    return '<a href="/user/group/details/' + uid + '">' + data + '</a>';
                }
            }, {
                data: 'officeId',
                name: 'officeId',
                orderable: false,
                //searchable: false,
                render: function (data, type, full, meta) {
                    return data;
                }
            }, {
                data: 'createdTime',
                name: 'createdTime',
                //searchable: false,
                render: function (data, type, full, meta) {
                    var result = moment().format("YYYY-MM-DD HH:mm:ss");
                    return result;
                }
            }],
            //"sDom": '<"dt-panelmenu clearfix"lfr>t<"dt-panelfooter clearfix"ip>',
            "language": {
                "processing": "正在努力加载中...",
                "lengthMenu": "显示 _MENU_ 项结果 ",
                "zeroRecords": "没有匹配结果",
                "info": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "infoEmpty": "显示第 0 至 0 项结果，共 0 项",
                "infoFiltered": "(由 _MAX_ 项结果过滤)",
                "infoPostFix": "",
                "url": "",
                "sSearch": "搜索",
                "paginate": {
                    "first": "首页",
                    "previous": "上一页",
                    "next": "下一页",
                    "last": "末页"
                }
            }
        });//datatable END

        //搜索查询
        $("#search-btn").click(function () {
            var office=$("#search-office").val();
            groupDataTable.column(2).search(office).draw();
        });
    });
</script>
</body>

</html>
