/*!
 * 通用公共方法
 */
$(document).ready(function () {
    
    $('.i-checks').iCheck({
        checkboxClass: 'icheckbox_square-green',
        radioClass: 'iradio_square-green',
        increaseArea: '20%'
    });
    
    try {
        // 链接去掉虚框
        $("a").bind("focus", function () {
            if (this.blur) {
                this.blur()
            }
        });
    } catch (e) {
        // blank
    }
    
    // 使用animation.css修改Bootstrap Modal
    $('.modal').appendTo("body");

    $("[data-toggle=popover]").popover();

    //折叠ibox
    $('.collapse-link').click(function () {
        var ibox = $(this).closest('div.ibox');
        var button = $(this).find('i');
        var content = ibox.find('div.ibox-content');
        content.slideToggle(200);
        button.toggleClass('fa-chevron-up').toggleClass('fa-chevron-down');
        ibox.toggleClass('').toggleClass('border-bottom');
        setTimeout(function () {
            ibox.resize();
            ibox.find('[id^=map-]').resize();
        }, 50);
    });

    //左右折叠ibox
    $('.collapse-left-link').click(function () {
        var ibox = $(this).closest('div.leftBox');
        var button = $(this).find('i');
        var content = ibox.find('div.leftBox-content');
        content.slideToggle(200);
        button.toggleClass('fa-chevron-left').toggleClass('fa-chevron-right');
        if (button.hasClass('fa-chevron-left')) {
            setTimeout(function () {
                ibox.width("180px");
                // ibox.find('[id^=map-]').resize();
            }, 200);
        } else {

            setTimeout(function () {
                ibox.width("10px");
                // ibox.find('[id^=map-]').resize();
            }, 200);

        }


    });


    //关闭ibox
    $('.close-link').click(function () {
        var content = $(this).closest('div.ibox');
        content.remove();
    });

    //判断当前页面是否在iframe中
    if (top == this) {
        var gohome = '<div class="gohome"><a class="animated bounceInUp" href="index.html?v=3.1" title="返回首页"><i class="fa fa-home"></i></a></div>';
        $('body').append(gohome);
    }
});

//animation.css
function animationHover(element, animation) {
    element = $(element);
    var close = $(element).find(".close-link");
    element.hover(
        function () {
            close.removeClass("hidden");
            element.addClass('animated ' + animation);
        },
        function () {
            //动画完成之前移除class
            window.setTimeout(function () {
                element.removeClass('animated ' + animation);
                close.addClass("hidden");

            }, 300);
        });
}

//拖动面板
function WinMove() {
    var element = "[class*=col]";
    var handle = ".ibox-title";
    var connect = "[class*=col]";
    $(element).sortable({
            handle: handle,
            connectWith: connect,
            tolerance: 'pointer',
            forcePlaceholderSize: true,
            opacity: 0.8
        }).disableSelection();
}

// 引入js和css文件
function include(id, path, file) {
    if (document.getElementById(id) == null) {
        var files = typeof file == "string" ? [file] : file;
        for (var i = 0; i < files.length; i++) {
            var name = files[i].replace(/^\s|\s$/g, "");
            var att = name.split('.');
            var ext = att[att.length - 1].toLowerCase();
            var isCSS = ext == "css";
            var tag = isCSS ? "link" : "script";
            var attr = isCSS ? " type='text/css' rel='stylesheet' " : " type='text/javascript' ";
            var link = (isCSS ? "href" : "src") + "='" + path + name + "'";
            document.write("<" + tag + (i == 0 ? " id=" + id : "") + attr + link + "></" + tag + ">");
        }
    }
}

// 获取URL地址参数
function getQueryString(name, url) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    if (!url || url == "") {
        url = window.location.search;
    } else {
        url = url.substring(url.indexOf("?"));
    }
    var r = url.substr(1).match(reg);
    if (r != null) return unescape(r[2]);
    return null;
}

//获取字典标签
function getDictLabel(data, value, defaultValue) {
    for (var i = 0; i < data.length; i++) {
        var row = data[i];
        if (row.value == value) {
            return row.label;
        }
    }
    return defaultValue;
}

// 打开一个窗体
function windowOpen(url, name, width, height) {
    var top = parseInt((window.screen.height - height) / 2, 10), left = parseInt((window.screen.width - width) / 2, 10),
        options = "location=no,menubar=no,toolbar=no,dependent=yes,minimizable=no,modal=yes,alwaysRaised=yes," +
            "resizable=yes,scrollbars=yes," + "width=" + width + ",height=" + height + ",top=" + top + ",left=" + left;
    window.open(url, name, options);
}

// 恢复提示框显示
function resetTip() {
    top.$.jBox.tip.mess = null;
}

// 关闭提示框
function closeTip() {
    top.$.jBox.closeTip();
}

//显示提示框
function showTip(mess, type, timeout, lazytime) {
    resetTip();
    setTimeout(function () {
        top.$.jBox.tip(mess, (type == undefined || type == '' ? 'info' : type), {
            opacity: 0,
            timeout: timeout == undefined ? 2000 : timeout
        });
    }, lazytime == undefined ? 500 : lazytime);
}

// 显示加载框
function loading(mess) {
    if (mess == undefined || mess == "") {
        mess = "正在提交，请稍等...";
    }
    resetTip();
    top.$.jBox.tip(mess, 'loading', {opacity: 0});
}

// 警告对话框
function alertx(mess, closed) {
    top.$.jBox.info(mess, '提示', {
        closed: function () {
            if (typeof closed == 'function') {
                closed();
            }
        }
    });
    top.$('.jbox-body .jbox-icon').css('top', '55px');
}

// 确认对话框
function confirmx(mess, href, closed) {
    top.layer.confirm(mess, {icon: 3, title: '系统提示'}, function (index) {
        //do something
        if (typeof href == 'function') {
            href();
        } else {
            resetTip(); //loading();
            window.location = href;
        }
        top.layer.close(index);
    });

//	top.$.jBox.confirm(mess,'系统提示',function(v,h,f){
//		if(v=='ok'){
//			if (typeof href == 'function') {
//				href();
//			}else{
//				resetTip(); //loading();
//				location = href;
//			}
//		}
//	},{buttonsFocus:1, closed:function(){
//		if (typeof closed == 'function') {
//			closed();
//		}
//	}});
//	top.$('.jbox-body .jbox-icon').css('top','55px');
    return false;
}

// 提示输入对话框
function promptx(title, lable, href, closed) {
    top.$.jBox("<div class='form-search' style='padding:20px;text-align:center;'>" + lable + "：<input type='text' id='txt' name='txt'/></div>", {
        title: title, submit: function (v, h, f) {
            if (f.txt == '') {
                top.$.jBox.tip("请输入" + lable + "。", 'error');
                return false;
            }
            if (typeof href == 'function') {
                href();
            } else {
                resetTip(); //loading();
                location = href + encodeURIComponent(f.txt);
            }
        }, closed: function () {
            if (typeof closed == 'function') {
                closed();
            }
        }
    });
    return false;
}

// 添加TAB页面
function addTabPage(title, url, closeable, $this, refresh) {
    top.$.fn.jerichoTab.addTab({
        tabFirer: $this,
        title: title,
        closeable: closeable == undefined,
        data: {
            dataType: 'iframe',
            dataLink: url
        }
    }).loadData(refresh != undefined);
}

// cookie操作
function cookie(name, value, options) {
    if (typeof value != 'undefined') { // name and value given, set cookie
        options = options || {};
        if (value === null) {
            value = '';
            options.expires = -1;
        }
        var expires = '';
        if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
            var date;
            if (typeof options.expires == 'number') {
                date = new Date();
                date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
            } else {
                date = options.expires;
            }
            expires = '; expires=' + date.toUTCString(); // use expires attribute, max-age is not supported by IE
        }
        var path = options.path ? '; path=' + options.path : '';
        var domain = options.domain ? '; domain=' + options.domain : '';
        var secure = options.secure ? '; secure' : '';
        document.cookie = [name, '=', encodeURIComponent(value), expires, path, domain, secure].join('');
    } else { // only name given, get cookie
        var cookieValue = null;
        if (document.cookie && document.cookie != '') {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = jQuery.trim(cookies[i]);
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) == (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
}

// 数值前补零
function pad(num, n) {
    var len = num.toString().length;
    while (len < n) {
        num = "0" + num;
        len++;
    }
    return num;
}

// 转换为日期
function strToDate(date) {
    return new Date(date.replace(/-/g, "/"));
}

// 日期加减
function addDate(date, dadd) {
    date = date.valueOf();
    date = date + dadd * 24 * 60 * 60 * 1000;
    return new Date(date);
}

//截取字符串，区别汉字和英文
function abbr(name, maxLength) {
    if (!maxLength) {
        maxLength = 20;
    }
    if (name == null || name.length < 1) {
        return "";
    }
    var w = 0;//字符串长度，一个汉字长度为2
    var s = 0;//汉字个数
    var p = false;//判断字符串当前循环的前一个字符是否为汉字
    var b = false;//判断字符串当前循环的字符是否为汉字
    var nameSub;
    for (var i = 0; i < name.length; i++) {
        if (i > 1 && b == false) {
            p = false;
        }
        if (i > 1 && b == true) {
            p = true;
        }
        var c = name.charCodeAt(i);
        //单字节加1
        if ((c >= 0x0001 && c <= 0x007e) || (0xff60 <= c && c <= 0xff9f)) {
            w++;
            b = false;
        } else {
            w += 2;
            s++;
            b = true;
        }
        if (w > maxLength && i <= name.length - 1) {
            if (b == true && p == true) {
                nameSub = name.substring(0, i - 2) + "...";
            }
            if (b == false && p == false) {
                nameSub = name.substring(0, i - 3) + "...";
            }
            if (b == true && p == false) {
                nameSub = name.substring(0, i - 2) + "...";
            }
            if (p == true) {
                nameSub = name.substring(0, i - 2) + "...";
            }
            break;
        }
    }
    if (w <= maxLength) {
        return name;
    }
    return nameSub;
}


//打开对话框(添加修改)
function openDialog(title, url, width, height, target) {
    if (typeof(width) == "undefined") {
        width = "800px";
    }
    if (typeof(height) == "undefined") {
        height = "600px";
    }
    top.layer.open({
        type: 2,
        area: [width, height],
        title: title,
        maxmin: true, //开启最大化最小化按钮
        content: url,
        btn: ['确定', '关闭'],
        yes: function (index, layero) {
            var body = top.layer.getChildFrame('body', index);
            var iframeWin = layero.find('iframe')[0]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
            var inputForm = body.find('#inputForm');
            var top_iframe;
            if (target) {
                top_iframe = target;//如果指定了iframe，则在改frame中跳转
            } else {
                top_iframe = top.getActiveTab().attr("name");//获取当前active的tab的iframe
            }
            inputForm.attr("target", top_iframe);//表单提交成功后，从服务器返回的url在当前tab中展示

            if (iframeWin.contentWindow.doSubmit()) {
                top.layer.close(index);//关闭对话框。
            }
        },
        cancel: function (index) {
        }
    });

}

//打开对话框(查看)
function openDialogView(title, url, width, height) {
    if (typeof(width) == "undefined") {
        width = "800px";
    }
    if (typeof(height) == "undefined") {
        height = "600px";
    }
    top.layer.open({
        type: 2,
        area: [width, height],
        title: title,
        maxmin: true, //开启最大化最小化按钮
        content: url,
        btn: ['关闭'],
        cancel: function (index) {
        }
    });
}

function isCheck(tableId) {
    var str="";
    var ids="";
    $("#" + tableId).find("tbody tr td input.i-checks:checkbox").each(function(){
        if(true == $(this).is(':checked')){
            str+=$(this).attr("id")+",";
        }
    });
    if(str.substr(str.length-1)== ','){
        ids = str.substr(0,str.length-1);
    }
    if(ids == ""){
        top.layer.alert('请至少选择一条数据!', {icon: 0, title:'警告'});
        return "0";
    }
    return ids;
}

function searchAll() {//查询，页码清零
    $("#pageNo").val(0);
    $("#searchForm").submit();
    return false;
}

function resetAll() {//重置，页码清零
    $("#pageNo").val(0);
    $("#searchForm div.form-group input").val("");
    $("#searchForm div.form-group select").val("");
    $("#searchForm").submit();
    return false;
}
function sortOrRefresh() {//刷新或者排序，页码不清零
    $("#searchForm").submit();
    return false;
}
function page(n, s) {//翻页
    if(n) $("#pageNum").val(n);
    if(s) $("#pageSize").val(s);
    $("#searchForm").submit();
    //$("span.page-size").text(s);
    return false;
}

