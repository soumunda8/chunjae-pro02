package edu.chunjae.controller.notice;

import edu.chunjae.dto.*;
import edu.chunjae.model.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/notice.do")
public class NoticeCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int no = Integer.parseInt(request.getParameter("no"));

        NoticeDAO dao = new NoticeDAO();
        Notice notice = dao.getNotice(no);

        request.setAttribute("notice",notice);

        RequestDispatcher view = request.getRequestDispatcher("/notice/getNotice.jsp");
        view.forward(request, response);

    }

}
