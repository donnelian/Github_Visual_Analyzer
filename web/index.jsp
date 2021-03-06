﻿<%--
  Created by IntelliJ IDEA.
  User: donne
  Date: 17-4-13
  Time: 上午2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta charset="utf-8">
<title>Github可视化系统</title>

<!-- 引入 echarts.js -->
<script src="echarts.min.js"></script>
<head>


    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lumino - Dashboard</title>

    <link href="../css/bootstrap.css" rel="stylesheet">
    <link href="../css/datepicker3.css" rel="stylesheet">
    <link href="../css/styles.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div class="adcenter"><script src="Lumino%20-%20Dashboard_files/ca-pub-1542822386688301.js"></script><script src="Lumino%20-%20Dashboard_files/ggad2_728x90.js"></script><link type="text/css" rel="stylesheet" href="Lumino%20-%20Dashboard_files/astyle.css">
</div>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><span>Github</span>可视化</a>
            <ul class="user-menu">
                <li class="dropdown pull-right">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> 用户 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 简介</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-cog"></span> 设置</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div><!-- /.container-fluid -->
</nav>

<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
    <form role="search">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="搜索">
        </div>
    </form>
    <ul class="nav menu">
        <li class="active"><a href="/"><span class="glyphicon glyphicon-dashboard"></span> 首页</a></li>
        <li class="parent ">
            <a href="#">
                <span class="glyphicon glyphicon-list"></span> 语言 <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span>
            </a>
            <ul class="children collapse" id="sub-item-1">
                <li>
                    <a class="" href="#">
                <li><a href="china.html"><span class="glyphicon glyphicon-stats"></span> 国内</a></li>
                </a>
                </li>
                <li>
                    <a class="" href="#">
                <li><a href="world.html"><span class="glyphicon glyphicon-stats"></span> 全世界</a></li>
                </a>
                </li>
            </ul>
        </li>
        <li><a href="/user"><span class="glyphicon glyphicon-stats"></span> 用户</a></li>
        <li><a href="project.html"><span class="glyphicon glyphicon-list-alt"></span> 项目（仓库）</a></li>
        <li><a href="area.html"><span class="glyphicon glyphicon-pencil"></span> 地域</a></li>

        <li class="parent ">
            <a href="#">
                <span class="glyphicon glyphicon-list"></span> 技术分类 <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span>
            </a>
            <ul class="children collapse" id="sub-item-2">
                <li>
                    <a class="" href="#">
                <li><a href="technology_1.html"><span class="glyphicon glyphicon-share-alt"></span> 移动技术</a></li>
                </a>
                </li>
                <li>
                    <a class="" href="#">
                <li><a href="technology_2.html"><span class="glyphicon glyphicon-share-alt"></span> 数据库</a></li>
                </a>
                </li>
                <li>
                    <a class="" href="#">
                <li><a href="technology_3.html"><span class="glyphicon glyphicon-share-alt"></span> 可视化工具</a></li>
                </a>
                </li>
                <li>
                    <a class="" href="#">
                <li><a href="technology_4.html"><span class="glyphicon glyphicon-share-alt"></span> 游戏引擎</a></li>
                </a>
                </li>
                <li>
                    <a class="" href="#">
                <li><a href="technology_5.html"><span class="glyphicon glyphicon-share-alt"></span> web应用</a></li>
                </a>
                </li>
            </ul>
        </li>
        <li role="presentation" class="divider"></li>
        <li><a href="mine.html"><span class="glyphicon glyphicon-user"></span> 我的</a></li>
        <li><a href="search.html"><span class="glyphicon glyphicon-info-sign"></span> 搜索</a></li>
    </ul>
</div><!--/.sidebar-->

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">

    </div><!--/.row-->



    <div class="row"> </div><!--/.row-->



    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/">网页模板</a></div>

    <script type="text/javascript" src="/js/jquery-3.2.1.min.js">
        var usrJson = JSON.parse(<%=request.getAttribute("users_trending")%>);
        var repoJson = JSON.parse(<%=request.getAttribute("repos_trending")%>);
        $(function () {
            var eValue = eval('repoJson.count');
            alert(eValue);
        })
    </script>



    <div class="row">
        <div class="col-md-1">


        </div><!--/.col-->

        <div class="col-md-4">

            <div class="panel panel-blue">
                <div class="panel-heading dark-overlay"><span class="glyphicon glyphicon-check"></span>热门仓库   </div>
                <div class="panel-body">
                    <ul class="todo-list">
                        <li class="todo-list-item">
                            <div class="checkbox">
                                <label id="checkbox1">1.Make a plan for today</label>
                            </div>

                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">

                                <label id="checkbox2">2.Update Basecamp</label>
                            </div>

                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">

                                <label id="checkbox3">3.Send email to Jane</label>
                            </div>

                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">

                                <label id="checkbox4">4.Drink coffee</label>
                            </div>

                        </li>

                        <li class="todo-list-item">
                            <div class="checkbox">

                                <label id="checkbox5">5.Do some work</label>
                            </div>

                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">

                                <label id="checkbox6">6.Tidy up workspace</label>
                            </div>

                        </li>
                    </ul>
                </div>

            </div>

        </div><!--/.col-->
        <div class="col-md-2">
        </div><!--/.col-->
        <div class="col-md-4">

            <div class="panel panel-blue">
                <div class="panel-heading dark-overlay"><span class="glyphicon glyphicon-check"></span>热门用户</div>
                <div class="panel-body">
                    <ul class="todo-list">
                        <li class="todo-list-item">
                            <div class="checkbox">
                                <label for="checkbox">1.Mike</label>
                            </div>

                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">

                                <label for="checkbox">2.John</label>
                            </div>

                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">

                                <label for="checkbox">3.Edward</label>
                            </div>

                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">

                                <label for="checkbox">4.Sarah</label>
                            </div>

                        </li>

                        <li class="todo-list-item">
                            <div class="checkbox">

                                <label for="checkbox">5.Wu Yifan</label>
                            </div>

                        </li>
                        <li class="todo-list-item">
                            <div class="checkbox">

                                <label for="checkbox">6.Zip</label>
                            </div>

                        </li>
                    </ul>
                </div>

            </div>

        </div><!--/.col-->











        <div class="row">
            <div class="col-md-6">
                <div class="col-md-10">
                    <div class="panel panel-white">
                        <div id="main" style="width:100%;height:400px;"></div>
                        <script type="text/javascript">

                            // 基于准备好的dom，初始化echarts实例
                            var myChart = echarts.init(document.getElementById('main'));

                            // 指定图表的配置项和数据
                            var
                                option = {
                                    title: {
                                        text: '热门仓库排行:C++'

                                    },
                                    color: ['#3398DB'],
                                    tooltip : {
                                        trigger: 'axis',
                                        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                                            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                                        }
                                    },
                                    grid: {
                                        left: '3%',
                                        right: '4%',
                                        bottom: '3%',
                                        containLabel: true
                                    },
                                    xAxis : [
                                        {
                                            type : 'category',
                                            data : ['Abu', 'Blue', 'Cali', 'Dary', 'XX', 'Fly', 'XW','document','XXSS','WAY','Pass','007'],
                                            axisTick: {
                                                alignWithLabel: true
                                            }
                                        }
                                    ],
                                    yAxis : [
                                        {
                                            // type : 'category',
                                            // data : ['10','20','30','40'],
                                            axisTick: {
                                                alignWithLabel: true
                                            }
                                        }
                                    ],
                                    series : [
                                        {
                                            name:'今日收藏人数',
                                            type:'bar',
                                            barWidth: '40%',
                                            data:[197, 96, 55, 40, 30, 20, 19,18,17,10,9,2]
                                        },

                                    ],
                                    label: {
                                        normal: {
                                            show: true,
                                            position: 'top',
                                            formatter: '{c}'
                                        }
                                    },
                                    itemStyle: {
                                        normal: {

                                            color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                                                offset: 0,
                                                color: 'rgba(17, 168,171, 1)'
                                            }, {
                                                offset: 1,
                                                color: 'rgba(17, 168,171, 0.1)'
                                            }]),
                                            shadowColor: 'rgba(0, 0, 0, 0.1)',
                                            shadowBlur: 10
                                        }
                                    }
                                };

                            // 使用刚指定的配置项和数据显示图表。
                            myChart.setOption(option);

                        </script>
                    </div>
                </div>
                <!--/.col-->

                <div class="col-md-2">

                    <div class="panel panel-blue">

                        <div class="panel-body">
                            <ul class="todo-list">
                                <li class="todo-list-item">
                                    <div class="checkbox">
                                        C++
                                    </div>

                                </li>
                                <li class="todo-list-item">
                                    <div class="checkbox">

                                        Java
                                    </div>

                                </li>
                                <li class="todo-list-item">
                                    <div class="checkbox">

                                        Python
                                    </div>

                                </li>
                                <li class="todo-list-item">
                                    <div class="checkbox">

                                        Ohter
                                    </div>

                                </li>



                            </ul>
                        </div>

                    </div>

                </div><!--/.col-->
            </div>
            <div class="col-md-6">
                <div class="col-md-10">

                    <div class="panel panel-white">
                        <div id="main1" style="width: 100%;height:400px;"></div>
                        <script type="text/javascript">

                            // 基于准备好的dom，初始化echarts实例
                            var myChart2 = echarts.init(document.getElementById('main1'));

                            // 指定图表的配置项和数据
                            var
                                option2 = {
                                    title: {
                                        text: '热门用户排行:Java'

                                    },
                                    color: ['#3398DB'],
                                    tooltip : {
                                        trigger: 'axis',
                                        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                                            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                                        }
                                    },
                                    grid: {
                                        left: '3%',
                                        right: '4%',
                                        bottom: '3%',
                                        containLabel: true
                                    },
                                    xAxis : [
                                        {
                                            type : 'category',
                                            data : ['Amy', 'Bob', 'Candy', 'Danny', 'Fri', 'Elly', 'Icon','Icy','Gay','King','Donne','Lian'],
                                            axisTick: {
                                                alignWithLabel: true
                                            }
                                        }
                                    ],
                                    yAxis : [
                                        {
                                            // type : 'category',
                                            // data : ['10','20','30','40'],
                                            axisTick: {
                                                alignWithLabel: true
                                            }
                                        }
                                    ],
                                    series : [
                                        {
                                            name:'今日热门用户',
                                            type:'bar',
                                            barWidth: '40%',
                                            data:[200, 196, 155, 140, 130, 120, 90,87,66,60,55,51]
                                        },

                                    ],
                                    label: {
                                        normal: {
                                            show: true,
                                            position: 'top',
                                            formatter: '{c}'
                                        }
                                    },
                                    itemStyle: {
                                        normal: {

                                            color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                                                offset: 0,
                                                color: 'rgba(17, 168,171, 1)'
                                            }, {
                                                offset: 1,
                                                color: 'rgba(17, 168,171, 0.1)'
                                            }]),
                                            shadowColor: 'rgba(0, 0, 0, 0.1)',
                                            shadowBlur: 10
                                        }
                                    }
                                };

                            // 使用刚指定的配置项和数据显示图表。
                            myChart2.setOption(option2);
                            setTimeout(function (){
                                window.onresize = function () {
                                    myChart.resize();
                                    myChart2.resize();
                                }
                            },200)
                        </script>
                    </div>


                </div><!--/.col-->
                <div class="col-md-2">

                    <div class="panel panel-blue">

                        <div class="panel-body">
                            <ul class="todo-list">
                                <li class="todo-list-item">
                                    <div class="checkbox">
                                        C++
                                    </div>

                                </li>
                                <li class="todo-list-item">
                                    <div class="checkbox">

                                        Java
                                    </div>

                                </li>
                                <li class="todo-list-item">
                                    <div class="checkbox">

                                        Python
                                    </div>

                                </li>
                                <li class="todo-list-item">
                                    <div class="checkbox">

                                        Other
                                    </div>

                                </li>


                            </ul>
                        </div>

                    </div>

                </div><!--/.col-->
            </div>

        </div><!--/.col-->
        <div class="row">
            <div class="col-md-15">
            </div><!--/.row-->
            <div class="row">
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="panel panel-blue panel-widget ">
                        <div class="row no-padding">
                            <div class="col-sm-3 col-lg-5 widget-left">
                                <em class="glyphicon glyphicon-shopping-cart glyphicon-l"></em>
                            </div>
                            <div class="col-sm-9 col-lg-7 widget-right">
                                <div class="large">120</div>
                                <div class="text-muted">New Orders</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="panel panel-orange panel-widget">
                        <div class="row no-padding">
                            <div class="col-sm-3 col-lg-5 widget-left">
                                <em class="glyphicon glyphicon-comment glyphicon-l"></em>
                            </div>
                            <div class="col-sm-9 col-lg-7 widget-right">
                                <div class="large">52</div>
                                <div class="text-muted">Comments</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="panel panel-teal panel-widget">
                        <div class="row no-padding">
                            <div class="col-sm-3 col-lg-5 widget-left">
                                <em class="glyphicon glyphicon-user glyphicon-l"></em>
                            </div>
                            <div class="col-sm-9 col-lg-7 widget-right">
                                <div class="large">24</div>
                                <div class="text-muted">New Users</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <div class="panel panel-red panel-widget">
                        <div class="row no-padding">
                            <div class="col-sm-3 col-lg-5 widget-left">
                                <em class="glyphicon glyphicon-stats glyphicon-l"></em>
                            </div>
                            <div class="col-sm-9 col-lg-7 widget-right">
                                <div class="large">25.2k</div>
                                <div class="text-muted">Visitors</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/.row-->





        </div><!--/.row-->
    </div>	<!--/.main-->

    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/chart.min.js"></script>
    <script src="js/chart-data.js"></script>
    <script src="js/easypiechart.js"></script>
    <script src="js/easypiechart-data.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script>
        $('#calendar').datepicker({
        });

        !function ($) {
            $(document).on("click","ul.nav li.parent > a > span.icon", function(){
                $(this).find('em:first').toggleClass("glyphicon-minus");
            });
            $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
        }(window.jQuery);

        $(window).on('resize', function () {
            if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
        })
        $(window).on('resize', function () {
            if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
        })
    </script>



</body></html>