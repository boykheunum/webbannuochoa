/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Nguyen Tien Dat
 */
public class hoaDonModel {

    public hoaDonModel(String mahd, String manv, String makh, String ngayban, float tongtien) {
        this.mahd = mahd;
        this.manv = manv;
        this.makh = makh;
        this.ngayban = ngayban;
        this.tongtien = tongtien;
    }

    public hoaDonModel() {
    }

    public String getMahd() {
        return mahd;
    }

    public void setMahd(String mahd) {
        this.mahd = mahd;
    }

    public String getManv() {
        return manv;
    }

    public void setManv(String manv) {
        this.manv = manv;
    }

    public String getMakh() {
        return makh;
    }

    public void setMakh(String makh) {
        this.makh = makh;
    }

    public String getNgayban() {
        return ngayban;
    }

    public void setNgayban(String ngayban) {
        this.ngayban = ngayban;
    }

    public float getTongtien() {
        return tongtien;
    }

    public void setTongtien(float tongtien) {
        this.tongtien = tongtien;
    }
    private String mahd;
    private String manv;
    private String makh;
    private String ngayban;
    private float tongtien;
}
