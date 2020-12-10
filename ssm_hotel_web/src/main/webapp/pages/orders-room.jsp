<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>入住办理 - 酒店管理系统</title>
    <meta name="description" content="HOTEL——酒店管理系统">
    <meta name="keywords" content="HOTEL——酒店管理系统">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- iCheck -->
    <!-- Morris chart -->
    <!-- jvectormap -->
    <!-- Date Picker -->
    <!-- Daterange picker -->
    <!-- Bootstrap time Picker -->
    <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.css">-->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--数据表格-->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- Bootstrap Color Picker -->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--bootstrap-markdown-->
    <!-- Theme style -->
    <!-- AdminLTE Skins. Choose a skin from the css/skins
   folder instead of downloading all of them to reduce the load. -->
    <!-- Ion Slider -->
    <!-- ion slider Nice -->
    <!-- bootstrap slider -->
    <!-- bootstrap-datetimepicker -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- jQuery 2.2.3 -->
    <!-- jQuery UI 1.11.4 -->
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <!-- Bootstrap 3.3.6 -->
    <!-- Morris.js charts -->
    <!-- Sparkline -->
    <!-- jvectormap -->
    <!-- jQuery Knob Chart -->
    <!-- daterangepicker -->
    <!-- datepicker -->
    <!-- Bootstrap WYSIHTML5 -->
    <!-- Slimscroll -->
    <!-- FastClick -->
    <!-- iCheck -->
    <!-- AdminLTE App -->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- bootstrap color picker -->
    <!-- bootstrap time picker -->
    <!--<script src="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.js"></script>-->
    <!-- Bootstrap WYSIHTML5 -->
    <!--bootstrap-markdown-->
    <!-- CK Editor -->
    <!-- InputMask -->
    <!-- DataTables -->
    <!-- ChartJS 1.0.1 -->
    <!-- FLOT CHARTS -->
    <!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
    <!-- FLOT PIE PLUGIN - also used to draw donut charts -->
    <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
    <!-- jQuery Knob -->
    <!-- Sparkline -->
    <!-- Morris.js charts -->
    <!-- Ion Slider -->
    <!-- Bootstrap slider -->
    <!-- bootstrap-datetimepicker -->
    <!-- 页面meta /-->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
    <style>

        .main{
            position: relative;
            /*border:1px solid #000;*/
            width: 1200px;
            height: 510px;
        }
        .mleft{
            width: 900px;
            /*border:1px solid #000;*/
            height: 510px;
        }
        .mright{
            /*border:1px solid #000;*/
            position: absolute;
            top: 0px;
            right: 0px;
            width: 230px;
            height: 510px;
        }
        .navigate{
            width: 900px;
            height: 45px;
            /*border: 1px solid #000;*/
        }
        .navigate ul{
            width: 900px;
            height: 45px;
        }
        .navigate ul li{
            width: 16.5%;
            height: 45px;
            border: 1px solid #666;
            float: left;
            list-style: none;
        }
        .navigate ul li a{
            display: block;
            text-align: center;
            line-height: 45px;
            height: 45px;
            color: #000;
        }
        .navigate ul li:hover{
            background: rgb(255,255,86);
        }
        .status{
            width: 900px;
            height: 600px;
            margin-left: 40px;
        }

        .mright form{
            width: 220px;
            height: 150px;
            /*border: 1px solid #000;*/
        }
        form span{
            display: block;
            font-size: 14px;
            margin-left: 10px;
            margin-top: 10px;
        }
        .roomStatus{
            width: 220px;
            height: 350px;
        }
        .roomStatus li{
            list-style: none;
            position: relative;
            width: 200px;
            height: 30px;
            margin-bottom: 48px;
            margin-left: -50px;
        }

        .rs{
            width: 120px;
            height: 30px;
            border: 1px solid #000;
        }
        .rs1{
            background-image: linear-gradient(to right, rgb(114,181,254),#fff);
        }
        .rs2{
            background-image: linear-gradient(to right, red,#fff);
        }
        .sl{
            position: absolute;
            top: 4px;
            right: 20px;
        }
        .rs span{
            display: block;
            font-size: 14px;
            line-height: 30px;
            height: 30px;
            text-align: center;
        }
        .cs{
            float: left;
            position: relative;
            width: 122px;
            height: 115px;
            border: 1px solid #666;
            font-size: 14px;
        }
        .s1{
            text-align: center;
            display: block;
            position: absolute;
            width: 100%;
            height: 20px;
            top: 20px;
        }
        .s2{
            text-align: center;
            display: block;
            width: 100%;
            height: 30px;
            position: absolute;
            top: 42px;
        }
    </style>
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 页面头部 /-->
    <!-- 导航侧栏 -->
    <jsp:include page="aside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->
    <!-- 内容区域 -->
    <!-- @@master = admin-layout.html-->
    <!-- @@block = content -->

    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                前台收银管理
                <small>入住办理</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">前台收银管理</a></li>
                <li class="active">入住办理</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <!-- .box-body -->

            <div class="main">
                <div class="mleft">
                    <div class="navigate">
                        <ul>
                            <li style="width: 288px;"><a href="${pageContext.request.contextPath}/room/findAllRoom.do">所有房间</a></li>
                            <li><a href="${pageContext.request.contextPath}/room/findByRoomType.do?roomType=单人间">单人间</a></li>
                            <li><a href="${pageContext.request.contextPath}/room/findByRoomType.do?roomType=标准间">标准间</a></li>
                            <li><a href="${pageContext.request.contextPath}/room/findByRoomType.do?roomType=大床房">大床房</a></li>
                            <li><a href="${pageContext.request.contextPath}/room/findByRoomType.do?roomType=套间">套间</a></li>
                        </ul>
                    </div>
                    <div class="status">
                        <c:forEach items="${roomList}" var="room">
                            <c:if test="${room.roomState eq '空房' }">
                                <div class="cs" style="background-image: linear-gradient(to right, rgb(114,181,254),#fff);">
                                    <span class="s1">${room.roomNumber }</span><span class="s2">${room.roomType }<a href="${pageContext.request.contextPath}/room/getRoomId.do?roomId=${room.roomId}"><br>办理入住</a></span>
                                </div>
                            </c:if>
                            <c:if test="${room.roomState eq '住人' }">
                                <div class="cs" style="background-image:linear-gradient(to right, #ff5151,#fff);">
                                    <span class="s1">${room.roomNumber }</span><span class="s2">${room.roomType }<a style="color: #0000cc;cursor:pointer" onclick="leave('${room.roomId}')"><br>办理离店</a></span>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                </div>
                <div class="mright">

                    <div class="roomStatus">
                        <li><div class="rs"><span>全部房态</span></div><div class="sl">${roomCount.allRoomCount}间</div></li>
                        <li><div class="rs rs1"><span>空房</span></div><div class="sl">${roomCount.vacantCount} 间</div></li>
                        <li><div class="rs rs2"><span>住人</span></div><div class="sl">${roomCount.peopleCount} 间</div></li>
                    </div>
                </div>
            </div>

        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- @@close -->
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>Copyright &copy; 2015-2020 <a
                href="">HOTEL研发部</a>.
        </strong> All rights reserved.
    </footer>
    <!-- 底部导航 /-->

</div>


<script src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
<script src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
<script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
  // 办理离店
  function leave(id){
    if(confirm("确定要办理离店吗？")){
      location.href="${pageContext.request.contextPath}/room/updateRoomState1.do?roomId="+id;
    }
  }
  //删除多条数据
  function delByCheck() {
    var str="";
    if(confirm("确定要删除该条数据吗？")){
      $("input:checkbox[name=ids]:checked").each(function () {
        str += $(this).val()+",";
      });
      location.href="${pageContext.request.contextPath}/orders/deleteByIdStr.do?idStr="+str;
    }
  }

  //删除单条数据
  function delById(id){
    if(confirm("确定要删除该条数据吗？")){
      location.href="${pageContext.request.contextPath}/orders/deleteById.do?roomId="+id;
    }
  }

  function changePageSize() {
    //获取下拉框的值
    var pageSize = $("#changePageSize").val();

    //向服务器发送请求，改变没页显示条数
    location.href = "${pageContext.request.contextPath}/orders/findAll.do?page=1&size=" + pageSize+"&fuzzyName=${fuzzyName}";
  }
  $(document).ready(function () {
    // 选择框
    $(".select2").select2();

    // WYSIHTML5编辑器
    $(".textarea").wysihtml5({
      locale: 'zh-CN'
    });
  });

  // 设置激活菜单
  function setSidebarActive(tagUri) {
    var liObj = $("#" + tagUri);
    if (liObj.length > 0) {
      liObj.parent().parent().addClass("active");
      liObj.addClass("active");
    }
  }

  $(document).ready(function () {

    // 激活导航位置
    setSidebarActive("admin-datalist");

    // 列表按钮
    $("#dataList td input[type='checkbox']").iCheck({
      checkboxClass: 'icheckbox_square-blue',
      increaseArea: '20%'
    });
    // 全选操作
    $("#selall").click(function () {
      var clicks = $(this).is(':checked');
      if (!clicks) {
        $("#dataList td input[type='checkbox']").iCheck("uncheck");
      } else {
        $("#dataList td input[type='checkbox']").iCheck("check");
      }
      $(this).data("clicks", !clicks);
    });
  });
</script>
</body>

</html>
