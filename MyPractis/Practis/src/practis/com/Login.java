package practis.com;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Emailmembersending
 */

public class Login extends HttpServlet {
	
       
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
     * @see HttpServlet#HttpServlet()
     */
	
	private String host;
	private String port;
	private String user;
	private String pass;
	public String recipient;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
	}

    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//HttpSession session=request.getSession();
		 PrintWriter out = response.getWriter();
		 int min=100000;
		 int max=999999;
		 int otp=0;
		 Random r=new Random();
		otp=r.nextInt(max-min)+min;
			
			
		 
		String recipient=request.getParameter("loname"); 
		String password=request.getParameter("pass");
		String subject ="otp verification";
		String content ="your otp is: "+otp;
//System.out.print(recipient);
String resultMessage = "";

try{
	Thread.sleep(3000);
	
DBConnection db=new DBConnection();
	Statement st=db.con.createStatement();
	Statement stt=db.con.createStatement();
	
		  ResultSet rs=st.executeQuery("select * from register where  email='"+recipient+"' and password='"+password+"'");
	
		  while(rs.next())
		  {
			  stt.executeUpdate("update otp set otp='"+otp+"' where email='"+recipient+"'");
			//  response.sendRedirect("OTP.jsp");
			  
		  }
		 
		EmailSend.sendEmail(host, port, user, pass, recipient, subject,
				content);
		 
		resultMessage = "The e-mail was sent successfully and account is activated";
			  db.con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
			resultMessage = "There were an error: " + ex.getMessage();
		} finally {
			
			RequestDispatcher ee = request.getRequestDispatcher("OTP.jsp");
			 ee.include(request, response);
	          out.println("<script type=\"text/javascript\">");
	          out.println("alert('"+resultMessage+"');");
	         out.println("</script>");
	         
		
		}
		
	}

}
