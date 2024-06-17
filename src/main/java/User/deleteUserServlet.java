package User;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteUserServlet")
public class deleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("uid");
		
		boolean isTrue;
		
		isTrue = userDButil.deleteuser(id);
		
		if(isTrue==true) {
			//navigate to sign up page
			RequestDispatcher dispatcher = request.getRequestDispatcher("userInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			//navigate to user account with user details list
			List<User> uDetails = userDButil.getUserDetails(id);
			request.setAttribute("userDetails", uDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}
