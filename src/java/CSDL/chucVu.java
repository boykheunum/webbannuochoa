/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Model.chucVuModel;
import Model.loaispModel;
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
public class chucVu {
     public static int countCV() {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT COUNT(*) FROM chucvu";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    return rs.getInt(1);
                }
            } catch (SQLException ex) {
                Logger.getLogger(chucVu.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
        return 0;
    }
    public static int listLoaiCV(Vector<chucVuModel> ls) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM chucvu";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    chucVuModel cv = new chucVuModel();
                    cv.setMacv(rs.getString("macv"));
                    cv.setTencv(rs.getString("tencv"));
                    ls.add(cv);
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(chucVu.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int addChucVu(chucVuModel cv) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO chucvu values(?,?)";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, cv.getMacv());
                ps.setString(2, cv.getTencv());
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(chucVu.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int deleteCV(String keyword) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "DELETE FROM chucvu WHERE macv = ?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, keyword);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(chucVu.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int editCV(chucVuModel cv) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "UPDATE chucvu SET tencv=? WHERE macv=?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, cv.getTencv());
                ps.setString(2, cv.getMacv());
                String test = ps.toString();
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(chucVu.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int searchChucVu(chucVuModel cv, String id) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM chucvu where macv = ?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, id);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    cv.setMacv(rs.getString("macv"));
                    cv.setTencv(rs.getString("tencv"));
                    return 1;
                } else {
                    return 0;
                }
            } catch (SQLException ex) {
                Logger.getLogger(chucVu.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int checkCV(String id) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM chucvu WHERE macv = ?";
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
                Logger.getLogger(chucVu.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }
}
