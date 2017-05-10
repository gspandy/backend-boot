<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>菜单管理</title>
    <meta name="decorator" content="default"/>
    <%@include file="/WEB-INF/views/include/treetable.jsp" %>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#treeTable").treeTable({expandLevel : 4,column:0}).show();
        });
        function updateSort() {
            loading('正在提交，请稍等...');
            $("#listForm").attr("action", "${ctx}/sys/menu/updateSort");
            $("#listForm").submit();
        }
        function refresh(){//刷新
            window.location="${ctx}/sys/menu/list";
        }
    </script>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content">
    <div class="ibox">
        <div class="ibox-title">
            <h5>菜单列表 </h5>
            <div class="ibox-tools">
            </div>
        </div>
        <div class="ibox-content">
            <sys:message content="${message}"/>
            <!-- 工具栏 -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="pull-left">
                        <shiro:hasPermission name="sys:menu:edit">
                            <table:addRow url="${ctx}/sys/menu/form" title="菜单" /><!-- 增加按钮 -->
                            <button id="btnSubmit" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="left"
                                    onclick="updateSort()"><i class="fa fa-save"></i> 保存排序</button>
                        </shiro:hasPermission>
                        <button class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="left"
                                onclick="refresh()"><i class="glyphicon glyphicon-repeat"></i> 刷新</button>
                    </div>
                </div>
            </div>

            <!-- 数据表 -->
            <form id="listForm" method="post">
                <table id="treeTable" class="table table-striped table-bordered table-hover table-condensed dataTables-example dataTable">
                    <thead>
                        <tr>
                            <th>名称</th>
                            <th>链接</th>
                            <th>排序</th>
                            <th>可见</th>
                            <th>权限标识</th>
                            <shiro:hasPermission name="sys:menu:edit">
                                <th>操作</th>
                            </shiro:hasPermission>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="bean">
                        <tr id="${bean.id}" pId="${bean.parentId}">
                            <td nowrap>
                                <i class="icon-${not empty bean.icon ? bean.icon : ' hide'}"></i>
                                <a  href="#" onclick="openDialogView('查看菜单', '${ctx}/sys/menu/form?id=${bean.id}','800px', '500px')">${bean.name}</a>
                            </td>
                            <td title="${bean.href}">${fns:abbr(bean.href,30)}</td>
                            <td>
                                <shiro:hasPermission name="sys:menu:edit">
                                    <input type="hidden" name="ids" value="${bean.id}"/>
                                    <input type="text" name="sortIds" value="${bean.sort}" class="form-control" style="width:100px;margin:0;padding:0;text-align:center;">
                                </shiro:hasPermission>
                                <shiro:lacksPermission name="sys:menu:edit">
                                ${bean.sort}
                                </shiro:lacksPermission>
                            </td>
                            <td>${bean.isShow eq '1'?'显示':'隐藏'}</td>
                            <td title="${bean.permission}">${fns:abbr(bean.permission,30)}</td>
                            <shiro:hasPermission name="sys:menu:edit">
                            <td nowrap>
                                    <a href="#" onclick="openDialog('修改菜单', '${ctx}/sys/menu/form?id=${bean.id}','800px', '500px')" class="btn btn-link btn-xs" ><i class="fa fa-edit"></i> 修改</a>
                                    <a href="#" onclick="return confirmx('要删除该菜单及所有子菜单项吗？', '${ctx}/sys/menu/delete?id=${bean.id}')" class="btn btn-link btn-xs" ><i class="fa fa-trash"></i> 删除</a>
                                    <a href="#" onclick="openDialog('添加下级菜单', '${ctx}/sys/menu/form?parentId=${bean.id}','800px', '500px')" class="btn btn-link btn-xs" ><i class="fa fa-plus"></i> 添加下级菜单</a>
                            </td>
                            </shiro:hasPermission>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>