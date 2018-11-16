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
                        <li><a href="#">沈阳工业大学本科生心理健康教育工作调查问卷</a></li>
                        <li><a href="#">沈阳工业大学本科生学习情况满意度调查问卷</a></li>
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
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>沈阳工业大学本科生心理健康教育工作调查问卷</h2>
                <ol class="breadcrumb">
                    <li>
                        <a>问卷填写</a>
                    </li>
                    <li class="active">
                        <strong>沈阳工业大学本科生心理健康教育工作调查问卷</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>
        <div class="wrapper wrapper-content animated fadeInRight">


            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>请如实认真填写</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-lg-12">1. 你们班的班委中有心理委员么？</label>
                                    <div class="col-sm-10">
                                        <div>
                                            <label>
                                                <input type="radio" value="option1" name="q1">
                                                有
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-10">
                                        <div>
                                            <label>
                                                <input type="radio" value="option2" name="q1">
                                                没有
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group">
                                    <label class="col-lg-12">2. 学院是否开展心理健康教育相关活动？</label>
                                    <div class="col-sm-10">
                                        <div>
                                            <label>
                                                <input type="radio" value="option1" name="q2">
                                                是
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-10">
                                        <div>
                                            <label>
                                                <input type="radio" value="option2" name="q2">
                                                否
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group">
                                    <label class="col-lg-12">3.	学院是否向你介绍过校大学生心理发展指导中心的工作范畴和预约方式？</label>
                                    <div class="col-sm-10">
                                        <div>
                                            <label>
                                                <input type="radio" value="option1" name="q3">
                                                是
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-10">
                                        <div>
                                            <label>
                                                <input type="radio" value="option2" name="q3">
                                                否
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group">
                                    <label class="col-lg-12">4.	对班级心理委员的工作是否满意？</label>
                                    <div class="col-sm-10">
                                        <div>
                                            <label>
                                                <input type="radio" value="option1" name="q4">
                                                满意
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-10">
                                        <div>
                                            <label>
                                                <input type="radio" value="option2" name="q4">
                                                不满意
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group">
                                    <label class="col-lg-12">5.	你对本学院开展的心理健康教育工作满意么？</label>
                                    <div class="col-sm-10">
                                        <div>
                                            <label>
                                                <input type="radio" value="option1" name="q5">
                                                非常满意
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-10">
                                        <div>
                                            <label>
                                                <input type="radio" value="option2" name="q5">
                                                基本满意
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-10">
                                        <div>
                                            <label>
                                                <input type="radio" value="option2" name="q5">
                                                不满意
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-0">
                                        <button class="btn btn-white" type="submit">重置</button>
                                        <button class="btn btn-primary" type="submit">提交</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
</script>


</body>
</html>