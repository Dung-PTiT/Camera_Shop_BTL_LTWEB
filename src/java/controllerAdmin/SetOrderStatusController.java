package controllerAdmin;

import dao.CartDao;
import dao.StatusDAO;
import dao.impl.CartDaoImpl;
import dao.impl.StatusDaoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Status;

@WebServlet(urlPatterns={"/admin/setOrderStatus"})
public class SetOrderStatusController extends HttpServlet {
            
    private StatusDAO statusDao = new StatusDaoImpl();
    private CartDao cartDao = new CartDaoImpl();
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cartID = req.getParameter("cartID");
        String statusID = req.getParameter("statusID");
        Status status = statusDao.getByID(Integer.parseInt(statusID));
        cartDao.updateStatusCart(Integer.parseInt(cartID),status.getStatusName());
        resp.sendRedirect(req.getContextPath() + "/admin/order/list");//page cart   
    }
    
}
