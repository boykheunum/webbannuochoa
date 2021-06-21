/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Model.loaispModel;
import Model.nguoiDungModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class nguoidung {

    public static int listNguoiDung(Vector<nguoiDungModel> ls) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM nguoidung";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    nguoiDungModel tp = new nguoiDungModel();
                    tp.setTendangnhap(rs.getString("tendangnhap"));
                    tp.setMatkhau(rs.getString("matkhau"));
                    tp.setHovaten(rs.getString("hovaten"));
                    tp.setSdt(rs.getString("sdt"));
                    tp.setDiachi(rs.getString("diachi"));
                    tp.setMakh(rs.getInt("makh"));
                    ls.add(tp);
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(nguoiDungModel.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int dangKy(nguoiDungModel lsm) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO nguoidung values(?,?,?,?,?,?)";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, lsm.getTendangnhap());
                ps.setString(2, lsm.getMatkhau());
                ps.setString(3, lsm.getHovaten());
                ps.setString(4, lsm.getSdt());
                ps.setString(5, lsm.getDiachi());
                ps.setInt(6, lsm.getMakh());
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(nguoidung.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int deleteNguoiDung(int keyword) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "DELETE FROM nguoidung WHERE makh = ?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setInt(1, keyword);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(nguoidung.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int editNguoiDung(nguoiDungModel lsm, int id) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "UPDATE `nguoidung` SET `tendangnhap`= ?,`matkhau`=?,`hovaten`=?,`sdt`=?,`diachi`=? WHERE `makh`=?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, lsm.getTendangnhap());
                ps.setString(2, lsm.getMatkhau());
                ps.setString(3, lsm.getHovaten());
                ps.setString(4, lsm.getSdt());
                ps.setString(5, lsm.getDiachi());
                ps.setInt(6, id);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(nguoidung.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int searchNguoiDung(nguoiDungModel lsp, int id) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM nguoidung where makh = ?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    lsp.setTendangnhap(rs.getString("tendangnhap"));
                    lsp.setMatkhau(rs.getString("matkhau"));
                    lsp.setHovaten(rs.getString("hovaten"));
                    lsp.setSdt(rs.getString("sdt"));
                    lsp.setDiachi(rs.getString("diachi"));
                    lsp.setMakh(rs.getInt("makh"));
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(nguoidung.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }
    public static int dangnhap(String us, String ps) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM nguoidung WHERE tendangnhap=? AND matkhau=?";
            try {
                PreparedStatement pst = cnn.prepareStatement(sql);
                pst.setString(1, us);
                pst.setString(2, ps);
                ResultSet rs = pst.executeQuery();
                if(rs.next()){
                  return 1;  
                }
                return 0;
            } catch (SQLException ex) {
                Logger.getLogger(nguoidung.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }
    
    public static int checkUserName(String id) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM nguoidung WHERE tendangnhap = ?";
            PreparedStatement pst;
            try {
                pst = cnn.prepareStatement(sql);
                pst.setString(1, id);
                ResultSet rs = pst.executeQuery();
                if (rs.next()) {
                    return 1;
                }
                return 0;
            } catch (SQLException ex) {
                Logger.getLogger(nguoidung.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

        public static int searchTenNguoiDung(nguoiDungModel lsp, String userName) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM nguoidung where tendangnhap = ?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, userName);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    lsp.setHovaten(rs.getString("hovaten"));
                    lsp.setSdt(rs.getString("sdt"));
                    lsp.setDiachi(rs.getString("diachi"));
                    lsp.setTendangnhap(rs.getString("tendangnhap"));
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(nguoidung.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }
    
}
