package User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userInsert")
public class userInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		
String emailCheck = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\\\.[A-Z]{2,}$";
		
		if (email.matches(emailCheck)) {
            // The email is valid; you can proceed with further actions
            response.getWriter().write("Email is valid: " + email);
        } else {
            // The email is not valid
            response.getWriter().write("Please enter a valid email address");
        }
		
		boolean True;
		
		True = userDButil.insertUser(name, email, phone, userName, password);
		
		if(True == true) {
			////navigate to login page
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
