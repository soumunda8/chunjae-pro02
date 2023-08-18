package edu.chunjae.controller.admin;

import edu.chunjae.dto.Notice;
import edu.chunjae.model.NoticeDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/addNoticePro.do")
public class AddNoticeProCtrl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /*
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        */

        Notice noti = new Notice();
        noti.setTitle(request.getParameter("title"));
        noti.setContent(request.getParameter("content"));

        PrintWriter out = response.getWriter();

        NoticeDAO dao = new NoticeDAO();
        int cnt = dao.addNotice(noti);

        if(cnt > 0) {
            response.sendRedirect("/WEB-INF/admin/noticeList.do");
        } else {
            //response.sendRedirect("/addNotice.do");
            out.println("<script>history.go(-1);</script>");
        }

    }

}
