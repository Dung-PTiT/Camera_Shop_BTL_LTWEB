package controllerAdmin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CartItem;
import service.CartItemService;
import service.impl.CartServiceItemImpl;

@WebServlet(urlPatterns={"/admin/order/details"})
public class ViewOrderDetailsController extends HttpServlet {

     private CartItemService cartItemService = new CartServiceItemImpl();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cartID = req.getParameter("cartID");
        List<CartItem> cartItemList = cartItemService.getByCartItemId(Integer.parseInt(cartID));
        req.setAttribute("cartItemList", cartItemList);
        RequestDispatcher rd = req.getRequestDispatcher("/view/admin/orderDetail.jsp");
        rd.forward(req, resp);
    }
    
}
