package edu.chunjae.controller.admin;

import edu.chunjae.model.NoticeDAO;
import org.checkerframework.checker.units.qual.N;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/deleteNoticePro.do")
public class DeleteNotionCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int no = Integer.parseInt(request.getParameter("no"));

        NoticeDAO dao = new NoticeDAO();
        int cnt = dao.deleteNotice(no);

        PrintWriter out = response.getWriter();

        if(cnt > 0){
            response.sendRedirect("/WEB-INF/admin/noticeList.do");
        } else {
            out.println("<script>history.go(-1);</script>");
        }

    }
}
