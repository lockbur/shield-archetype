<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li>
                <a href="/dashboard"><i class="fa fa-dashboard fa-fw"></i> 控制台</a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-bar-chart-o fa-fw"></i>
                    用户管理
                    <span class="fa arrow"></span>
                </a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="${pageContext.request.contextPath}/user/list">个人用户</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/user/enterprise">企业用户</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/user/group/list">用户组</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-bar-chart-o fa-fw"></i>
                    黑名单管理
                    <span class="fa arrow"></span>
                </a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="${pageContext.request.contextPath}/black/list">黑名单列表</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/overdue/list">逾期用户</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-cog"></i> 系统设置<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="${pageContext.request.contextPath}/code/list">字典管理</a>
                    </li>
                    <li><a href="login.html">部门管理</a></li>
                    <li><a href="/role/list">角色管理</a></li>
                    <li><a href="login.html">权限管理</a></li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>
