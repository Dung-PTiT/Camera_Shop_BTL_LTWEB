package controllerClient;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.CartItem;
import model.Person;
import service.CartItemService;
import service.CartService;
import service.PersonService;
import service.impl.CartServiceImpl;
import service.impl.CartServiceItemImpl;
import service.impl.PersonServiceImpl;

@WebServlet(urlPatterns = {"/client/view/history-order"})
public class ShowHistoryOrderClientController extends HttpServlet {

    CartService cartService = new CartServiceImpl();
    CartItemService cartItemService = new CartServiceItemImpl();
    PersonService personService = new PersonServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Object objP = session.getAttribute("user");
        Person buyer = (Person) objP;
        int buyerId = buyer.getId();
        List<Cart> cartList = cartService.getByPersonId(buyerId);   
        req.setAttribute("cartList", cartList);
        RequestDispatcher rd = req.getRequestDispatcher("/view/client/orderHistory.jsp");
        rd.forward(req, resp);
    }

}
