/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Model.thongTinCuaHangModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nguyen Tien Dat
 */
public class thongtincuahang {

    public static int listTT(Vector<thongTinCuaHangModel> ds) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM thongtincuahang";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    thongTinCuaHangModel tt = new thongTinCuaHangModel();
                    tt.setDiachi(rs.getString("diachi"));
                    tt.setEmail(rs.getString("email"));
                    tt.setSdtcuahang(rs.getString("sdtcuahang"));
                    tt.setId(rs.getInt("id"));
                    ds.add(tt);
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(thongtincuahang.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int addThongTin(thongTinCuaHangModel tt) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO thongtincuahang(sdtcuahang, email, diachi) values(?,?,?)";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(3, tt.getSdtcuahang());
                ps.setString(2, tt.getEmail());
                ps.setString(1, tt.getDiachi());
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(thongtincuahang.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int editThongTin(int keyword, thongTinCuaHangModel tt) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "UPDATE `thongtincuahang` SET `sdtcuahang`= ?,`email`=?,`diachi`= ? WHERE `id`=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setString(3, tt.getSdtcuahang());
                ps.setString(2, tt.getEmail());
                ps.setString(1, tt.getDiachi());
                ps.setInt(4, keyword);
                String test = ps.toString();
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(thongtincuahang.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int searchThongTin(int keyWord, thongTinCuaHangModel tt) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM thongtincuahang WHERE id = ?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setInt(1, keyWord);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    tt.setDiachi(rs.getString("diachi"));
                    tt.setEmail(rs.getString("email"));
                    tt.setSdtcuahang(rs.getString("sdtcuahang"));
                    tt.setId(rs.getInt("id"));
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(thongtincuahang.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int deleteThongTin(int keyWord) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "DELETE FROM thongtincuahang WHERE id = ?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setInt(1, keyWord);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(thongtincuahang.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }
}
