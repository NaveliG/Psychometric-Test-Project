<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@page import="com.dataacesslayer.dao"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.SQLException"%>
<%@ page import="java.sql.*" %>

<%
dao obj=new dao();
 Connection con = dao.makeConnection();
 Statement st=con.createStatement();
 PreparedStatement ps=con.prepareStatement("SELECT COUNT(sStatus) FROM status  WHERE sStatus = 'pass'");
 System.out.println("XX Query");
 ResultSet rs=ps.executeQuery();
  int count = 0;
 while ( rs.next() )
 {
     // Process the row.
	 count = rs.getInt(1);
 } 
   
 System.out.println("There were " + count + "Pass records.");

  PreparedStatement ps1=con.prepareStatement("SELECT COUNT(*) FROM status  WHERE sStatus = 'fail'");
  ResultSet rs1=ps1.executeQuery();
 
  int count1=0;
if(rs1.next())
{
	count1 = rs1.getInt(1);
} 
System.out.println("There were " + count1 + "Fail records.");
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "Pass"); map.put("y", count); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Fail"); map.put("y", count1); list.add(map); 



String dataPoints = gsonObj.toJson(list);
%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2", // "light1", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "StudentInfo"
	},
	data: [{
		type: "pie",
		toolTipContent: "<b>{label}</b>: {y}%",
		indexLabelFontSize: 20,
		indexLabel: "{label} - {y}%",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>   