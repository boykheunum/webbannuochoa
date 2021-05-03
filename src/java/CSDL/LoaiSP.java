/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Model.loaispModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.tomcat.util.net.jsse.openssl.Authentication;

/**
 *
 * @author Nguyen Tien Dat
 */
public class LoaiSP {

    public static int listLoaiSP(Vector<loaispModel> ls) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM loaisp";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    loaispModel tp = new loaispModel();
                    tp.setMaloaisp(rs.getString("maloaisp"));
                    tp.setTenloaisp(rs.getString("tenloaisp"));
                    ls.add(tp);
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(loaispModel.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int addLoaiSP(loaispModel lsm) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO loaisp values(?,?)";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, lsm.getMaloaisp());
                ps.setString(2, lsm.getTenloaisp());
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(LoaiSP.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int deleteLoaiSP(String keyword) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "DELETE FROM loaisp WHERE maloaisp = ?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, keyword);
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(LoaiSP.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int editLoaiSP(loaispModel lsm) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "UPDATE loaisp SET tenloaisp=? WHERE maloaisp=?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, lsm.getTenloaisp());
                ps.setString(2, lsm.getMaloaisp());
                String test  = ps.toString();
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(LoaiSP.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }

    public static int searchLoaiSP(loaispModel lsp, String id) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM loaisp where maloaisp = ?";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, id);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    lsp.setMaloaisp(rs.getString("maloaisp"));
                    lsp.setTenloaisp(rs.getString("tenloaisp"));
                    return 1;
                }else{
                    return 0;
                }
            } catch (SQLException ex) {
                Logger.getLogger(loaispModel.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }
        }
    }
}
