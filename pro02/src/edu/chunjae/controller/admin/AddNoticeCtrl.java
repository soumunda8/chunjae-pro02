package edu.chunjae.controller.admin;

import edu.chunjae.dto.Notice;
import edu.chunjae.model.NoticeDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/addNotice.do")
public class AddNoticeCtrl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String msg = "관리자의 공지사항 글 등록폼이 로딩되었습니다.";

        request.setAttribute("msg", msg);

        RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/admin/addNotice.jsp");
        view.forward(request, response);

    }

}
