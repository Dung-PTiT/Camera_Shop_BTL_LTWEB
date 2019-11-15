package controllerAdmin;

import dao.StatusDAO;
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
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cartID = req.getParameter("cartID");
        String statusID = req.getParameter("statusID");
        Status s = statusDao.getByID(Integer.parseInt(statusID));
        System.out.println(cartID +" "+ statusID);
        System.out.println("Status:"+ s.getStatusName());
        
        resp.sendRedirect(req.getContextPath() + "/admin/order/list");//page cart
//        RequestDispatcher rd = req.getRequestDispatcher("/view/admin/tableOrder.jsp");
//		rd.forward(req, resp);     
    }
    
}
