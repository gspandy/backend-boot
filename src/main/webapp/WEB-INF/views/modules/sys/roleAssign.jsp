<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
	<title>分配角色</title>
	<meta name="decorator" content="default"/>
</head>
<body>

	<div class="wrapper wrapper-content">
	<div class="container-fluid breadcrumb">
		<div class="row-fluid span12">
			<span class="span4">角色名称: <b>${role.name}</b></span>
			<span class="span4">角色标记: ${role.enname}</span>
		</div>
	</div>
	<sys:message content="${message}"/>
	<div class="breadcrumb">
		<form id="assignRoleForm" action="${ctx}/sys/role/assignRole" method="post" class="hide">
			<input type="hidden" name="id" value="${role.id}"/>
			<input id="ids" type="hidden" name="ids" value=""/>
		</form>
		<button id="assignButton" type="submit" class="btn btn-outline btn-primary btn-sm" title="添加人员">
            <i class="fa fa-plus"></i> 添加人员
        </button>
		<script type="text/javascript">
			$("#assignButton").click(function(){
				top.layer.open({
					type: 2,
					area: ['800px', '680px'],
					title:"选择用户",
					maxmin: true, //开启最大化最小化按钮
					content: "${ctx}/sys/role/selectUser?id=${role.id}" ,
					btn: ['确定', '关闭'],
					yes: function(index, layero){
					    var ids = layero.find("iframe")[0].contentWindow.getIds();
						if(ids === "") {
							top.$.jBox.tip("未给角色【${role.name}】分配新成员！", 'info');
							top.layer.close(index);
						}else{
							// 执行保存
							loading('正在提交，请稍等...');
							$('#ids').val(ids);
							$('#assignRoleForm').submit();
							top.layer.close(index);
						}
					  },
					  cancel: function(index){
					  }
				});
			});
		</script>
	</div>
	<table id="contentTable" class="table table-striped table-bordered table-hover table-condensed dataTables-example dataTable">
		<thead>
			<tr>
				<th>用户名</th>
				<th>姓名</th>
				<th>手机</th>
				<th>邮箱</th>
				<shiro:hasPermission name="sys:user:edit">
				<th>操作</th>
				</shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${userList}" var="user">
			<tr>
				<td>${user.loginName}</td>
				<td>${user.name}</td>
				<td>${user.mobile}</td>
				<td>${user.email}</td>
				<shiro:hasPermission name="sys:role:edit">
				<td>
					<a href="#"
						onclick="return confirmx('确认要将用户<b>[${user.name}]</b>从<b>[${role.name}]</b>角色中移除吗？',
                                '${ctx}/sys/role/outRole?userId=${user.id}&roleId=${role.id}')">移除</a>
				</td>
				</shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
</body>
</html>
