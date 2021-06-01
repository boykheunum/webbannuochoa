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

    public int getMahd() {
        return mahd;
    }

    public void setMahd(int mahd) {
        this.mahd = mahd;
    }

    public int getManv() {
        return manv;
    }

    public void setManv(int manv) {
        this.manv = manv;
    }

    public int getMakh() {
        return makh;
    }

    public void setMakh(int makh) {
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

    public hoaDonModel() {
    }

    public hoaDonModel(int mahd, int manv, int makh, String ngayban, float tongtien) {
        this.mahd = mahd;
        this.manv = manv;
        this.makh = makh;
        this.ngayban = ngayban;
        this.tongtien = tongtien;
    }
    private int mahd;
    private int manv;
    private int makh;
    private String ngayban;
    private float tongtien;
}
