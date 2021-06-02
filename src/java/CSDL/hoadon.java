/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Model.hoaDonModel;
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
public class hoadon {

    public static int listCTHD(Vector<hoaDonModel> ds) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM hoadon";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    hoaDonModel hd = new hoaDonModel();
                    hd.setMahd(rs.getInt("mahd"));
                    hd.setMakh(rs.getInt("makh"));
                    hd.setManv(rs.getInt("manv"));
                    hd.setNgayban(rs.getString("ngayban"));
                    hd.setTongtien(rs.getFloat("tongtien"));
                    ds.add(hd);
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(hoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int addCTHD(hoaDonModel hd) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO hoadon values(?,?,?,?,?)";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setInt(1, hd.getMahd());
                ps.setInt(5, hd.getMakh());
                ps.setInt(4, hd.getManv());
                ps.setString(2, hd.getNgayban());
                ps.setFloat(3, hd.getTongtien());
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(hoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int editThongTin(int keyword, hoaDonModel hd) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "UPDATE hoadon SET makh=?, manv=?, ngayban=?, tongtien=? WHERE mahd=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);

                ps.setInt(1, hd.getMakh());
                ps.setInt(2, hd.getManv());
                ps.setString(3, hd.getNgayban());
                ps.setFloat(4, hd.getTongtien());
                ps.setInt(5, keyword);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(thongtincuahang.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int searchTinTuc(int keyWord, hoaDonModel hd) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM hoadon WHERE mahd=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setInt(1, keyWord);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {

                    hd.setMahd(rs.getInt("mahd"));
                    hd.setMakh(rs.getInt("makh"));
                    hd.setManv(rs.getInt("manv"));
                    hd.setNgayban(rs.getString("ngayban"));
                    hd.setTongtien(rs.getFloat("tongtien"));
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(hoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int deleteThongTin(int keyWord) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "DELETE * FROM hoadon WHERE mahd=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setInt(1, keyWord);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(hoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }
}
