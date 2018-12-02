<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>问卷查询</title>

    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/animate.css" rel="stylesheet">
    <link href="/static/css/style.css" rel="stylesheet">
    <link href="/static/css/bootstrap-table.css" rel="stylesheet">

    <link href="/static/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

</head>

<body class="pace-done">
<div class="pace  pace-inactive">
    <div class="pace-progress" data-progress-text="100%" data-progress="99"
         style="transform: translate3d(100%, 0px, 0px);">
        <div class="pace-progress-inner"></div>
    </div>
    <div class="pace-activity"></div>
</div>

<div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu" style="">
                <li class="nav-header" style="padding: 0;">
                    <img alt="image" class="img-thumbnail" src="http://www.sut.edu.cn/images/index_05.jpg">
                    <div class="logo-element">
                        SUT
                    </div>
                </li>
                <li class="">
                    <a href="#"><i class="fa fa-th-large"></i> <span class="nav-label">问卷查询</span> <span
                            class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse" style="height: 0px;">
                        <li><a href="mentalResult">沈阳工业大学本科生心理健康教育工作调查问卷</a></li>
                        <li><a href="learningResult">沈阳工业大学本科生学习情况满意度调查问卷</a></li>
                        <li><a href="professionResult">沈阳工业大学本科生职业生涯规划满意度调查问卷</a></li>
                        <li><a href="counselorResult">沈阳工业大学辅导员考核学生测评表</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg" style="min-height: 763px;">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i>
                    </a>
                    <form role="search" class="navbar-form-custom">
                        <div class="form-group">
                            <input type="text" placeholder="" class="form-control"
                                   name="top-search" id="top-search">
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <a href="/">
                            <i class="fa fa-sign-out"></i> Log out
                        </a>
                    </li>
                </ul>

            </nav>
        </div>
        <jsp:include page="CheckPage/${CheckPage}.jsp"></jsp:include>
        <div class="footer">
            <div class="pull-right">
                沈阳工业大学
            </div>
            <div>
                <strong>Copyright</strong> SUT
            </div>
        </div>

    </div>
</div>


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
                var institute;
               $('.i-checks').iCheck({
                   checkboxClass: 'icheckbox_square-green',
                   radioClass: 'iradio_square-green',
               });
           });
      

</script>
</body>
</html>