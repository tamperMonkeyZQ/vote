<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>沈阳工业大学本科生辅导员满意度调查问卷</h2>
        <ol class="breadcrumb">
            <li>
                <a>问卷查询</a>
            </li>
            <li class="active">
                <strong>沈阳工业大学本科生辅导员满意度调查问卷</strong>
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
                    <div id="QsContent" class="form-horizontal" method="post" name="counselorQs">
                        <div class="form-group">
                            <label name="cFirstQue" class="col-lg-12 QS">1. .辅导员师德高尚，为人师表，能够以身作则，办事公正，严于律己（观测点：主要看与你心目中辅导员形象的距离）？</label>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="3" name="q1">
                                        非常满意
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-10">
                                <div>
                                    <label>
                                        <input type="radio" value="2.25" name="q1">
                                        满意
                                    </label>
                                </div>
                            </div>
                              <div class="col-sm-10">
                                <div>
                                     <label>
                                         <input type="radio" value="1.5" name="q1">
                                          一般
                                     </label>
                                 </div>
                              </div>
                                <div class="col-sm-10">
                                  <div>
                                      <label>
                                          <input type="radio" value="0.75" name="q1">
                                           不满意
                                       </label>
                                   </div>
                               </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                           <label name="cSecQue" class="col-lg-12 QS">2. 辅导员热爱本职工作，具有奉献精神，热爱学生，努力成为学生的知心朋友和人生导师（观测点：主要看是否主动关心了解你并解决实际问题）</label>
                           <div class="col-sm-10">
                               <div>
                                   <label>
                                       <input type="radio" value="3" name="q2">
                                       非常满意
                                   </label>
                               </div>
                           </div>
                           <div class="col-sm-10">
                               <div>
                                   <label>
                                       <input type="radio" value="2.25" name="q2">
                                       满意
                                   </label>
                               </div>
                           </div>
                             <div class="col-sm-10">
                               <div>
                                    <label>
                                        <input type="radio" value="1.5" name="q2">
                                         一般
                                    </label>
                                </div>
                             </div>
                               <div class="col-sm-10">
                                 <div>
                                     <label>
                                         <input type="radio" value="0.75" name="q2">
                                          不满意
                                      </label>
                                  </div>
                              </div>
                       </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label name="cThrQue" class="col-lg-12 QS">3. 辅导员能够定期对学生开展思想政治与形势政策教育，积极进行学生思想状况调查并开展各类主题教育活动（观测点：主要看有无对你进行这些教育）</label>
                           <div class="col-sm-10">
                               <div>
                                   <label>
                                       <input type="radio" value="3" name="q3">
                                       非常满意
                                   </label>
                               </div>
                           </div>
                           <div class="col-sm-10">
                               <div>
                                   <label>
                                       <input type="radio" value="2.25" name="q3">
                                       满意
                                   </label>
                               </div>
                           </div>
                             <div class="col-sm-10">
                               <div>
                                    <label>
                                        <input type="radio" value="1.5" name="q3">
                                         一般
                                    </label>
                                </div>
                             </div>
                               <div class="col-sm-10">
                                 <div>
                                     <label>
                                         <input type="radio" value="0.75" name="q3">
                                          不满意
                                      </label>
                                  </div>
                              </div>
                       </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label name="cForQue" class="col-lg-12 QS">4. 辅导员重视班级学风建设，能够及时有计划、有措施地指导学生的学习，注重考风考纪教育，所带学生遵守考试纪律（观测点：主要看班级学风建设的严格程度和学生考纪现象）</label>
                           <div class="col-sm-10">
                               <div>
                                   <label>
                                       <input type="radio" value="3" name="q4" >
                                       非常满意
                                   </label>
                               </div>
                           </div>
                           <div class="col-sm-10">
                               <div>
                                   <label>
                                       <input type="radio" value="2.25" name="q4">
                                       满意
                                   </label>
                               </div>
                           </div>
                             <div class="col-sm-10">
                               <div>
                                    <label>
                                        <input type="radio" value="1.5" name="q4">
                                         一般
                                    </label>
                                </div>
                             </div>
                               <div class="col-sm-10">
                                 <div>
                                     <label>
                                         <input type="radio" value="0.75" name="q4">
                                          不满意
                                      </label>
                                  </div>
                              </div>
                       </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label name="cFifQue" class="col-lg-12 QS">5. 辅导员悉心指导党团、班级建设，学生干部工作积极，班级组织良好有序，凝聚力强，积极创建优良学风班（观测点：主要看指导的力度和效果，是否定期召开班会、年级大会等）</label>
                           <div class="col-sm-10">
                               <div>
                                   <label>
                                       <input type="radio" value="3" name="q5">
                                       非常满意
                                   </label>
                               </div>
                           </div>
                           <div class="col-sm-10">
                               <div>
                                   <label>
                                       <input type="radio" value="2.25" name="q5">
                                       满意
                                   </label>
                               </div>
                           </div>
                             <div class="col-sm-10">
                               <div>
                                    <label>
                                        <input type="radio" value="1.5" name="q5">
                                         一般
                                    </label>
                                </div>
                             </div>
                               <div class="col-sm-10">
                                 <div>
                                     <label>
                                         <input type="radio" value="0.75" name="q5">
                                          不满意
                                      </label>
                                  </div>
                              </div>
                       </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                        <label name="cSixQue" class="col-lg-12 QS">6.辅导员对学生日常事务管理规范、有序。积极为学生提供生活指导，促进学生和谐相处、互帮互助（观测点：主要看在各项管理和服务工作中是否细致、耐心，评奖评优等工作是否公平、公开、公正）</label>
                       <div class="col-sm-10">
                           <div>
                               <label>
                                   <input type="radio" value="3" name="q6">
                                   非常满意
                               </label>
                           </div>
                       </div>
                       <div class="col-sm-10">
                           <div>
                               <label>
                                   <input type="radio" value="2.25" name="q6">
                                   满意
                               </label>
                           </div>
                       </div>
                         <div class="col-sm-10">
                           <div>
                                <label>
                                    <input type="radio" value="1.5" name="q6">
                                     一般
                                </label>
                            </div>
                         </div>
                           <div class="col-sm-10">
                             <div>
                                 <label>
                                     <input type="radio" value="0.75" name="q6">
                                      不满意
                                  </label>
                              </div>
                          </div>
                   </div>
                    <div class="hr-line-dashed"></div>
                    <div class="form-group">
                    <label name="cSevQue" class="col-lg-12 QS">7. 辅导员工作方式得当，对后进生和贫困生情况掌握准确，注重培养学生的综合能力，指导学生成才（观测点：主要看是否对你因材施教）</label>
                   <div class="col-sm-10">
                       <div>
                           <label>
                               <input type="radio" value="3" name="q7">
                               非常满意
                           </label>
                       </div>
                   </div>
                   <div class="col-sm-10">
                       <div>
                           <label>
                               <input type="radio" value="2.25" name="q7">
                               满意
                           </label>
                       </div>
                   </div>
                     <div class="col-sm-10">
                       <div>
                            <label>
                                <input type="radio" value="1.5" name="q7">
                                 一般
                            </label>
                        </div>
                     </div>
                       <div class="col-sm-10">
                         <div>
                             <label>
                                 <input type="radio" value="0.75" name="q7">
                                  不满意
                              </label>
                          </div>
                      </div>
               </div>
                <div class="hr-line-dashed"></div>
                <div class="form-group">
                <label name="cEigQue" class="col-lg-12 QS">8. 辅导员能经常深入学生宿舍和课堂，关心学生，重视学生寝室文明建设（观测点：主要看辅导员深入宿舍和课堂次数和你所在班级文明寝室率）</label>
               <div class="col-sm-10">
                   <div>
                       <label>
                           <input type="radio" value="3" name="q8">
                           非常满意
                       </label>
                   </div>
               </div>
               <div class="col-sm-10">
                   <div>
                       <label>
                           <input type="radio" value="2.25" name="q8">
                           满意
                       </label>
                   </div>
               </div>
                 <div class="col-sm-10">
                   <div>
                        <label>
                            <input type="radio" value="1.5" name="q8">
                             一般
                        </label>
                    </div>
                 </div>
                   <div class="col-sm-10">
                     <div>
                         <label>
                             <input type="radio" value="0.75" name="q8">
                              不满意
                          </label>
                      </div>
                  </div>
           </div>
            <div class="hr-line-dashed"></div>
            <div class="form-group">
            <label name="cNinQue" class="col-lg-12 QS">9. 辅导员积极关注学生的心理健康，培养学生健全人格（观测点：主要看是否主动关注你的心理变化，并妥善解决）</label>
           <div class="col-sm-10">
               <div>
                   <label>
                       <input type="radio" value="3" name="q9">
                       非常满意
                   </label>
               </div>
           </div>
           <div class="col-sm-10">
               <div>
                   <label>
                       <input type="radio" value="2.25" name="q9">
                       满意
                   </label>
               </div>
           </div>
             <div class="col-sm-10">
               <div>
                    <label>
                        <input type="radio" value="1.5" name="q9">
                         一般
                    </label>
                </div>
             </div>
               <div class="col-sm-10">
                 <div>
                     <label>
                         <input type="radio" value="0.75" name="q9">
                          不满意
                      </label>
                  </div>
              </div>
       </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                                    <label name="cTenQue" class="col-lg-12 QS">10. 辅导员重视安全教育，能够及时发现和处理班级同学的突发事件；督促学生自律，预防事故发生（观测点：主要看班级违规违纪事件发生率高与低，处理突发事件是否及时得当）</label>
                                   <div class="col-sm-10">
                                       <div>
                                           <label>
                                               <input type="radio" value="3" name="q10">
                                               非常满意
                                           </label>
                                       </div>
                                   </div>
                                   <div class="col-sm-10">
                                       <div>
                                           <label>
                                               <input type="radio" value="2.25" name="q10">
                                               满意
                                           </label>
                                       </div>
                                   </div>
                                     <div class="col-sm-10">
                                       <div>
                                            <label>
                                                <input type="radio" value="1.5" name="q10">
                                                 一般
                                            </label>
                                        </div>
                                     </div>
                                       <div class="col-sm-10">
                                         <div>
                                             <label>
                                                 <input type="radio" value="0.75" name="q10">
                                                  不满意
                                              </label>
                                          </div>
                                      </div>
                               </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <label name="cEleQue" class="col-lg-12 QS">11. 你对辅导员工作的综合评价是</label>
                                   <div class="col-sm-10">
                                       <div>
                                           <label>
                                               <input type="radio" value="3" name="q11">
                                               非常满意
                                           </label>
                                       </div>
                                   </div>
                                   <div class="col-sm-10">
                                       <div>
                                           <label>
                                               <input type="radio" value="2.25" name="q11">
                                               满意
                                           </label>
                                       </div>
                                   </div>
                                     <div class="col-sm-10">
                                       <div>
                                            <label>
                                                <input type="radio" value="1.5" name="q11">
                                                 一般
                                            </label>
                                        </div>
                                     </div>
                                       <div class="col-sm-10">
                                         <div>
                                             <label>
                                                 <input type="radio" value="0.75" name="q11">
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
        arr[4] = new Array("杜振君","陈文波","田晓辉","陈蕊","艾明珠","牟春景");
        arr[5] = new Array("付博文","辛显华","卢海章","杨宁宁","王红红","肇辛格");
        arr[6] = new Array("吕庆涛","宋岱岳","林爽","庄喆","李大业","韩双宇");
        arr[7] = new Array("任大林","李青山","梁希妹","徐畅","赵骏倢","崔琨");
        arr[8] = new Array("董润芸","何剑非","王晓茜");
        arr[9] = new Array("郭玲","梁朋","武宁","关娜","周翰伯");
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