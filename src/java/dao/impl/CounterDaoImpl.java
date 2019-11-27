package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dao.CounterDao;
import model.Counter;
import model.Person;

public class CounterDaoImpl implements CounterDao {

    private Connection conn = JDBCConnection.getInstance().getConnection();

    @Override
    public void create(Counter c) {
       
        try {
            String sql = "INSERT INTO counter(quantity) " + "VALUES (?)";

            PreparedStatement statement = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            statement.setInt(1, c.getNumber());

            statement.executeUpdate();

            ResultSet generatedKeys = statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                int id = generatedKeys.getInt(1);
                c.setId(id);// set vao doi tuong de su dung trong ham main sau nay
            }
        } catch (Exception e) {
            System.out.println("Loi CSDL: " + e);
        } 
    }

    @Override
    public Counter get(int id) {

      
        try {
            String sql = "SELECT * FROM counter WHERE id =?";

            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, id);

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                Counter c = new Counter();
                c.setId(id);
                c.setNumber(rs.getInt("number"));
                return c;
            }
        } catch (Exception e) {
            System.out.println("Loi CSDL: " + e);
        } 
        
        return null;
    }

    @Override
    public void update(Counter c) {
      
        try {
            String sql = "UPDATE counter SET quantity = ? WHERE (id = ?) ";

            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, c.getNumber());
            statement.setInt(2, c.getId());

            statement.executeUpdate();
        } catch (Exception e) {
            System.out.println("Loi CSDL: " + e);
       
        }

    }

}
