<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>问卷填写</title>

    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/css/animate.css" rel="stylesheet">
    <link href="/static/css/style.css" rel="stylesheet">

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
                    <a href="#"><i class="fa fa-th-large"></i> <span class="nav-label">问卷填写</span> <span
                            class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse" style="height: 0px;">
                        <li><a href="mentalQs">沈阳工业大学本科生心理健康教育工作调查问卷</a></li>
                        <li><a href="learningQs">沈阳工业大学本科生学习情况满意度调查问卷</a></li>
                        <li><a href="#">沈阳工业大学本科生职业生涯规划满意度调查问卷</a></li>
                        <li><a href="#">沈阳工业大学辅导员考核学生测评表</a></li>
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
        <jsp:include page="VotePage/${VotePage}.jsp"></jsp:include>
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
<script src="/static/js/jquery-3.1.1.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
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
    $("#submit").click(function () {
        var cCode = "${currentUser.cCode}";
        var instituteName;
        switch(cCode.substring(2,4))
        {
            case "01":
                instituteName = "机械工程学院";
                break;
            case "02":
                instituteName = "材料科学与工程学院";
                break;
            case "03":
                instituteName = "电气工程学院";
                break;
            case "04":
                instituteName = "信息科学与工程学院";
                break;
            case "05":
                instituteName = "管理学院";
                break;
            case "06":
                instituteName = "文法学院";
                break;
            case "07":
                instituteName = "理学院";
                break;
            case "08":
                instituteName = "建筑与土木工程学院";
                break;
            case "09":
                instituteName = "外国语学院";
                break;
            case "10":
                instituteName = "经济学院";
                break;
            case "11":
                instituteName = "国际交流中心";
                break;
            case "12":
                instituteName = "软件学院";
                break;
            default:
        }
        var vote = {
            "cCode": cCode,
            "cInstituteName": instituteName
        };
        $(".QS").each(function(i){
            var index = "q"+(++i);
            var str = $(this).attr("name");
            vote[str] = $("input[name="+index+"]:checked").val();
        });
        vote["VotePage"] = "${VotePage}";
        $.ajax({
            type: "POST",
            url: "/submit",
            data: JSON.stringify(vote),
            contentType:"application/json",
            dataType: "text",
            success: function(data) {
                alert(data.trim());
            }
        });
    });
</script>
</body>
</html>