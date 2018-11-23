<%@ page language="java" contentType="text/html; charset=UTF-8" %>
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
            <select id = "institute">
            <option>--请选择--</option>
            <option value = "01">机械工程学院</option>
            <option value = "02">材料科学与工程学院</option>
            <option value = "03">电气工程学院</option>
            <option value = "04">信息科学与工程学院</option>
            <option value = "05">管理学院</option>
            <option value = "06">文法学院</option>
            <option value = "07">理学院</option>
            <option value = "08">建筑与土木工程学院</option>
            <option value = "09">外国语学院</option>
            <option value = "10">经济学院</option>
            <option value = "11">国际交流中心</option>
            <option value = "12">软件学院</option>
            </select>
            <select id = "teacher">
            </select>
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
                    <div id="QsContent" class="form-horizontal" method="post" name="MentalQs">
                        <div class="form-group">
                            <label name="cFirstQue" class="col-lg-12 QS">1. 你们班的班委中有心理委员么？</label>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="A" name="q1">
                                        有
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="B" name="q1">
                                        没有
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label name="cSecQue" class="col-lg-12 QS">2. 学院是否开展心理健康教育相关活动？</label>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="A" name="q2">
                                        是
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="B" name="q2">
                                        否
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label name="cThrQue" class="col-lg-12 QS">3.	学院是否向你介绍过校大学生心理发展指导中心的工作范畴和预约方式？</label>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="A" name="q3">
                                        是
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="B" name="q3">
                                        否
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label name="cForQue" class="col-lg-12 QS">4.	对班级心理委员的工作是否满意？</label>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="A" name="q4">
                                        满意
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="B" name="q4">
                                        不满意
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label name="cFifQue" class="col-lg-12 QS">5.	你对本学院开展的心理健康教育工作满意么？</label>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="A" name="q5">
                                        非常满意
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="B" name="q5">
                                        基本满意
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="C" name="q5">
                                        不满意
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-0">
                                <button class="btn btn-white">重置</button>
                                <button id="submit" class="btn btn-primary">提交</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/static/js/jquery-3.1.1.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script>
$(function(){
 var arr = new Array(11);
 arr[0] = new Array("张娜","李俊玲","陆鑫","白雪","陈鹏飞","姚航","石卿志","钱鹏","王雪");
 arr[1] = new Array("李想","于惠舒","刘伟南","张蜜蜜","杨宇航");
 arr[2] = new Array("孟奇恺","彭波","鲁万鹏","盖世臣","马梦瑶","陈东昌","石添元","赵慧美","刘玉君","邱梦凡");
 arr[3] = new Array("姚勇","王春艳","李响","龙飞","李政","宋昱璇","张怡","马思源","张佳民","李明旭");
 arr[4] = new Array("吕庆涛","宋岱岳","林爽","庄喆","李大业","韩双宇");
 arr[5] = new Array("任大林","李青山","梁希妹","徐畅","赵骏倢","崔琨");
 arr[6] = new Array("郭玲","梁朋","武宁","关娜","周翰伯");
 arr[7] = new Array("杜振君","陈文波","田晓辉","陈蕊","艾明珠","牟春景");
 arr[8] = new Array("付博文","辛显华","卢海章","杨宁宁","王红红","肇辛格");
 arr[9] = new Array("董润芸","何剑非","王晓茜");
 arr[10] = new Array("张岩","冀录","张金龙");
 arr[11] = new Array("郝艳君","薛政","李函书","张涛","于雅洁","王伟","肖博","张晋源");
  $("#institute").change(function(){
  $("#teacher").empty();
  var val = this.value - 1;
  $.each(arr,function(i,n){
  if(val == i){
     $.each(arr[i],function(j,m){
        var textNode = document.createTextNode(m);
        var opEle = document.createElement("option");
        $(opEle).append(textNode);
        $(opEle).appendTo($("#teacher"))
       });
      }
    });
  });
});

</script>