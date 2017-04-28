<%@ page contentType="text/html;charset=UTF-8" %>
<link rel="stylesheet" href="${ctxStatic}/static/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="${ctxStatic}/static/plugins/bootstrap-daterangepicker/daterangepicker.css">
<script src="${ctxStatic}/static/plugins/bootstrap-daterangepicker/moment.min.js"></script>
<script src="${ctxStatic}/static/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="${ctxStatic}/static/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="${ctxStatic}/static/plugins/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
    (function($){
        $.fn.extend({
            datetime:function(option){
                var options = typeof option == 'object' && option;
                var format = options.format;
                format = format ? format : "yyyy-mm-dd";
                $(this).datetimepicker({
                    format: format,
                    language: 'zh-CN',
                    autoclose: true,
                    minView: 2,
                    todayHighlight: true,
                    todayBtn: true
                });
            }
        });

        $.fn.extend({
            daterange:function(){
                $(this).daterangepicker({
                    autoApply: false,
                    autoUpdateInput: false,
                    dateLimit : {
                        days : 30
                    },
                    applyClass : 'btn-sm btn-primary',
                    cancelClass : 'btn-sm',
                    ranges : {
                        '今日': [moment(), moment()],
                        '昨日': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        '最近7日': [moment().subtract(6, 'days'), moment()],
                        '最近30日': [moment().subtract(29, 'days'), moment()],
                        '这个月': [moment().startOf('month'), moment().endOf('month')],
                        '上个月': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                    },
                    locale : {
                        format : 'YYYY/MM/DD',
                        applyLabel : '确定',
                        cancelLabel : '清空',
                        fromLabel : '起始时间',
                        toLabel : '结束时间',
                        customRangeLabel : '自定义',
                        daysOfWeek : [ '日', '一', '二', '三', '四', '五', '六' ],
                        monthNames : [ '一月', '二月', '三月', '四月', '五月', '六月',
                            '七月', '八月', '九月', '十月', '十一月', '十二月' ],
                        firstDay : 1
                    }
                }, function(start, end, label) {
                    console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
                }).on('apply.daterangepicker', function(ev, picker) {
                    $(this).val(picker.startDate.format('YYYY/MM/DD') + ' - ' + picker.endDate.format('YYYY/MM/DD'));
                }).on('cancel.daterangepicker', function(ev, picker) {
                    $(this).val('');
                });
            }
        });

    })(jQuery);
</script>