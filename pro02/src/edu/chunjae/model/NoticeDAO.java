package edu.chunjae.model;

import edu.chunjae.dto.*;

import java.sql.*;
import java.util.*;

public class NoticeDAO {

    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public List<Notice> getNoticeList() {

        List<Notice> noticeList = new ArrayList<>();
        DBConnect con = new PostgreCon();

        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.NOTICE_SELECT_ALL);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Notice notice = new Notice();
                notice.setNo(rs.getInt("no"));
                notice.setTitle(rs.getString("title"));
                notice.setContent(rs.getString("content"));
                notice.setResdate(rs.getString("resdate"));
                notice.setVisited(rs.getInt("visited"));
                noticeList.add(notice);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }

        return  noticeList;

    }

    public Notice getNotice(int no) {

        Notice notice = new Notice();
        DBConnect con = new PostgreCon();

        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.NOTICE_SELECT_ONE);
            pstmt.setInt(1, no);
            rs = pstmt.executeQuery();
            if(rs.next()) {
                notice.setNo(rs.getInt("no"));
                notice.setTitle(rs.getString("title"));
                notice.setContent(rs.getString("content"));
                notice.setResdate(rs.getString("resdate"));
                notice.setVisited(rs.getInt("visited"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }

        return  notice;

    }

    public int addNotice(Notice noti) {

        int cnt = 0;
        DBConnect con = new PostgreCon();

        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.NOTICE_INSERT);
            pstmt.setString(1, noti.getContent());
            pstmt.setString(1, noti.getTitle());
            cnt = pstmt.executeUpdate();
            if(cnt > 0) {
                System.out.println(cnt + " 건의 레코드가 추가되었습니다.");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }

        return cnt;

    }

    public int updateNotice(Notice noti) {

        int cnt = 0;
        DBConnect con = new PostgreCon();

        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.NOTICE_UPDATE);
            pstmt.setString(1, noti.getTitle());
            pstmt.setString(2, noti.getContent());
            cnt = pstmt.executeUpdate();
            if(cnt > 0) {
                System.out.println(cnt + " 건의 레코드가 변경되었습니다.");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }

        return cnt;

    }

    public int deleteNotice(int no) {

        int cnt = 0;
        DBConnect con = new PostgreCon();

        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.NOTICE_DELETE);
            pstmt.setInt(1, no);
            cnt = pstmt.executeUpdate();
            if(cnt > 0) {
                System.out.println(cnt + " 건의 레코드가 삭제되었습니다.");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }

        return cnt;

    }

}
