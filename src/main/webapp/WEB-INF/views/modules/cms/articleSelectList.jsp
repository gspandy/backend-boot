<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>选择文章</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        var str="";
        var ids="";
        function getIds() {
            $("#contentTable").find("tbody tr td input.i-checks:checkbox").each(function () {
                if (true == $(this).is(':checked')) {
                    str += $(this).attr("id") + ",";
                }
            });
            if (str.substr(str.length - 1) == ',') {
                ids = str.substr(0, str.length - 1);
            }
            return ids;
        }

    </script>
</head>
<body>
<div class="wrapper wrapper-content">
    <sys:message content="${message}"/>
    <!-- 查询条件 -->
    <div class="row">
        <div class="col-sm-12">
            <form:form id="searchForm" modelAttribute="cmsArticle" action="${ctx}/cms/article/selectList" method="post" class="form-inline">
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                <table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
                <div class="form-group">
                    <span>栏目：</span>
                    <sys:treeselect id="categoryId" name="categoryId" value="${cmsArticle.categoryId}" labelName="categoryName"
                                    labelValue="${cmsArticle.categoryName}" title="栏目" url="/cms/category/treeData"
                                    module="article" notAllowSelectRoot="false" cssClass="form-control"/>
                    <span>标题：</span>
                    <form:input path="title" htmlEscape="false" maxlength="50" class="form-control"/>
                    <button  class="btn btn-primary btn-outline btn-sm " onclick="searchAll()" ><i class="fa fa-search"></i> 查询</button>
                    <button  class="btn btn-primary btn-outline btn-sm " onclick="resetAll()" ><i class="fa fa-refresh"></i> 重置</button>
                </div>
            </form:form>
            <br/>
        </div>
    </div>

    <table id="contentTable" class="table able-bordered">
        <thead>
        <tr>
            <th>选择</th>
            <th>栏目</th>
            <th>标题</th>
            <th>权重</th>
            <th>点击数</th>
            <th>发布者</th>
            <th>更新时间</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.list}" var="article">
            <tr>
                <td><input type="checkbox" id="${article.id}" class="i-checks"></td>
                <td><a href="javascript:" onclick="$('#categoryId').val('${article.categoryId}');$('#categoryName').val('${article.categoryName}');$('#searchForm').submit();return false;">
                        ${article.categoryName}</a></td>
                <td><a href="#" onclick="openDialogView('查看', '${ctx}/cms/article/form?id=${article.id}')">
                    ${fns:abbr(article.title,40)}</a></td>
                <td>${article.weight}</td>
                <td>${article.hits}</td>
                <td>${article.createBy}</td>
                <td><fmt:formatDate value="${article.updateTime}" type="both"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <table:page page="${page}"/>
</div>
</body>
</html>