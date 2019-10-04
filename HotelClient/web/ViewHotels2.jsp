<%-- 
    Document   : ViewHotels2
    Created on : May 11, 2016, 10:26:58 PM
    Author     : Sdilshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Hotels</title>
        <%@include file="importHeader.jsp" %>
    </head>
    <body>
        <%@include file="HeaderCustomer.jsp" %>
        <div id="main" style="margin-left: 12%;margin-right: 12%">
            <div class="container-fluid">
                <div class="page-header">
                    <div class="pull-left">
                        <h1>View Hotels</h1>
                    </div>
                </div>
                <div class="breadcrumbs">
                    <ul>
                        <li>
                            <a href="index.jsp">Home</a>
                            <i class="icon-angle-right"></i>
                        </li>
                        <li>
                            <a href="ViewHotels2.jsp">View Hotels</a>
                            <i class="icon-angle-right"></i>
                        </li>
                        <div class="close-bread">
                            <a href="#"><i class="icon-remove"></i></a>
                        </div>
                    </ul>
                </div>

                <div class="row-fluid">
                    <div class="span10">
                        <div class="box box-bordered">
                            <h3>Hotels</h3>
                        </div>
                        <div class="box-content">
                            <%                                try {
                                    com.hotel.webClient.Hotel_Service service = new com.hotel.webClient.Hotel_Service();
                                    com.hotel.webClient.Hotel port = service.getHotelPort();
                                    // TODO process result here
                                    java.lang.String result = port.getAllHotels();
                                    String[] rows = result.split("~");
                                    for (int i = 0; i < rows.length; i++) {
                                        String[] columns = rows[i].split(",");
                            %>
                            <div class="row-fluid">
                                <div class="span4">
                                    <img src="img/hotel1.jpg" width="100%" height="100%">
                                </div>
                                <div class="span6">
                                    <h3>Hotel <%=columns[1]%> - <%=columns[2]%></h3>
                                    <hr/>
                                    <ol>Single Rooms : <%=columns[3]%></ol>
                                    <ol>Double Rooms : <%=columns[4]%></ol>
                                    <ol>Family Rooms : <%=columns[5]%></ol>
                                    <hr/>
                                    <button class="btn btn-danger" onclick="window.location = 'BookRooms.jsp?hotel_id=<%=columns[0]%>'">Book Rooms</button>
                                </div>
                            </div>
                            <hr/>
                            <%
                                    }
                                    //out.println("Result = " + result);
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                    // TODO handle custom exceptions here
                                }
                            %>
                        </div>
                    </div>
                </div>
                </body>
                </html>
