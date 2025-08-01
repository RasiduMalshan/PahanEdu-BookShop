package DAO;

import entity.BookOrder;

import java.util.List;

public interface BookOrderDAO {

    public boolean saveOrder(List<BookOrder> b);

}
