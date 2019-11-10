package controllerClient;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns="/client/informationBill")
public class InformationBillController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String fullname = "Trong Dung";
		req.setAttribute("fullname",fullname);
		req.setAttribute("phoneO","0123456789");	
		req.setAttribute("emailO","trongdungk53@gmail.com");
		req.setAttribute("deliveryAdd","Thuan Thanh, Bac Ninh");
		RequestDispatcher dispatcher = 
				req.getRequestDispatcher("/view/client/BillInformation.jsp");
				dispatcher.forward(req, resp);		
	}
}
