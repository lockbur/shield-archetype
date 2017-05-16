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


    <%--x-editable--%>
    <link href="/assets/vendor/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap3-editable/inputs-ext/typeaheadjs/lib/typeahead.js-bootstrap.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap3-editable/inputs-ext/wysihtml5/bootstrap-wysihtml5-0.0.2/bootstrap-wysihtml5-0.0.2.css" rel="stylesheet">

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
                    <li class="list-group-item text-muted">个人资料</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>姓名</strong></span> 李达康</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>手机</strong></span>
                        13661014724
                    </li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>邮箱</strong></span>
                        845885222@qq.com
                    </li>
                    <li class="list-group-item text-right">
                        <span class="pull-left">
                            <strong>企业账户</strong>
                        </span>
                        <c:if test="${user.enterprise}">
                            是
                        </c:if>
                        <c:if test="${not user.enterprise}">
                            否
                        </c:if>
                    </li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>创建时间</strong></span>
                        <fmt:formatDate value="${user.createdTime}" pattern="yyyy-MM-dd HH:ss"></fmt:formatDate>
                    </li>

                </ul>

                <div class="panel panel-default">
                    <div class="panel-heading">公司网站 <i class="fa fa-link fa-1x"></i></div>
                    <div class="panel-body"><a href="http://jingyinwu.com">jingyinwu.com</a></div>
                </div>


                <ul class="list-group">
                    <li class="list-group-item text-muted">借款信息 <i class="fa fa-dashboard fa-1x"></i></li>
                    <li class="list-group-item">
                        <i class="fa fa-comment fa-fw"></i>
                        申请次数
                        <span class="pull-right text-muted small "><em class="badge">4</em></span>
                    </li>
                    <li class="list-group-item">
                        <i class="fa fa-comment fa-fw"></i>
                        逾期次数
                        <span class="pull-right text-muted small "><em class="badge">1</em></span>
                    </li>
                    <li class="list-group-item">
                        <i class="fa fa-comment fa-fw"></i>
                        违约次数
                        <span class="pull-right text-muted small "><em class="badge">0</em></span>
                    </li>
                </ul>
            </div>
            <div class="col-sm-9">

                <ul class="nav nav-tabs" id="myTab">
                    <li class="active"><a href="#home" data-toggle="tab" aria-expanded="false">基本信息</a></li>
                    <li class=""><a href="#messages" data-toggle="tab" aria-expanded="false">资产信息</a></li>
                    <li class=""><a href="#settings" data-toggle="tab" aria-expanded="true">工作信息</a></li>
                    <li class=""><a href="#userlinkmessages" data-toggle="tab" aria-expanded="true">联系人信息</a></li>
                    <li class=""><a href="#settings" data-toggle="tab" aria-expanded="true">身份认证</a></li>
                </ul>

                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <form class="form" class="form-horizontal" action="##" method="post">
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="first_name"><h4>姓名</h4></label>
                                    <input type="text" class="form-control" name="name" id="name" value="${user.name}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="last_name"><h4>手机号码</h4></label>
                                    <input type="text" class="form-control" name="mobile" id="mobile"
                                           value="${user.mobile.value}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="phone"><h4>邮箱</h4></label>
                                    <input type="text" class="form-control" name="email" id="email"
                                           value="${user.email}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="mobile"><h4>身份证号码</h4></label>
                                    <input type="text" class="form-control" name="idCard" id="idCard"
                                           value="${user.idCard.value}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="email"><h4>推荐人</h4></label>
                                    <input type="email" class="form-control" name="invite">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="email"><h4>性别</h4></label>
                                    <select class="form-control" id="gender" name="gender">
                                        <option
                                                <c:if test="${user.gender =='MALE'}">selected</c:if> value="MALE">男
                                        </option>
                                        <option
                                                <c:if test="${user.gender =='FEMALE'}">selected</c:if> value="FEMALE">女
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="password"><h4>出生日期</h4></label>
                                    <input type="text" class="form-control" name="birthDate" value="1991-08-08">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="password"><h4>婚姻状况</h4></label>
                                    <select class="form-control" id="maritalStatus" name="maritalStatus">
                                        <option
                                                <c:if test="${user.maritalStatus =='MARRIED'}">selected</c:if>
                                                value="MALE">已婚
                                        </option>
                                        <option
                                                <c:if test="${user.maritalStatus =='SINGLE'}">selected</c:if>
                                                value="FEMALE">未婚
                                        </option>
                                        <option
                                                <c:if test="${user.maritalStatus =='DIVORCED'}">selected</c:if>
                                                value="FEMALE">离异
                                        </option>
                                        <option
                                                <c:if test="${user.maritalStatus =='SEPARATED'}">selected</c:if>
                                                value="FEMALE">分居
                                        </option>
                                        <option
                                                <c:if test="${user.maritalStatus =='WIDOWED'}">selected</c:if>
                                                value="FEMALE">丧偶
                                        </option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="password"><h4>有无子女</h4></label>
                                    <input type="password" class="form-control" name="password">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="password2"><h4>所在行业</h4></label>
                                    <select class="form-control" data-provider="cjax" data-code-id="1"></select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                    <button class="btn btn-lg btn-success" type="submit">
                                        <i class="glyphicon glyphicon-ok-sign"></i> 保存修改
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div><!--/tab-pane-->
                    <div class="tab-pane" id="messages">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <table id="user" class="table table-bordered table-striped">
                                    <tbody>
                                    <tr>
                                        <td width="20%">公司名称</td>
                                        <td width="80%">
                                            <a href="#"
                                               id="username"
                                               class="editable editable-click"
                                               data-type="text"
                                               data-emptytext="未填写"
                                               data-pk="1"
                                               data-title="公司名称"
                                               style="display: inline;">
                                                北京波巴布信息技术有限责任公司
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>公司类别</td>
                                        <td>
                                            <a href="#"
                                               id="firstname"
                                               class="editable editable-click editable-empty"
                                               data-type="text"
                                               data-pk="1"
                                               data-placement="right"
                                               data-title="公司类别"
                                               data-emptytext="未填写"
                                               style="display: inline;">

                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>所属行业</td>
                                        <td><a href="#" id="sex" data-type="select" data-pk="1" data-value=""
                                               data-title="Select sex" class="editable editable-click"
                                               style="color: gray;">not selected</a></td>
                                    </tr>
                                    <tr>
                                        <td>公司规模</td>
                                        <td><a href="#" id="group" data-type="select" data-pk="1" data-value="5"
                                               data-source="/groups" data-title="Select group"
                                               class="editable editable-click" style="display: inline;">Admin</a></td>
                                    </tr>
                                    <tr>
                                        <td>公司电话</td>
                                        <td><a href="#" id="status" data-type="select" data-pk="1" data-value="0"
                                               data-source="/status" data-title="Select status"
                                               class="editable editable-click">Active</a></td>
                                    </tr>

                                    <tr>
                                        <td>公司地址</td>
                                        <td>
                                            <span class="notready">not implemented for Bootstrap 3 yet</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>职业状态</td>
                                        <td><a href="#" id="dob" data-type="combodate" data-value="1984-05-15"
                                               data-format="YYYY-MM-DD" data-viewformat="DD/MM/YYYY"
                                               data-template="D / MMM / YYYY" data-pk="1"
                                               data-title="Select Date of birth" class="editable editable-click">15/05/1984</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>具体职位</td>
                                        <td><a href="#" id="event" data-type="combodate"
                                               data-template="D MMM YYYY  HH:mm" data-format="YYYY-MM-DD HH:mm"
                                               data-viewformat="MMM D, YYYY, HH:mm" data-pk="1"
                                               data-title="Setup event date and time"
                                               class="editable editable-click editable-empty">Empty</a></td>
                                    </tr>
                                    <tr>
                                        <td>月收入</td>
                                        <td><a href="#" id="comments" data-type="textarea" data-pk="1"
                                               data-placeholder="Your comments here..." data-title="Enter comments"
                                               class="editable editable-pre-wrapped editable-click">awesome
                                            user!</a></td>
                                    </tr>
                                    <tr>
                                        <td>工作年限</td>
                                        <td><a href="#" id="state2" data-type="typeaheadjs" data-pk="1"
                                               data-placement="right" data-title="Start typing State.."
                                               class="editable editable-click">California</a></td>
                                    </tr>


                                    <tr>
                                        <td>工作省份</td>
                                        <td><a href="#" id="fruits" data-type="checklist" data-value="2,3"
                                               data-title="Select fruits" class="editable editable-click">peach<br>apple</a>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>工作城市</td>
                                        <td><a href="#" id="tags" data-type="select2" data-pk="1"
                                               data-title="Enter tags" class="editable editable-click">html,
                                            javascript</a></td>
                                    </tr>

                                    <tr>
                                        <td>工作邮箱</td>
                                        <td><a href="#" id="country" data-type="select2" data-pk="1" data-value="BS"
                                               data-title="Select country" class="editable editable-click">Bahamas</a>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>

                                <form method="get" class="form-horizontal">
                                    <div class="hr-line-dashed"></div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">是否有房 </label>
                                        <div class="col-sm-3">
                                            <label class="radio-inline">
                                                <input type="radio" value="true" checked="">是
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" value="false">否
                                            </label>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">有无房贷 </label>
                                        <div class="col-sm-3">
                                            <label class="radio-inline">
                                                <input type="radio" value="true" checked="">没有
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" value="false">有
                                            </label>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="form-group clearfix">
                                        <label class="col-sm-2 control-label">是否有车 </label>
                                        <div class="col-sm-3">
                                            <label class="radio-inline">
                                                <input type="radio" name="optionsRadiosInline" id="" value="true"
                                                       checked="">是
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optionsRadiosInline" id="" value="false">否
                                            </label>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">有无车贷 </label>
                                        <div class="col-sm-3">
                                            <label class="radio-inline">
                                                <input type="radio" value="true" checked="">是
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" value="false">否
                                            </label>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="form-group"><label class="col-sm-2 control-label">Button addons</label>

                                        <div class="col-sm-10">
                                            <div class="input-group m-b"><span class="input-group-btn">
                                                <button type="button" class="btn btn-primary">Go!</button> </span>
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-2">
                                            <button class="btn btn-white" type="submit">Cancel</button>
                                            <button class="btn btn-primary" type="submit">Save changes</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div><!--/tab-pane-->

                    <div class="tab-pane" id="userlinkmessages">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>UID</th>
                                <th>姓名</th>
                                <th>年龄</th>
                                <th>关系</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${userFamilyLinkList}" var="userlink">
                                <tr>
                                    <td>${userlink.userId}</td>
                                    <td>${userlink.name}</td>
                                    <td>${userlink.age}</td>
                                    <td>${userlink.relation.key}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <div class="tab-pane" id="settings">
                        <form class="form-horizontal" action="##" method="post" id="registrationForm">
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">公司名称 </label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" name="last_name" id="last_name">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">公司类别 </label>
                                <div class="col-sm-3">

                                    <select class="form-control" id="gender" name="gender">
                                        <option
                                                <c:if test="${user.gender =='MALE'}">selected</c:if> value="MALE">男
                                        </option>
                                        <option
                                                <c:if test="${user.gender =='FEMALE'}">selected</c:if> value="FEMALE">女
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">所属行业 </label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" name="last_name" id="last_name">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">公司规模 </label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" name="last_name" id="last_name">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">公司电话 </label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" name="last_name" id="last_name">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">公司地址 </label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" name="last_name" id="last_name">
                                </div>
                            </div>
                        </form>
                    </div>

                </div><!--/tab-pane-->
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
<script src="/assets/vendor/moment/min/moment.min.js"></script>


<script src="/assets/vendor/bootstrap3-editable/js/bootstrap-editable.js"></script>

<script src="/assets/vendor/bootstrap3-editable/inputs-ext/typeaheadjs/lib/typeahead.js"></script>
<script src="/assets/vendor/bootstrap3-editable/inputs-ext/typeaheadjs/typeaheadjs.js"></script>
<!-- wysihtml5 -->
<script src="/assets/vendor/bootstrap3-editable/inputs-ext/wysihtml5/bootstrap-wysihtml5-0.0.2/wysihtml5-0.3.0.min.js"></script>
<script src="/assets/vendor/bootstrap3-editable/inputs-ext/wysihtml5/bootstrap-wysihtml5-0.0.2/bootstrap-wysihtml5-0.0.2.min.js"></script>
<script src="/assets/vendor/bootstrap3-editable/inputs-ext/wysihtml5/wysihtml5.js"></script>
<!-- Custom Theme JavaScript -->
<script src="/assets/js/sb-admin-2.js"></script>

<script>
    $(document).ready(function () {
        //defaults
        $.fn.editable.defaults.url = '/post';
        //enable / disable
        $('#enable').click(function () {
            $('#user .editable').editable('toggleDisabled');
        });

        //editables
        $('#username').editable({
            url: '/post',
            type: 'text',
            pk: 1,
            name: 'username',
            title: '公司名称'
        });

        $('#firstname').editable({
            validate: function (value) {
                if ($.trim(value) == '') return 'This field is required';
            }
        });

        $('#sex').editable({
            prepend: "not selected",
            source: [
                {value: 1, text: 'Male'},
                {value: 2, text: 'Female'}
            ],
            display: function (value, sourceData) {
                var colors = {"": "gray", 1: "green", 2: "blue"},
                        elem = $.grep(sourceData, function (o) {
                            return o.value == value;
                        });

                if (elem.length) {
                    $(this).text(elem[0].text).css("color", colors[value]);
                } else {
                    $(this).empty();
                }
            }
        });

        $('#status').editable();

        $('#group').editable({
            showbuttons: false
        });

        $('#vacation').editable({
            datepicker: {
                todayBtn: 'linked'
            }
        });

        $('#dob').editable();

        $('#event').editable({
            placement: 'right',
            combodate: {
                firstItem: 'name'
            }
        });

        $('#meeting_start').editable({
            format: 'yyyy-mm-dd hh:ii',
            viewformat: 'dd/mm/yyyy hh:ii',
            validate: function (v) {
                if (v && v.getDate() == 10) return 'Day cant be 10!';
            },
            datetimepicker: {
                todayBtn: 'linked',
                weekStart: 1
            }
        });

        $('#comments').editable({
            showbuttons: 'bottom'
        });

        $('#note').editable();
        $('#pencil').click(function (e) {
            e.stopPropagation();
            e.preventDefault();
            $('#note').editable('toggle');
        });

        $('#state').editable({
            source: ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Dakota", "North Carolina", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
        });

        $('#state2').editable({
            value: 'California',
            typeahead: {
                name: 'state',
                local: ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Dakota", "North Carolina", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
            }
        });

        $('#fruits').editable({
            pk: 1,
            limit: 3,
            source: [
                {value: 1, text: 'banana'},
                {value: 2, text: 'peach'},
                {value: 3, text: 'apple'},
                {value: 4, text: 'watermelon'},
                {value: 5, text: 'orange'}
            ]
        });

        $('#tags').editable({
            inputclass: 'input-large',
            select2: {
                tags: ['html', 'javascript', 'css', 'ajax'],
                tokenSeparators: [",", " "]
            }
        });

        var countries = [];
        $.each({
            "BD": "Bangladesh",
            "BE": "Belgium",
            "QA": "Qatar",
            "MZ": "Mozambique"
        }, function (k, v) {
            countries.push({id: k, text: v});
        });
        $('#country').editable({
            source: countries,
            select2: {
                width: 200,
                placeholder: 'Select country',
                allowClear: true
            }
        });


        $('#address').editable({
            url: '/post',
            value: {
                city: "Moscow",
                street: "Lenina",
                building: "12"
            },
            validate: function (value) {
                if (value.city == '') return 'city is required!';
            },
            display: function (value) {
                if (!value) {
                    $(this).empty();
                    return;
                }
                var html = '<b>' + $('<div>').text(value.city).html() + '</b>, ' + $('<div>').text(value.street).html() + ' st., bld. ' + $('<div>').text(value.building).html();
                $(this).html(html);
            }
        });

        $('#user .editable').on('hidden', function (e, reason) {
            if (reason === 'save' || reason === 'nochange') {
                var $next = $(this).closest('tr').next().find('.editable');
                if ($('#autoopen').is(':checked')) {
                    setTimeout(function () {
                        $next.editable('show');
                    }, 300);
                } else {
                    $next.focus();
                }
            }
        });

    });
</script>
</body>

</html>
