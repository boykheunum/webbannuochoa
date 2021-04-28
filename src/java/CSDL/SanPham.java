/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Model.sanphamModel;
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
public class SanPham {

    public static int listSP(Vector<sanphamModel> ls) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM sanpham";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    sanphamModel tp = new sanphamModel();
                    tp.setMasp(rs.getString("masp"));
                    tp.setMaloaisp(rs.getString("maloaisp"));
                    tp.setTensp(rs.getString("tensp"));
                    tp.setSoluong(rs.getInt("soluong"));
                    tp.setGianhap(rs.getInt("gianhap"));
                    tp.setGiaban(rs.getInt("giaban"));
                    tp.setMota(rs.getString("mota"));
                    tp.setAnh(rs.getString("anh"));
                    ls.add(tp);
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(sanphamModel.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int addLoaiSP(sanphamModel lsm) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO sanpham values(?,?)";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setString(1, lsm.getMasp());
                ps.setString(2, lsm.getMaloaisp());
                ps.setString(3, lsm.getTensp());
                ps.setInt(4, lsm.getSoluong());
                ps.setInt(5, lsm.getGianhap());
                ps.setInt(6, lsm.getGiaban());
                ps.setString(7, lsm.getMota());
                ps.setString(8, lsm.getAnh());
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(SanPham.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int deleteLoaiSP(String keyword) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "DELETE FROM sanpham WHERE masp = ?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, keyword);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(SanPham.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int editLoaiSP(sanphamModel lsm, String id) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO sanpham values(?) WHERE masp = ?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, lsm.getMaloaisp());
                ps.setString(2, lsm.getTensp());
                ps.setInt(3, lsm.getSoluong());
                ps.setInt(4, lsm.getGianhap());
                ps.setInt(5, lsm.getGiaban());
                ps.setString(6, lsm.getMota());
                ps.setString(7, lsm.getAnh());
                ps.setString(8, lsm.getMasp());
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(SanPham.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }
}
