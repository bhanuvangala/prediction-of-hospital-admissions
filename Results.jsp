
<%@ include file="connect.jsp"%>


<%
try
{

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
	
			int age=0;
			String query="select max(age) from patients"; 
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(query);
			if ( rs.next() )
			{
						//int  i=rs.getInt(1);
						String age1=rs.getString(1);
						age=Integer.parseInt(age1);
			}
			int range1=10,range2=20,count=0;
			
			int p1=age%10;
			int p2=10-p1;
			int age1=age+p2;
			
			while(range2<=age1)
			{
					String query1="select count(*) from patients where age>='"+range1+"' and age<='"+range2+"'"; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
					if ( rs1.next() )
					{
								count=rs1.getInt(1);
					}
						String range=range1+"-"+range2;	
					
						
						%>		
						myData["<%=i%>"]=["<%=range %>",<%=count%>];
						<%
						i++;
						range1=range2;
						range2=range1+10;
			}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setSize(800,350);
	myChart.setAxisValuesColor('#777E81');
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

