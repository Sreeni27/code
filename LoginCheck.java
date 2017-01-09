
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// getparam get values from jsp page

		String uname = request.getParameter("uname");
		String passwd = request.getParameter("passwd");
		model.Logincredential obj = new model.Logincredential();
		obj.setUname(uname);
		obj.setPassswd(passwd);

		if (obj.checkLogin()) {
			RequestDispatcher dispatch = request.getRequestDispatcher("Success.jsp");
			dispatch.forward(request, response);
		} else {
			RequestDispatcher dispatch = request.getRequestDispatcher("Failure.jsp");
			dispatch.forward(request, response);
		}
	}

}
