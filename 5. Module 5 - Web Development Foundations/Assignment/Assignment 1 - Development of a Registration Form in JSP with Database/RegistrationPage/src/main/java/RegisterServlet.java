

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private RegisterDao registerDao;

    public void init() {
        registerDao = new RegisterDao();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String fullname = request.getParameter("fullname");
		String location = request.getParameter("location");
        String password = request.getParameter("password");   
        String confPass = request.getParameter("confPass");
        
        PrintWriter out = response.getWriter();
        if(!password.equals(confPass)) {
        	RequestDispatcher rd = request.getRequestDispatcher("views/registration.jsp");
        	out.println("<script type=\"text/javascript\">");
        	out.println("alert('Confirm Password does not match');");
        	out.println("</script>");
        	rd.include(request, response);
        } else {
        	
        	  UserBean userBean = new UserBean();
              userBean.setEmail(email);
              userBean.setFullname(fullname);
              userBean.setLocation(location);
              userBean.setPassword(password);

              try {
                  registerDao.registerUser(userBean);
                  response.sendRedirect("views/thankyou.jsp");
              } catch (Exception e) {
                  e.printStackTrace();
              }        	
        }
              
	}

}
