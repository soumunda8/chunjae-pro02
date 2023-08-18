package edu.chunjae.test;

import edu.chunjae.model.*;
import java.sql.*;

public class DtoTest4 {

    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public static void main(String[] args) {
        
        DBConnect con = new PostgreCon();
        conn = con.connect();
        if(conn!=null) {
            System.out.println("PostgreSQL 연결 성공");
        }

        String sql = "update notice set title=?, content=? where no=?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1 ,"DAO 수정 테스트");
            pstmt.setString(2 ,"DAO 수정 테스트 내용");
            pstmt.setInt(3, 3);
            int cnt = pstmt.executeUpdate();
            if (cnt > 0) {
                System.out.println("한 건의 레코드가 변경되었습니다.");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }

    }

}