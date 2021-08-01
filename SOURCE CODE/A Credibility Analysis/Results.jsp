
<%@ include file="connect.jsp"%>


<%
try
{

ResultSet rs=connection.createStatement().executeQuery("select * from ttopic");
%><html>
<head>
<title>Transaction Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null;
	
	while(rs.next())
	{
	 s1=rs.getString(2);
	int s3=Integer.parseInt(rs.getString(8));
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%= s3%>];
        
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#6699FF');
	myChart.setBarOpacity(0.8);
	myChart.setSize(900,350);
	myChart.setBarBorderColor('#6699FF');
	myChart.setBarValues(true);
	myChart.setTitleColor('#6699FF');
	myChart.setAxisColor('#6699FF');
	myChart.setAxisValuesColor('#6699FF');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

