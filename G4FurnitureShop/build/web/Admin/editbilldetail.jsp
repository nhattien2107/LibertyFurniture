<%@page import="com.g4furnitureshop.model.bill_detail"%>
<%@page import="com.g4furnitureshop.dao.bill_detailDAO"%>
<%@page import="com.g4furnitureshop.model.productlist"%>
<%@page import="com.g4furnitureshop.dao.productlistDAO"%>
<%@page import="com.g4furnitureshop.model.bill"%>
<%@page import="com.g4furnitureshop.dao.billDAO"%>

<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Edit Bill Details</title>
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
            <form action="../editbilldetailServlet" method="post" enctype="multipart/form-data">
                <% 
                    int id = Integer.parseInt(request.getParameter("id"));
                    bill_detailDAO bidDAO=new bill_detailDAO();
                    bill_detail rs= bidDAO.findBybillDetailID(id);
                %>
            <h3 style="text-align:center;">Edit Bill Detail</h3>
            <table style="width: 700px;">
                <tr>
                    <td>Bill ID: </td>
                    <td>
                        <input type="hidden" name="billdetail_id" value='<%out.print(rs.getBilldetail_id());%>'/>
                        <%
                            billDAO biDAO= new billDAO();
                            ArrayList<bill> list = new ArrayList<>();
                            list = biDAO.findALL();
                            out.print("<select style=\"width: 100px; height:30px; margin-left:5px;\" name= 'bill_id'>");
                            for(bill item: list) {
                            out.print("<option value='"+item.getBill_id()+"'");
                                if(item.getBill_id()==(rs.getBill_id())){
                                    out.print("selected");}
                            out.print(">"+item.getBill_id()+"</option>");
                        }
                        out.print("</select>");
                        %>
                    </td>
                </tr>
                <tr>
                    <td>Product ID: </td>
                    <td >
                        <%
                            productlistDAO pdlDAO= new productlistDAO();
                            ArrayList<productlist> list2 = new ArrayList<>();
                            list2 = pdlDAO.findALL();
                            out.print("<select style=\"width: 400px; height:30px; margin-left:5px;\" name= 'product_id'>");
                            for(productlist item2: list2) {
                            out.print("<option value='"+item2.getProduct_id()+"'");
                                if(item2.getProduct_id()==(rs.getProduct_id())){
                                    out.print("selected");}
                            out.print(">"+item2.getProduct_name()+"</option>");
                        }
                        out.print("</select>");
                        %>
                    </td>
                </tr>
                <tr>
                    <td>Amount: </td>
                    <td><input type="text" name="amount" value='<%out.print(rs.getAmount());%>'/></td>
                </tr>
                <tr>
                      <td colspan="2" ><input style="margin-left: 200px;margin-top: 20px;margin-bottom: 20px;" type="submit" value="Update"/> </td>
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

