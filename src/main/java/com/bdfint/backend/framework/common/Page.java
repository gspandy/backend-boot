/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */

package com.bdfint.backend.framework.common;

import com.bdfint.backend.framework.util.CookieUtils;
import com.bdfint.backend.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/**
 * 分页信息
 *
 * @author lufengcheng
 * @date 2016-01-15 09:56:22
 */
public class Page<T> implements Serializable {

    private static final long serialVersionUID = 1L;

    private int pageNum = 0; // 当前页码
    private int pageSize = Global.PAGE_SIZE;    // 页面大小，设置为“-1”表示不进行分页（分页无效）

    private int count; // 总记录数，设置为“-1”表示不查询总数
    private int displayCount; // 根据筛选条件筛选后的总记录数

    private String orderBy = "create_time desc"; // 排序字段

    private int first;  // 首页索引
    private int last;   // 尾页索引
    private int prev;   // 上一页索引
    private int next;   // 下一页索引

    private boolean firstPage;//是否是第一页
    private boolean lastPage;//是否是最后一页

    protected int length = 8;// 显示页面长度
    protected int slider = 1;// 前后显示页面长度

    private List<T> list = new ArrayList<>();

    private String funcName = "page"; // 设置点击页码调用的js函数名称，默认为page，在一页有多个分页对象时使用。

    private String funcParam = ""; // 函数的附加参数，第三个参数值。

    private String message = ""; // 设置提示消息，显示在“共n条”之后

    public Page() {
        this.pageSize = -1;
    }

    public Page(List<T> list) {
        this.list = list;
    }

    /**
     * 构造方法
     *
     * @param request  传递 repage 参数，来记住页码
     * @param response 用于设置 Cookie，记住页码
     */
    public Page(HttpServletRequest request, HttpServletResponse response) {
        this(request, response, -2);
    }

    /**
     * 构造方法
     *
     * @param request         传递 repage 参数，来记住页码
     * @param response        用于设置 Cookie，记住页码
     * @param defaultPageSize 默认分页大小，如果传递 -1 则为不分页，返回所有数据
     */
    public Page(HttpServletRequest request, HttpServletResponse response, int defaultPageSize) {
        // 设置页码参数（传递repage参数，来记住页码）
        String no = request.getParameter("pageNum");
        if (StringUtils.isNumeric(no)) {
            CookieUtils.setCookie(response, "pageNum", no);
            this.setPageNum(Integer.parseInt(no));
        } else if (request.getParameter("repage") != null) {
            no = CookieUtils.getCookie(request, "pageNum");
            if (StringUtils.isNumeric(no)) {
                this.setPageNum(Integer.parseInt(no));
            }
        }
        // 设置页面大小参数（传递repage参数，来记住页码大小）
        String size = request.getParameter("pageSize");
        if (StringUtils.isNumeric(size)) {
            CookieUtils.setCookie(response, "pageSize", size);
            this.setPageSize(Integer.parseInt(size));
        } else if (request.getParameter("repage") != null) {
            no = CookieUtils.getCookie(request, "pageSize");
            if (StringUtils.isNumeric(size)) {
                this.setPageSize(Integer.parseInt(size));
            }
        } else if (defaultPageSize != -2) {
            this.pageSize = defaultPageSize;
        }
        // 设置排序参数
        String orderBy = request.getParameter("orderBy");
        Object orderByAttr = request.getAttribute("orderBy");
        if (StringUtils.isNotBlank(orderBy)) {
            this.setOrderBy(orderBy);
        } else if (orderByAttr != null){
            this.setOrderBy(orderByAttr.toString());
        }
    }

    /**
     * 构造方法
     *
     * @param pageNum   当前页码
     * @param pageSize 分页大小
     */
    public Page(int pageNum, int pageSize) {
        this(pageNum, pageSize, 0);
    }

    /**
     * 构造方法
     *
     * @param pageNum   当前页码
     * @param pageSize 分页大小
     * @param count    数据条数
     */
    public Page(int pageNum, int pageSize, int count) {
        this(pageNum, pageSize, count, new ArrayList<T>());
    }

    /**
     * 构造方法
     *
     * @param pageNum   当前页码
     * @param pageSize 分页大小
     * @param count    数据条数
     * @param list     本页数据对象列表
     */
    public Page(int pageNum, int pageSize, int count, List<T> list) {
        this.setCount(count);
        this.setPageNum(pageNum);
        this.pageSize = pageSize;
        this.list = list;
    }

    /**
     * 初始化参数
     */
    public void initialize() {

        //1
        this.first = 1;

        this.last = count / (this.pageSize < 1 ? 20 : this.pageSize) + first - 1;

        if (this.count % this.pageSize != 0 || this.last == 0) {
            this.last++;
        }

        if (this.last < this.first) {
            this.last = this.first;
        }

        if (this.pageNum <= 1) {
            this.pageNum = this.first;
            this.firstPage = true;
        }

        if (this.pageNum >= this.last) {
            this.pageNum = this.last;
            this.lastPage = true;
        }

        if (this.pageNum < this.last - 1) {
            this.next = this.pageNum + 1;
        } else {
            this.next = this.last;
        }

        if (this.pageNum > 1) {
            this.prev = this.pageNum - 1;
        } else {
            this.prev = this.first;
        }

        //2
        if (this.pageNum < this.first) {// 如果当前页小于首页
            this.pageNum = this.first;
        }

        if (this.pageNum > this.last) {// 如果当前页大于尾页
            this.pageNum = this.last;
        }

    }

    /**
     * 默认输出当前分页标签
     * <div class="page">${page}</div>
     */
    @Override
    public String toString() {

        StringBuilder sb = new StringBuilder();
        sb.append("<div class=\"fixed-table-pagination\" style=\"display: block;\">");
        long startIndex = (pageNum - 1) * pageSize + 1;
        long endIndex = pageNum * pageSize <= count ? pageNum * pageSize : count;

        sb.append("<div class=\"pull-left pagination-detail\">");
        sb.append("<span class=\"pagination-info\">显示第 " + startIndex + " 到第 " + endIndex + " 条记录，总共 " + count + " 条记录</span>");
        sb.append("<span class=\"page-list\">每页显示 <span class=\"btn-group dropup\">");
        sb.append("<button type=\"button\" class=\"btn btn-default  btn-outline dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">");
        sb.append("<span class=\"page-size\">" + pageSize + "</span> <span class=\"caret\"></span>");
        sb.append("</button>");
        sb.append("<ul class=\"dropdown-menu\" role=\"menu\">");
        sb.append("<li class=\"" + getSelected(pageSize, 10) + "\"><a href=\"javascript:" + funcName + "(" + pageNum + ",10,'" + funcParam + "');\">10</a></li>");
        sb.append("<li class=\"" + getSelected(pageSize, 25) + "\"><a href=\"javascript:" + funcName + "(" + pageNum + ",25,'" + funcParam + "');\">25</a></li>");
        sb.append("<li class=\"" + getSelected(pageSize, 50) + "\"><a href=\"javascript:" + funcName + "(" + pageNum + ",50,'" + funcParam + "');\">50</a></li>");
        sb.append("<li class=\"" + getSelected(pageSize, 100) + "\"><a href=\"javascript:" + funcName + "(" + pageNum + ",100,'" + funcParam + "');\">100</a></li>");
        sb.append("</ul>");
        sb.append("</span> 条记录</span>");
        sb.append("</div>");

        sb.append("<div class=\"pull-right pagination-roll\">");
        sb.append("<ul class=\"pagination pagination-outline\">");
        if (pageNum == first) {// 如果是首页
            sb.append("<li class=\"paginate_button previous disabled\"><a href=\"javascript:\"><i class=\"fa fa-angle-double-left\"></i></a></li>\n");
            sb.append("<li class=\"paginate_button previous disabled\"><a href=\"javascript:\"><i class=\"fa fa-angle-left\"></i></a></li>\n");
        } else {
            sb.append("<li class=\"paginate_button previous\"><a href=\"javascript:\" onclick=\"" + funcName + "(" + first + "," + pageSize + ",'" + funcParam + "');\"><i class=\"fa fa-angle-double-left\"></i></a></li>\n");
            sb.append("<li class=\"paginate_button previous\"><a href=\"javascript:\" onclick=\"" + funcName + "(" + prev + "," + pageSize + ",'" + funcParam + "');\"><i class=\"fa fa-angle-left\"></i></a></li>\n");
        }

        int begin = pageNum - (length / 2);

        if (begin < first) {
            begin = first;
        }

        int end = begin + length - 1;

        if (end >= last) {
            end = last;
            begin = end - length + 1;
            if (begin < first) {
                begin = first;
            }
        }

        if (begin > first) {
            int i = 0;
            for (i = first; i < first + slider && i < begin; i++) {
                sb.append("<li class=\"paginate_button \"><a href=\"javascript:\" onclick=\"" + funcName + "(" + i + "," + pageSize + ",'" + funcParam + "');\">"
                        + (i + 1 - first) + "</a></li>\n");
            }
            if (i < begin) {
                sb.append("<li class=\"paginate_button disabled\"><a href=\"javascript:\">...</a></li>\n");
            }
        }

        for (int i = begin; i <= end; i++) {
            if (i == pageNum) {
                sb.append("<li class=\"paginate_button active\"><a href=\"javascript:\">" + (i + 1 - first)
                        + "</a></li>\n");
            } else {
                sb.append("<li class=\"paginate_button \"><a href=\"javascript:\" onclick=\"" + funcName + "(" + i + "," + pageSize + ",'" + funcParam + "');\">"
                        + (i + 1 - first) + "</a></li>\n");
            }
        }

        if (last - end > slider) {
            sb.append("<li class=\"paginate_button disabled\"><a href=\"javascript:\">...</a></li>\n");
            end = last - slider;
        }

        for (int i = end + 1; i <= last; i++) {
            sb.append("<li class=\"paginate_button \"><a href=\"javascript:\" onclick=\"" + funcName + "(" + i + "," + pageSize + ",'" + funcParam + "');\">"
                    + (i + 1 - first) + "</a></li>\n");
        }

        if (pageNum == last) {
            sb.append("<li class=\"paginate_button next disabled\"><a href=\"javascript:\"><i class=\"fa fa-angle-right\"></i></a></li>\n");
            sb.append("<li class=\"paginate_button next disabled\"><a href=\"javascript:\"><i class=\"fa fa-angle-double-right\"></i></a></li>\n");
        } else {
            sb.append("<li class=\"paginate_button next\"><a href=\"javascript:\" onclick=\"" + funcName + "(" + next + "," + pageSize + ",'" + funcParam + "');\">"
                    + "<i class=\"fa fa-angle-right\"></i></a></li>\n");
            sb.append("<li class=\"paginate_button next\"><a href=\"javascript:\" onclick=\"" + funcName + "(" + last + "," + pageSize + ",'" + funcParam + "');\">"
                    + "<i class=\"fa fa-angle-double-right\"></i></a></li>\n");
        }

        sb.append("</ul>");
        sb.append("</div>");
        sb.append("</div>");

        return sb.toString();
    }

    private String getSelected(int pageNo, int selectedPageNo) {
        if (pageNo == selectedPageNo) {
            //return "selected";
            return "active";
        } else {
            return "";
        }

    }

    /**
     * 获取分页HTML代码
     */
    public String getHtml() {
        return toString();
    }

    /**
     * 获取设置总数
     */
    public int getCount() {
        return count;
    }

    /**
     * 设置数据总数
     */
    public void setCount(int count) {
        this.count = count;
        if (pageSize >= count) {
            pageNum = 1;
        }
    }

    /**
     * 获取当前页码
     */
    public int getPageNum() {
        return pageNum;
    }

    /**
     * 设置当前页码
     */
    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    /**
     * 获取页面大小
     */
    public int getPageSize() {
        return pageSize;
    }

    /**
     * 设置页面大小（最大500）
     */
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize <= 0 ? 10 : pageSize > 500 ? 500 : pageSize;
    }

    /**
     * 首页索引
     */
    @JsonIgnore
    public int getFirst() {
        return first;
    }

    /**
     * 尾页索引
     */
    @JsonIgnore
    public int getLast() {
        return last;
    }

    /**
     * 获取页面总数
     *
     * @return getLast();
     */
    @JsonIgnore
    public int getTotalPage() {
        return getLast();
    }

    /**
     * 是否为第一页
     */
    @JsonIgnore
    public boolean isFirstPage() {
        return firstPage;
    }

    /**
     * 是否为最后一页
     */
    @JsonIgnore
    public boolean isLastPage() {
        return lastPage;
    }

    /**
     * 上一页索引值
     */
    @JsonIgnore
    public int getPrev() {
        if (isFirstPage()) {
            return pageNum;
        } else {
            return pageNum - 1;
        }
    }

    /**
     * 下一页索引值
     */
    @JsonIgnore
    public int getNext() {
        if (isLastPage()) {
            return pageNum;
        } else {
            return pageNum + 1;
        }
    }

    /**
     * 获取本页数据对象列表
     *
     * @return List<T>
     */
    public List<T> getList() {
        return list;
    }

    /**
     * 设置本页数据对象列表
     */
    public Page<T> setList(List<T> list) {
        this.list = list;
        initialize();
        return this;
    }

    /**
     * 获取查询排序字符串
     */
    @JsonIgnore
    public String getOrderBy() {
        // SQL过滤，防止注入
        String reg = "(?:')|(?:--)|(/\\*(?:.|[\\n\\r])*?\\*/)|"
                + "(\\b(select|update|and|or|delete|insert|trancate|char|into|substr|ascii|declare|exec|count|master|into|drop|execute)\\b)";
        Pattern sqlPattern = Pattern.compile(reg, Pattern.CASE_INSENSITIVE);
        if (sqlPattern.matcher(orderBy).find()) {
            return "";
        }
        return orderBy;
    }

    /**
     * 设置查询排序，标准查询有效， 实例： updatedate desc, name asc
     */
    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

    /**
     * 获取点击页码调用的js函数名称
     * function ${page.funcName}(pageNum){location="${ctx}/list-${category.id}${urlSuffix}?pageNum="+i;}
     *
     * @return
     */
    @JsonIgnore
    public String getFuncName() {
        return funcName;
    }

    /**
     * 设置点击页码调用的js函数名称，默认为page，在一页有多个分页对象时使用。
     *
     * @param funcName 默认为page
     */
    public void setFuncName(String funcName) {
        this.funcName = funcName;
    }

    /**
     * 获取分页函数的附加参数
     */
    @JsonIgnore
    public String getFuncParam() {
        return funcParam;
    }

    /**
     * 设置分页函数的附加参数
     */
    public void setFuncParam(String funcParam) {
        this.funcParam = funcParam;
    }

    /**
     * 获取提示消息，显示在“共n条”之后
     */
    public String getMessage() {
        return message;
    }
    /**
     * 设置提示消息，显示在“共n条”之后
     */
    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * 分页是否有效
     *
     * @return this.pageSize==-1
     */
    @JsonIgnore
    public boolean isDisabled() {
        return this.pageSize == -1;
    }

    /**
     * 是否进行总数统计
     *
     * @return this.count==-1
     */
    @JsonIgnore
    public boolean isNotCount() {
        return this.count == -1;
    }

    /**
     * 获取 Hibernate FirstResult
     */
    public int getFirstResult() {
        int firstResult = (getPageNum() - 1) * getPageSize();
        if (firstResult >= getCount()) {
            firstResult = 0;
        }
        return firstResult;
    }

    /**
     * 获取 Hibernate MaxResults
     */
    public int getMaxResults() {
        return getPageSize();
    }


    public int getDisplayCount() {
        return displayCount;
    }

    public void setDisplayCount(int displayCount) {
        this.displayCount = displayCount;
    }


}
