/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Model.sanphamModel;
import com.sun.javafx.geom.Vec2d;
import com.sun.xml.internal.bind.api.impl.NameConverter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
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
                    tp.setGianhap(rs.getFloat("gianhap"));
                    tp.setGiaban(rs.getFloat("giaban"));
                    tp.setMota(rs.getString("mota"));
                    tp.setHinhanh(rs.getString("hinhanh"));
                    ls.add(tp);
                }
                return 1;
            } catch (SQLException ex) {
                Logger.getLogger(sanphamModel.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int searchSP(sanphamModel sp, String id) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "SELECT * FROM sanpham where masp = ?";
            PreparedStatement ps;
            try {
                ps = cnn.prepareStatement(sql);
                ps.setString(1, id);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    sp.setMaloaisp(rs.getString("maloaisp"));
                    sp.setMasp(rs.getString("masp"));
                    sp.setTensp(rs.getString("tensp"));
                    sp.setSoluong(rs.getInt("soluong"));
                    sp.setGianhap(rs.getFloat("gianhap"));
                    sp.setGiaban(rs.getFloat("giaban"));
                    sp.setMota(rs.getString("mota"));
                    sp.setHinhanh(rs.getString("hinhanh"));
                    return 1;
                } else {
                    return 0;
                }
            } catch (SQLException ex) {
                Logger.getLogger(SanPham.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    public static int addLoaiSP(sanphamModel lsm) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "INSERT INTO sanpham(maloaisp, masp, tensp, soluong, gianhap, giaban, mota, hinhanh) VALUES (?,?,?,?,?,?,?,?)";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ps.setString(1, lsm.getMaloaisp());
                ps.setString(2, lsm.getMasp());
                ps.setString(3, lsm.getTensp());
                ps.setInt(4, lsm.getSoluong());
                ps.setFloat(5, lsm.getGianhap());
                ps.setFloat(6, lsm.getGiaban());
                ps.setString(7, lsm.getMota());
                ps.setString(8, lsm.getHinhanh());
                String check = ps.toString();
                ps.executeUpdate();
                return 1;
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

    public static int editLoaiSP(sanphamModel lsm) {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            try {
                PreparedStatement ps = cnn.prepareStatement("UPDATE sanpham SET maloaisp = ?, tensp = ?, soluong = ?, gianhap = ?,giaban = ?,mota = ?, hinhanh = ? WHERE masp = ?");
                ps.setString(1, lsm.getMaloaisp());
                ps.setString(2, lsm.getTensp());
                ps.setInt(3, lsm.getSoluong());
                ps.setFloat(4, lsm.getGianhap());
                ps.setFloat(5, lsm.getGiaban());
                ps.setString(6, lsm.getMota());
                ps.setString(7, lsm.getHinhanh());
                ps.setString(8, lsm.getMasp());
                String test = ps.toString();
                return ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(SanPham.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
    }

    //dem so luopng san pham de phan trang
    public static int countSP() {
        Connection cnn = CSDL.databaseConnection.cnnDB();
        if (cnn == null) {
            return -1;
        } else {
            String sql = "COUNT * FROM sanpham";
            try {
                PreparedStatement ps = cnn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    return rs.getInt(1);
                }
            } catch (SQLException ex) {
                Logger.getLogger(SanPham.class.getName()).log(Level.SEVERE, null, ex);
                return -2;
            }

        }
        return 0;
    }

    public static Vector<sanphamModel> phantrang(int index, Vector<sanphamModel> ds) {
        Connection cnn = null;
        String sql = "SELECT * FROM sanpham ORDER BY masp OFFSET ? ROWS FETCH NEXT 12 ROWS ONLY";
        PreparedStatement ps;
        try {
            ps = cnn.prepareStatement(sql);
            ps.setInt(1, (index-1)*12);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                sanphamModel tp = new sanphamModel();
                tp.setMasp(rs.getString("masp"));
                tp.setMaloaisp(rs.getString("maloaisp"));
                tp.setTensp(rs.getString("tensp"));
                tp.setSoluong(rs.getInt("soluong"));
                tp.setGianhap(rs.getFloat("gianhap"));
                tp.setGiaban(rs.getFloat("giaban"));
                tp.setMota(rs.getString("mota"));
                tp.setHinhanh(rs.getString("hinhanh"));
                ds.add(tp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPham.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ds;
    }
}
