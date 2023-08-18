package edu.chunjae.controller.custom;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login.do")
public class LoginCtrl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String msg = request.getParameter("msg");

        if(msg != "") {

            request.setAttribute("msg", "로그인 하시기 바랍니다.");

        } else {

            request.setAttribute("msg", "로그인에 실패하였습니다.");

        }

        RequestDispatcher view = request.getRequestDispatcher("/custom/login.jsp");
        view.forward(request, response);

    }

}
