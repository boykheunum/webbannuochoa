/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Model.chiTietHoaDonModel;
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
public class chitiethoadon {

    public static int listCTHD(Vector<chiTietHoaDonModel> ds) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM chitiethoadon";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    chiTietHoaDonModel cthd = new chiTietHoaDonModel();
                    cthd.setIdmagiamgia(rs.getString("idmagiamgia"));
                    cthd.setMasp(rs.getString("masp"));
                    cthd.setGiaban(rs.getFloat("giaban"));
                    cthd.setMahd(rs.getInt("mahd"));
                    cthd.setSoluongmua(rs.getInt("soluongmua"));
                    cthd.setThanhtien(rs.getFloat("thanhtien"));
                    ds.add(cthd);
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(chitiethoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int addCTHD(chiTietHoaDonModel cthd) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO chitiethoadon values(?,?,?,?,?,?)";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(6, cthd.getIdmagiamgia());
                ps.setString(2, cthd.getMasp());
                ps.setFloat(4, cthd.getGiaban());
                ps.setInt(1, cthd.getMahd());
                ps.setInt(3, cthd.getSoluongmua());
                ps.setFloat(5, cthd.getThanhtien());
                String test = ps.toString();
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(chitiethoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int editThongTin(int keyword, chiTietHoaDonModel cthd) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "UPDATE chitiethoadon SET idmagiamgia=?, masp=?, giaban=?, soluongmua=?, thanhtien=? WHERE mahd=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setString(1, cthd.getIdmagiamgia());
                ps.setString(2, cthd.getMasp());
                ps.setFloat(3, cthd.getGiaban());
                ps.setInt(4, cthd.getSoluongmua());
                ps.setFloat(5, cthd.getThanhtien());
                ps.setInt(6, keyword);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(thongtincuahang.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int searchChiTietHoaDon(int keyWord, chiTietHoaDonModel cthd) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM chitiethoadon WHERE mahd=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setInt(1, keyWord);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    ps.setString(1, cthd.getIdmagiamgia());
                    ps.setString(2, cthd.getMasp());
                    ps.setFloat(3, cthd.getGiaban());
                    ps.setInt(4, cthd.getMahd());
                    ps.setInt(5, cthd.getSoluongmua());
                    ps.setFloat(6, cthd.getThanhtien());
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(chitiethoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int deleteThongTin(int keyWord) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "DELETE * FROM chitiethoadon WHERE mahd=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setInt(1, keyWord);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(chitiethoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int htChiTietHD(int mahd, Vector<chiTietHoaDonModel> ds) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM chitiethoadon Where mahd=?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setInt(1, mahd);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    chiTietHoaDonModel cthd = new chiTietHoaDonModel();
                    cthd.setIdmagiamgia(rs.getString("idmagiamgia"));
                    cthd.setMasp(rs.getString("masp"));
                    cthd.setGiaban(rs.getFloat("giaban"));
                    cthd.setMahd(rs.getInt("mahd"));
                    cthd.setSoluongmua(rs.getInt("soluongmua"));
                    cthd.setThanhtien(rs.getFloat("thanhtien"));
                    ds.add(cthd);
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(chitiethoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

}
