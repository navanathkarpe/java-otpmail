package practis.com;


import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fn=request.getParameter("fname");
		String ln=request.getParameter("lname");
		String un=request.getParameter("uname");
		String pass=request.getParameter("password");
		String rn=request.getParameter("roll");
		String dp=request.getParameter("department");
		String cl=request.getParameter("class");
		String ge=request.getParameter("gender");
		String bl=request.getParameter("bd");
		String em=request.getParameter("email");
		String cn=request.getParameter("contact");
		System.out.println(fn);
		System.out.println(ln);
		System.out.println(un);
		System.out.println(pass);
		System.out.println(rn);
		System.out.println(dp);
		System.out.println(cl);
		System.out.println(ge);
		System.out.println(bl);
		try{
		DBConnection db= new DBConnection();
			db.rs = db.st.executeQuery("select * from register where uname ='"+un+"'and email='"+em+"'");
		if (db.rs.next()){
			
		response.sendRedirect("Registration.jsp");
		}else{
			 String aa="insert into otp(email)values(?)";
				
			PreparedStatement pss= db.con.prepareStatement(aa);
			PreparedStatement ps= db.con.prepareStatement("insert into register(fname,lname,uname,password,roll,department,class,gender,bdate,contact,email)values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, fn);
			ps.setString(2, ln);
			ps.setString(3, un);
			ps.setString(4, pass);
			ps.setString(5, rn);
			ps.setString(6, dp);
			ps.setString(7, cl);
			ps.setString(8, ge);
			ps.setString(9, bl);
			ps.setString(10, cn);
			ps.setString(11, em);
			pss.setString(1, em);
			ps.executeUpdate();
			pss.executeUpdate();
			db.con.close();
			response.sendRedirect("Login.jsp");
		}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	private void cathc() {
		// TODO Auto-generated method stub
		
	}

}
