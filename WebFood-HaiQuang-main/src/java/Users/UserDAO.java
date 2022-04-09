/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Users;

import utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author HaiQuang
 */
public class UserDAO {

    public UserDTO checkLogin(String userID, String password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT name, roleID FROM tblUsers WHERE userID=? and password=? ";

                stm = conn.prepareStatement(sql);
                stm.setString(1, userID);
                stm.setString(2, password);
                rs = stm.executeQuery();
                if (rs.next()) {
                    String name = rs.getString("name");
                    String roleID = rs.getString("roleID");
                    user = new UserDTO(userID, password, name, "", "", roleID);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return user;
    }

    public UserDTO checkLoginGoogle(String id, String email, String fullname) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT name, roleID FROM tblUsers WHERE userID=? and password=? ";

                stm = conn.prepareStatement(sql);
                stm.setString(1, email);
                stm.setString(2, id);
                rs = stm.executeQuery();
                if (rs.next()) {
                    String name = rs.getString("name");
                    String roleID = rs.getString("roleID");
                    user = new UserDTO(email, id, name, "", "", roleID);
                }

                if (user == null) {
                    user = new UserDTO(email, id, fullname, "", "", "2");
                    sql = "INSERT INTO tblUsers(userID, password,name, address, phone, roleID) VALUES(?,?,?,?,?,?)";
                    stm = conn.prepareStatement(sql);
                    stm.setString(1, email);
                    stm.setString(2, id);
                    stm.setString(3, fullname);
                    stm.setString(4, "");
                    stm.setString(5, "");
                    stm.setString(6, "2");
                    stm.executeUpdate();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return user;

    }

}
