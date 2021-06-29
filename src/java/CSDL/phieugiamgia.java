/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Model.phieuGiamGiaModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.text.html.HTMLDocument;

/**
 *
 * @author Nguyen Tien Dat
 */
public class phieugiamgia {
    public static int countPGG() {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT COUNT(*) FROM magiamgia";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    return rs.getInt(1);
                }
            } catch (SQLException ex) {
                Logger.getLogger(phieugiamgia.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
        return 0;
    }
    public static int listTT(Vector<phieuGiamGiaModel> ds) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM magiamgia";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    phieuGiamGiaModel tt = new phieuGiamGiaModel();
                    tt.setIdmagiamgia(rs.getString("idmagiamgia"));
                    tt.setKieugiamgia(rs.getBoolean("kieugiamgia"));
                    tt.setGiatri(rs.getFloat("giatri"));
                    tt.setSoluong(rs.getInt("soluong"));
                    tt.setNgaybatdau(rs.getString("ngaybatdau"));
                    tt.setNgayketthuc(rs.getString("ngayketthuc"));
                    tt.setDieukien(rs.getFloat("dieukien"));
                    ds.add(tt);
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(phieugiamgia.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int addThongTin(phieuGiamGiaModel tt) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO magiamgia VALUES (?,?,?,?,?,?,?)";
            try {

                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, tt.getIdmagiamgia());
                ps.setBoolean(2, tt.isKieugiamgia());
                ps.setString(3, tt.getNgaybatdau());
                ps.setString(4, tt.getNgayketthuc());
                ps.setInt(5, tt.getSoluong());
                ps.setFloat(6, tt.getGiatri());
                ps.setFloat(7, tt.getDieukien());
                String test = ps.toString();
                ps.executeUpdate();
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(phieugiamgia.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int editPhieuGiamGia(String keyword, phieuGiamGiaModel tt) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "UPDATE magiamgia SET ngaybatdau=?, ngayketthuc=?, kieugiamgia=?, soluong=?, giatri=?, dieukien=? WHERE idmagiamgia=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setString(1, tt.getNgaybatdau());
                ps.setString(2, tt.getNgayketthuc());
                ps.setBoolean(3, tt.isKieugiamgia());
                ps.setInt(4, tt.getSoluong());
                ps.setFloat(5, tt.getGiatri());
                ps.setFloat(6, tt.getDieukien());
                ps.setString(7, keyword);
                String test = ps.toString();
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(phieugiamgia.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int searchPhieuGiamGia(String keyWord, phieuGiamGiaModel tt) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM magiamgia WHERE idmagiamgia = ?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setString(1, keyWord);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    tt.setIdmagiamgia(rs.getString("idmagiamgia"));
                    tt.setKieugiamgia(rs.getBoolean("kieugiamgia"));
                    tt.setGiatri(rs.getInt("giatri"));
                    tt.setSoluong(rs.getInt("soluong"));
                    tt.setNgaybatdau(rs.getString("ngaybatdau"));
                    tt.setNgayketthuc(rs.getString("ngayketthuc"));
                    tt.setDieukien(rs.getInt("dieukien"));
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(phieugiamgia.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int deleteMaGiamGia(String keyWord) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "DELETE FROM magiamgia WHERE idmagiamgia = ?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setString(1, keyWord);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(phieugiamgia.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int checkPhieuGiamGia(String keyWord) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM magiamgia WHERE idmagiamgia = ?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setString(1, keyWord);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    return 1;
                }
                return 0;
            } catch (SQLException ex) {
                Logger.getLogger(phieugiamgia.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int checkPhieuThoiGianSuDung(String ngaybatdau, String ngayketthuc, String id) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM `magiamgia` WHERE ngayketthuc >= ? and ngaybatdau <= ?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setString(1, ngayketthuc);
                ps.setString(2, ngaybatdau);
                String test = ps.toString();
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    return 1;
                }
                return 0;
            } catch (SQLException ex) {
                Logger.getLogger(phieugiamgia.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int phieuGiamGiaSausuDung(String keyword, int soluong) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "UPDATE magiamgia SET soluong=? WHERE idmagiamgia=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setInt(1, soluong);
                ps.setString(2, keyword);
                String test = ps.toString();
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(phieugiamgia.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int truSoluong(String keyword, int soluong) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "UPDATE magiamgia SET soluong = ? WHERE idmagiamgia = ?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setInt(1, soluong);
                ps.setString(2, keyword);
                String test = ps.toString();
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(phieugiamgia.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

}
