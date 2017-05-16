<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<ul class="nav navbar-top-links navbar-right">
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            <shiro:principal/>
            <i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-user">
            <li><a href="${pageContext.request.contextPath}/emp/profile"><i class="fa fa-user fa-fw"></i> 个人资料</a>
            </li>
            <li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置</a>
            </li>
            <li class="divider"></li>
            <li><a href="${pageContext.request.contextPath}/emp/logout"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
            </li>
        </ul>
        <!-- /.dropdown-user -->
    </li>
    <!-- /.dropdown -->
</ul>
