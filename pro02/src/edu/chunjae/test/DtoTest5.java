package edu.chunjae.test;

import edu.chunjae.model.*;
import java.sql.*;

public class DtoTest5 {

    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public static void main(String[] args) {
        
        DBConnect con = new PostgreCon();
        conn = con.connect();
        if(conn!=null) {
            System.out.println("PostgreSQL 연결 성공");
        }

        String sql = "delete from notice where no=?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, 5);
            int cnt = pstmt.executeUpdate();
            if (cnt > 0) {
                System.out.println("한 건의 레코드가 삭제되었습니다.");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }

    }

}