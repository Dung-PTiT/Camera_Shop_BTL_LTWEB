package controllerClient;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CartItem;
import service.CartItemService;
import service.CartService;
import service.impl.CartServiceImpl;
import service.impl.CartServiceItemImpl;

@WebServlet(urlPatterns = {"/view/cart"})
public class ViewCartController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      RequestDispatcher rd = req.getRequestDispatcher("/view/client/viewCart.jsp");
		rd.forward(req, resp);
    }
}
