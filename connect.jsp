
<%@ page import ="java.sql.*" %>

<%

String Department_Name =request.getParameter("Dept_Name");
String HOD_Name =request.getParameter("HOD_Name");
String email =request.getParameter("email");
String contact =request.getParameter("phone");
String password =request.getParameter("pass");
String cpassword =request.getParameter("cpass");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Store","root","root1234");
	PreparedStatement ps = con.prepareStatement("insert into example(Dept_Name,HOD_Name,email,phone,pass,cpass) VALUES(?,?,?,?,?,?)");
	
	ps.setString(1,Department_Name);
	ps.setString(2,HOD_Name);
	ps.setString(3,email);
	ps.setString(4,contact);
	ps.setString(5,password);
	ps.setString(6,cpassword);
	
	
	int x = ps.executeUpdate();
	
	if(x > 0)
	{
		out.println("Registration done successfully...");
	}else{
		out.println("Registration Failed..");
	}	
}catch (Exception e)
	{
			out.println(e);
	}


%>

