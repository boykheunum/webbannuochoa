/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Model.nhanVienModel;
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
public class nhanVien {

    public static int listNhanVien(Vector<nhanVienModel> ls) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM nhanvien";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    nhanVienModel nv = new nhanVienModel();
                    nv.setDiachi(rs.getString("diachi"));
                    nv.setMacv(rs.getString("macv"));
                    nv.setManv(rs.getInt("manv"));
                    nv.setNgaysinh(rs.getString("ngaysinh"));
                    nv.setSdt(rs.getString("sdt"));
                    nv.setTennv(rs.getString("tennv"));
                    nv.setTendangnhap(rs.getString("tendangnhap"));
                    nv.setMatkhau(rs.getString("matkhau"));
                    ls.add(nv);
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(nhanVienModel.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int dangKy(nhanVienModel nv) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO nhanvien values(?,?,?,?,?,?,?,?)";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, nv.getMacv());
                ps.setString(2, nv.getTennv());
                ps.setString(3, nv.getSdt());
                ps.setString(4, nv.getDiachi());
                ps.setString(5, nv.getNgaysinh());
                ps.setInt(6, nv.getManv());
                ps.setString(7, nv.getTendangnhap());
                ps.setString(8, nv.getMatkhau());
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(nhanVien.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int deleteNV(int keyword) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "DELETE FROM nhanvien WHERE manv = ?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setInt(1, keyword);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(nhanVien.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int editNhanVien(nhanVienModel nv, int id) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "UPDATE `nhanvien` SET `macv`= ?,`tennv`= ?,`sdt`=?,`diachi`=?,`ngaysinh`=?,`tendangnhap`=?,`matkhau`=? WHERE `manv`=?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, nv.getMacv());
                ps.setString(2, nv.getTennv());
                ps.setString(3, nv.getSdt());
                ps.setString(4, nv.getDiachi());
                ps.setString(5, nv.getNgaysinh());
                ps.setString(6, nv.getTendangnhap());
                ps.setString(7, nv.getMatkhau());
                ps.setInt(8, id);
                String test = ps.toString();
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(nhanVien.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int searchNhanVien(nhanVienModel nv, int id) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM nhanvien where manv = ?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    nv.setDiachi(rs.getString("diachi"));
                    nv.setMacv(rs.getString("macv"));
                    nv.setManv(rs.getInt("manv"));
                    nv.setNgaysinh(rs.getString("ngaysinh"));
                    nv.setSdt(rs.getString("sdt"));
                    nv.setTennv(rs.getString("tennv"));
                    nv.setTendangnhap(rs.getString("tendangnhap"));
                    nv.setMatkhau(rs.getString("matkhau"));
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(nhanVien.class.getName()).log(Level.SEVERE, null, ex);
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
                if (rs.next()) {
                    return 1;
                }
                return 0;
            } catch (SQLException ex) {
                Logger.getLogger(nhanVien.class.getName()).log(Level.SEVERE, null, ex);
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
                Logger.getLogger(nhanVien.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

}
