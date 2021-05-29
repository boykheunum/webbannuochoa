/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Model.tintucModel;
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
public class tintuc {

    public static int listTT(Vector<tintucModel> ds) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM tintuc";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    tintucModel tt = new tintucModel();
                    tt.setAnh(rs.getString("anh"));
                    tt.setId(rs.getInt("id"));
                    tt.setNgaydang(rs.getString("ngaydang"));
                    tt.setTieude(rs.getString("tieude"));
                    tt.setNoidung(rs.getString("noidung"));
                    ds.add(tt);
                }
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(tintuc.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int addTintuc(tintucModel tt) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO tintuc values(?,?,?,?)";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, tt.getAnh());
                ps.setString(2, tt.getNgaydang());
                ps.setString(3, tt.getNoidung());
                ps.setString(4, tt.getTieude());
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(tintuc.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int searchTinTuc(String tentieude, tintucModel tt) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM tintuc WHERE tieude = ?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setString(1, tentieude);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    ps.setString(1, tt.getAnh());
                    ps.setString(2, tt.getNgaydang());
                    ps.setString(3, tt.getNoidung());
                    ps.setString(4, tt.getTieude());
                    ps.setInt(4, tt.getId());
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(tintuc.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int deleteTinTuc(String tentieude) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "DELETE * FROM tintuc WHERE tieude = ?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setString(1, tentieude);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(tintuc.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int editTinTuc(String tentieude, tintucModel tt) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "UPDATE tintuc SET anh=?,ngaydang=?,noidung=? WHERE tieude=?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setString(1, tt.getAnh());
                ps.setString(2, tt.getNgaydang());
                ps.setString(3, tt.getNoidung());
                ps.setString(4, tentieude);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(tintuc.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }
}
