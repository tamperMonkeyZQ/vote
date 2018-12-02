<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>沈阳工业大学本科生学习情况调查问卷</h2>
        <ol class="breadcrumb">
            <li>
                <a>问卷查询</a>
            </li>
            <li class="active">
                <strong>沈阳工业大学本科生学习情况调查问卷</strong>
            </li>
            <select id = "institute">
           <option>--请选择--</option>
           <option value = "机械工程学院">机械工程学院</option>
           <option value = "材料科学与工程学院">材料科学与工程学院</option>
           <option value = "电气工程学院">电气工程学院</option>
           <option value = "信息科学与工程学院">信息科学与工程学院</option>
           <option value = "管理学院">管理学院</option>
           <option value = "文法学院">文法学院</option>
           <option value = "理学院">理学院</option>
           <option value = "建筑与土木工程学院">建筑与土木工程学院</option>
           <option value = "外国语学院">外国语学院</option>
           <option value = "经济学院">经济学院</option>
           <option value = "国际交流中心">国际交流中心</option>
           <option value = "软件学院">软件学院</option>
           </select>
           <div class="form-group">
        </ol>
    </div>
    <div class="col-lg-2">

    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <table id="test-table" class="table table-hover table-striped table-condensed table-bordered"></table>

<!-- Mainly scripts -->
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="/static/js/bootstrap-table/bootstrap-table.js"></script>
<script src="/static/js/bootstrap-table/bootstrap-table-zh-CN.js"></script>
<script src="/static/js/inspinia.js"></script>
<script src="/static/js/plugins/pace/pace.min.js"></script>

<!-- iCheck -->
<script src="/static/js/plugins/iCheck/icheck.min.js"></script>
<script>
    $(document).ready(function () {
               $('.i-checks').iCheck({
                   checkboxClass: 'icheckbox_square-green',
                   radioClass: 'iradio_square-green',
               });
           });
</script>
<script>
    $(function (){
        $("#test-table").bootstrapTable('destroy');
        $('#test-table').bootstrapTable({
            method : 'GET',
            url: "/learningResult/load",
            cache : false,
            striped : true,
            pagination : false, //在表格底部显示分页工具栏
            pageSize : 10, //默认每页条数
            pageNumber : 1, //默认分页
            pageList : [ 10, 20, 50, 100, 200, 500 ],//分页数
            showColumns : false, //显示隐藏列
            showRefresh : false, //显示刷新按钮
            showExport : false,
            singleselect : true,
            clickToSelect: true, // 单击行即可以选中
            search : false,//显示搜素表单
            silent : true, //刷新事件必须设置
            sidePagination : "server", //表示服务端请求
            columns : [
                {
                    field : "no",
                    title : "",
                    class : 'col-md-1',
                    align : "center",
                    valign : "middle",
                    sortable : "true"
                },
                {
                    field : "value.a",
                    title : "A选项比例",
                    class : 'col-md-1',
                    align : "center",
                    valign : "middle",
                    sortable : "true"
                },
                {
                    field : "value.b",
                    title : "B选项比例",
                    class : 'col-md-1',
                    align : "center",
                    valign : "middle",
                    sortable : "true"
                },
                {
                    field : "value.c",
                    title : "C选项比例",
                    class : 'col-md-1',
                    align : "center",
                    valign : "middle",
                    sortable : "true"
                },
                {
                    field : "value.d",
                    title : "D选项比例",
                    class : 'col-md-1',
                    align : "center",
                    valign : "middle",
                    sortable : "true"
                }],
            queryParamsType: "undefined",
            queryParams: function queryParams(params) {   //设置查询参数
                //var x = $("#myId").val();
                var param = {
                    pageNumber: params.pageNumber,
                    pageSize: params.pageSize,
                    //myId: x,
                    // searchText: params.searchText
                };
                return param;
            },
            formatLoadingMessage : function() {
                return "请稍等，正在加载中...";
            },

            formatNoMatches : function() {
                return '无符合条件的记录';
            },
            //注册加载子表的事件。注意下这里的三个参数！
            onExpandRow: function (index, row, $detail) {
                oInit.InitSubTable(index, row, $detail);
            }

        });
    });
    $("#institute").change(function(){
    var str = $("#institute").val();
     $("#test-table").bootstrapTable('destroy');
            $('#test-table').bootstrapTable({
                method : 'GET',
                url: encodeURI("/learningResult/load?institutename="+str),
                cache : false,
                striped : true,
                pagination : false, //在表格底部显示分页工具栏
                pageSize : 10, //默认每页条数
                pageNumber : 1, //默认分页
                pageList : [ 10, 20, 50, 100, 200, 500 ],//分页数
                showColumns : false, //显示隐藏列
                showRefresh : false, //显示刷新按钮
                showExport : false,
                singleselect : true,
                clickToSelect: true, // 单击行即可以选中
                search : false,//显示搜素表单
                silent : true, //刷新事件必须设置
                sidePagination : "server", //表示服务端请求
                columns : [
                    {
                        field : "no",
                        title : "",
                        class : 'col-md-1',
                        align : "center",
                        valign : "middle",
                        sortable : "true"
                    },
                    {
                        field : "value.a",
                        title : "A选项比例",
                        class : 'col-md-1',
                        align : "center",
                        valign : "middle",
                        sortable : "true"
                    },
                    {
                        field : "value.b",
                        title : "B选项比例",
                        class : 'col-md-1',
                        align : "center",
                        valign : "middle",
                        sortable : "true"
                    },
                    {
                        field : "value.c",
                        title : "C选项比例",
                        class : 'col-md-1',
                        align : "center",
                        valign : "middle",
                        sortable : "true"
                    },
                    {
                        field : "value.d",
                        title : "D选项比例",
                        class : 'col-md-1',
                        align : "center",
                        valign : "middle",
                        sortable : "true"
                    }],
                queryParamsType: "undefined",
                queryParams: function queryParams(params) {   //设置查询参数
                    //var x = $("#myId").val();
                    var param = {
                        pageNumber: params.pageNumber,
                        pageSize: params.pageSize,
                        //myId: x,
                        // searchText: params.searchText
                    };
                    return param;
                },
                formatLoadingMessage : function() {
                    return "请稍等，正在加载中...";
                },

                formatNoMatches : function() {
                    return '无符合条件的记录';
                },
                //注册加载子表的事件。注意下这里的三个参数！
                onExpandRow: function (index, row, $detail) {
                    oInit.InitSubTable(index, row, $detail);
                }

            });
    });
</script>


</div>