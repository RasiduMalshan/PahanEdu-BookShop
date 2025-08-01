package DAO;

import entity.BookOrder;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class BookOrderDAOImpl implements BookOrderDAO{

    private Connection conn;

    public BookOrderDAOImpl(Connection conn){
        super();
        this.conn = conn;
    }

    @Override
    public boolean saveOrder(List<BookOrder> blist) {
        boolean f = false;

        try {

            String sql = "insert into book_order(order_id,user_name,email,address,phone,book_name,author,price,payment) values(?,?,?,?,?,?,?,?,?)";

            conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);

            for (BookOrder b:blist)
            {
                ps.setString(1, b.getOrderId());
                ps.setString(2, b.getUserName());
                ps.setString(3, b.getEmail());
                ps.setString(4, b.getFulladd());
                ps.setString(5, b.getPhno());
                ps.setString(6, b.getBookName());
                ps.setString(7, b.getAuthor());
                ps.setString(8, b.getPrice());
                ps.setString(9, b.getPaymentType());
                ps.addBatch();

            }

            int[] count = ps.executeBatch();
            conn.commit();
            f=true;
            conn.setAutoCommit(true);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }
}
