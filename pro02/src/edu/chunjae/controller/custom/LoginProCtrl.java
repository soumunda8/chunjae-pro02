package edu.chunjae.controller.custom;

import edu.chunjae.dto.Custom;
import edu.chunjae.model.CustomDAO;
import org.checkerframework.checker.units.qual.C;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/loginPro.do")
public class LoginProCtrl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String msg = "";

        CustomDAO dao = new CustomDAO();
        boolean cnt = dao.login(id, pw);

        HttpSession session = request.getSession();
        RequestDispatcher view;

        if(cnt) {
            msg = "로그인 성공";
            session.setAttribute("sid", id);
            request.setAttribute("msg", msg);
            response.sendRedirect(request.getContextPath());

            view = request.getRequestDispatcher(request.getContextPath());
            view.forward(request, response);
            //response.sendRedirect("/");
        } else {
            response.sendRedirect(request.getContextPath() + "/login.do?msg=" + msg);
        }

    }
}
