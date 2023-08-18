package edu.chunjae.model;

import edu.chunjae.dto.Custom;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomDAO {

    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public List<Custom> getCustomList() {

        List<Custom> customList = new ArrayList<>();

        return customList;

    }

    public Custom getCustom(String id) {

        Custom custom = new Custom();

        return custom;

    }

    public boolean login(String id, String pw) {

        boolean pass = false;
        DBConnect con = new PostgreCon();

        try {

            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.CUSTOM_SELECT_LOG);
            pstmt.setString(1, id);
            pstmt.setString(2, pw);
            rs = pstmt.executeQuery();
            if(rs.next()) {
                pass = true;
            }

        } catch (SQLException e) {

            throw new RuntimeException(e);

        } finally {

            con.close(rs, pstmt, conn);

        }

        return pass;

    }

    public int join(Custom custom) {

        int cnt = 0;

        return cnt;

    }

    public int updateCustom(Custom custom) {

        int cnt = 0;

        return cnt;

    }

    public int updatePointCustom(Custom custom) {

        int cnt = 0;

        return cnt;

    }

    public int updateGradeCustom(Custom custom) {

        int cnt = 0;

        return cnt;

    }

    public int deleteCustom(String id) {

        int cnt = 0;

        return cnt;

    }

}
