package user.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {

            HttpSession session = req.getSession();
            session.removeAttribute("userobj");

            HttpSession session2 = req.getSession();
            session.setAttribute("succMsg", "Logout Successfully.");
            resp.sendRedirect("login.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
