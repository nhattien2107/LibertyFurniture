<%-- 
    Document   : addbrand
    Created on : Oct 9, 2020, 9:27:22 PM
    Author     : Admin
--%>

<%@page import="com.g4furnitureshop.model.nation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.g4furnitureshop.dao.nationDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Add Brand</title>
        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
        <!-- Bootstrap core CSS -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
        <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
        <!-- Custom styles for this template -->
        <link href="css/style2.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet">
        <script src="lib/chart-master/Chart.js"></script>
    </head>
    <body>
        <%
        if(session.getAttribute("adusername")==null)
            {
                response.sendRedirect("adminlogin.jsp");
            }
        %>
        <section id="container">
        <!--header-->
        <header class="header black-bg">
            <jsp:include page="model/adminheader.jsp"></jsp:include>
        </header>

        <!--MAIN SIDEBAR MENU-->
        <aside>
            <jsp:include page="model/adminsidebar.jsp"></jsp:include>
        </aside>

        <!--MAIN CONTENT-->
        <!--main content start-->
        <section id="main-content">
            <div style="float: left;">
            <form action="../addbrandServlet" method="post">
            <h3 style="text-align:center;"> Add New Brand</h3>
            <table style="width: 700px;">
                <tr>
                    <td>Brand ID: </td>
                    <td><input type="text" name="brand_id" /></td>
                </tr>
                <tr>
                    <td>Brand Name: </td>
                    <td><input type="text" name="brand_name" /></td>
                </tr>
                <tr>
                    <td>Nation_ID: </td>
                    <td>
                        <%
                            nationDAO naDAO= new nationDAO();
                            ArrayList<nation> list = new ArrayList<>();
                            list = naDAO.findAll();
                            out.print("<select style='width: 100px; height:30px; margin-left:5px;' name= 'nation_id'>");
                            for(nation item: list) {
                            out.print("<option value='"+item.getNation_id()+"'>"+item.getNation_name()+"</option>");
                        }
                        out.print("</select>");
                        %>
                    </td>
                </tr>
                <tr>
                      <td colspan="2" ><input style="margin-left: 200px;margin-top: 20px;margin-bottom: 20px;" type="submit" value="Add New"/> </td>
                </tr>
            </table>     
        </form>
        </div>
        </section>
        <!--main content end-->
    </section>
    </body>
    
    <script src="lib/jquery/jquery.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
    <script src="lib/jquery.scrollTo.min.js"></script>
    <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="lib/jquery.sparkline.js"></script>
    <!--common script for all pages-->
    <script src="lib/common-scripts.js"></script>
    <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="lib/gritter-conf.js"></script>
</html>
