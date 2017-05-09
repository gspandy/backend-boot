<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<%@ attribute name="page" type="com.github.pagehelper.PageInfo" required="true" %>
<%-- 表格分页工具栏，使用方法： 原样输出page --%>
<div class="fixed-table-pagination" style="display: block;">
    <div class="pull-left pagination-detail">
        <span class="pagination-info">显示第 ${page.startRow} 到第 ${page.endRow} 条记录，总共 ${page.total} 条记录</span>
        <span class="page-list">每页显示 <span class="btn-group dropup">
      <button type="button" class="btn btn-default  btn-outline dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
        <span class="page-size">${page.pageSize}</span> <span class="caret"></span>
      </button>
      <ul class="dropdown-menu" role="menu">
          <li class="${page.pageSize eq 10 ? 'active' : ''}"><a href="javascript:page('${page.pageNum}',10);">10</a></li>
          <li class="${page.pageSize eq 25 ? 'active' : ''}"><a href="javascript:page('${page.pageNum}',25);">25</a></li>
          <li class="${page.pageSize eq 50 ? 'active' : ''}"><a href="javascript:page('${page.pageNum}',50);">50</a></li>
          <li class="${page.pageSize eq 100 ? 'active' : ''}"><a href="javascript:page('${page.pageNum}',100);">100</a></li>
      </ul>
    </span> 条记录</span>
    </div>
    <div class="pull-right pagination-roll">
        <ul class="pagination pagination-outline">
            <c:choose>
            <c:when test="${page.isFirstPage}">
                <li class="paginate_button previous disabled"><a href="javascript:"><i class="fa fa-angle-double-left"></i></a></li>
                <li class="paginate_button previous disabled"><a href="javascript:"><i class="fa fa-angle-left"></i></a></li>
            </c:when>
            <c:otherwise>
                <li class="paginate_button previous"><a href="javascript: page('${page.firstPage}', '${page.pageSize}');"><i class="fa fa-angle-double-left"></i></a></li>
                <li class="paginate_button previous"><a href="javascript: page('${page.prePage}', '${page.pageSize}');"><i class="fa fa-angle-left"></i></a></li>
            </c:otherwise>
            </c:choose>

            <c:forEach items="${page.navigatepageNums}" var="num" >
                <c:choose>
                <c:when test="${num == page.pageNum}">
                    <li class="paginate_button active"><a href="javascript:">${num}</a></li>
                </c:when>
                <c:otherwise>
                    <li class="paginate_button"><a href="javascript: page('${num}', '${page.pageSize}');">${num}</a></li>
                </c:otherwise>
                </c:choose>
            </c:forEach>

            <c:choose>
            <c:when test="${page.isLastPage}">
                <li class="paginate_button next disabled"><a href="javascript:"><i class="fa fa-angle-right"></i></a></li>
                <li class="paginate_button next disabled"><a href="javascript:"><i class="fa fa-angle-double-right"></i></a></li>
            </c:when>
            <c:otherwise>
                <li class="paginate_button next"><a href="javascript: page('${page.nextPage}', '${page.pageSize}');"><i class="fa fa-angle-right"></i></a></li>
                <li class="paginate_button next"><a href="javascript: page('${page.lastPage}', '${page.pageSize}');"><i class="fa fa-angle-double-right"></i></a></li>
            </c:otherwise>
            </c:choose>
        </ul>
    </div>
</div>
<!-- pagination的css样式设定-->
<style>
    .fixed-table-pagination {
        padding-bottom: 30px;
    }
    .fixed-table-pagination div.pagination,
    .fixed-table-pagination div.pagination-roll,
    .fixed-table-pagination .pagination-detail {
        margin-top: 0px;
        margin-bottom: 10px;
    }

    .fixed-table-pagination div.pagination-roll .pagination,
    .fixed-table-pagination div.pagination .pagination {
        margin: 0;
    }

    .fixed-table-pagination .pagination a {
        padding: 6px 12px;
        line-height: 1.428571429;
    }

    .fixed-table-pagination .pagination-info {
        line-height: 34px;
        margin-right: 5px;
    }

    .fixed-table-pagination .btn-group {
        position: relative;
        display: inline-block;
        vertical-align: middle;
    }

    .fixed-table-pagination .dropup .dropdown-menu {
        margin-bottom: 0;
    }

    .fixed-table-pagination .page-list {
        display: inline-block;
    }

</style>