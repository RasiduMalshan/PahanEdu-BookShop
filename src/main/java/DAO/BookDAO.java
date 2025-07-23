package DAO;

import entity.BookDtls;

import java.util.List;

public interface BookDAO {

    public boolean addBooks(BookDtls b);

    public List<BookDtls> getAllBooks();

}
