package dao.impl;

import dao.StatusDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Status;

public class StatusDaoImpl extends JDBCConnection implements StatusDAO{

    @Override
    public Status getByID(int id) {
        Connection con = super.getConnect();
        String sql = "SELECT * FROM camera_shop.status where id = ?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Status status = new Status();
                status.setId(rs.getInt("id"));
                status.setStatusName(rs.getString("orderStatus"));
                return status;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StatusDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(StatusDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
