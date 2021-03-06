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
    
    public static int countHD() {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT COUNT(*) FROM hoadon";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    return rs.getInt(1);
                }
            } catch (SQLException ex) {
                Logger.getLogger(hoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
        return 0;
    }
    
    public static int listHD(Vector<hoaDonModel> ds) {
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

    public static int addHD(hoaDonModel hd) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO hoadon values(?,?,?,?)";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setInt(1, hd.getMahd());
                ps.setInt(4, hd.getMakh());
                ps.setString(2, hd.getNgayban());
                ps.setFloat(3, hd.getTongtien());
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(hoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int editHD(int keyword, hoaDonModel hd) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "UPDATE hoadon SET makh=?, ngayban=?, tongtien=? WHERE mahd=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setInt(3, hd.getMakh());
                ps.setString(1, hd.getNgayban());
                ps.setFloat(2, hd.getTongtien());
                ps.setInt(4, keyword);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(thongtincuahang.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int searchHoaDon(int keyWord, hoaDonModel hd) {
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

    public static int deleteHD(int keyWord) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "DELETE FROM hoadon WHERE mahd=?";
            String sql1 = "DELETE FROM `chitiethoadon` WHERE mahd=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql1);
                ps.setInt(1, keyWord);
                ps.executeUpdate();
                ps = cnn.prepareStatement(sql);
                ps.setInt(1, keyWord);
                String test = ps.toString();
                ps.executeUpdate();
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(hoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int layMahdCuoi(hoaDonModel hd) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT mahd FROM `hoadon` WHERE mahd=(SELECT MAX(mahd) FROM `hoadon`)";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                String test = ps.toString();
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    hd.setMahd(rs.getInt("mahd"));
                }

                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(hoadon.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int searchMaKH(int keyWord, Vector<hoaDonModel> ds) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM hoadon WHERE makh=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setInt(1, keyWord);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    hoaDonModel hd = new hoaDonModel();
                    hd.setMahd(rs.getInt("mahd"));
                    hd.setMakh(rs.getInt("makh"));
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

}
