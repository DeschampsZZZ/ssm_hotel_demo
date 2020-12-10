<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/img/avatar3.png"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>
					<security:authentication property="principal.username"></security:authentication>
				</p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index"><a
				href="${pageContext.request.contextPath}/pages/main.jsp"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>



			<li class="treeview">
				<a href="#">
					<i class="fa fa-laptop"></i> <span>前台管理</span>
					<span class="pull-right-container">
							<i class="fa fa-angle-left pull-right"></i>
						</span>
				</a>
				<ul class="treeview-menu">

					<li id="check-in">
						<a href="${pageContext.request.contextPath}/room/findAllRoom.do">
							<i class="fa fa-circle-o"></i> 入住与离店办理
						</a>
					</li>
					<li id="check-out">
						<a href="${pageContext.request.contextPath}/orders/findAll.do">
							<i class="fa fa-circle-o"></i> 订单信息查询
						</a>
					</li>
				</ul>
			</li>

			<li class="treeview">
				<a href="#">
					<i class="fa fa-book"></i> <span>客房信息管理</span>
					<span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
				</a>
				<ul class="treeview-menu">

					<li id="room-query">
						<a href="${pageContext.request.contextPath}/room/findAll.do">
							<i class="fa fa-circle-o"></i> 客房信息查询
						</a>
					</li>

					<li id="room-added">
						<a href="${pageContext.request.contextPath}/pages/room-add.jsp">
							<i class="fa fa-circle-o"></i> 客房信息添加
						</a>
					</li>

				</ul>
			</li>

 			<security:authorize access="hasRole('ADMIN') or hasRole('BOSS')">
			<li class="treeview">
				<a href="#">
					<i class="fa fa-cogs"></i> <span>员工信息管理</span>
					<span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
				</a>
				<ul class="treeview-menu">

					<li id="employee-query">
						<a href="${pageContext.request.contextPath}/user/findAll.do">
							<i class="fa fa-circle-o"></i> 员工信息
						</a>
					</li>
					<li id="role-info">
						<a href="${pageContext.request.contextPath}/role/findAll.do">
							<i class="fa fa-circle-o"></i> 角色管理
						</a>
					</li>
					<li id="permission-settings">
						<a href="${pageContext.request.contextPath}/permission/findAll.do">
							<i class="fa fa-circle-o"></i> 权限设置
						</a>
					</li>

				</ul>
			</li>
			</security:authorize>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>
