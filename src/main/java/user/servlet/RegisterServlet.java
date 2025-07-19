package user.servlet;

import DAO.UserDAOImpl;
import DB.DBConnect;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("fname");
            String email = req.getParameter("email");
            String phno = req.getParameter("phno");
            String password = req.getParameter("password");
            String check = req.getParameter("check");

           // System.out.println(name+" "+email+" "+phno+" "+password+" "+check);

            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhno(phno);
            us.setPassword(password);

            HttpSession session = req.getSession();

            if (check != null){
                UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
                boolean f = dao.userRegister(us);
                if (f){
                    //System.out.println("User Register Success....");

                    session.setAttribute("succMsg","Registration Successfully...");
                    resp.sendRedirect("register.jsp");

                }else{
                    //System.out.println("Something wrong on server....");

                    session.setAttribute("failedMsg","Something wrong on Server...");
                    resp.sendRedirect("register.jsp");

                }
            }else {
               // System.out.println("Please check Terms & Conditions");

                session.setAttribute("failedMsg","Please check Terms & Conditions...");
                resp.sendRedirect("register.jsp");

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
