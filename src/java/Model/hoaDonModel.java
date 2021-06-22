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

    public hoaDonModel(int mahd, int makh, String ngayban, float tongtien) {
        this.mahd = mahd;
        this.makh = makh;
        this.ngayban = ngayban;
        this.tongtien = tongtien;
    }

    public hoaDonModel(int makh, String ngayban, float tongtien) {
        this.makh = makh;
        this.ngayban = ngayban;
        this.tongtien = tongtien;
    }
    private int mahd;
    private int makh;
    private String ngayban;
    private float tongtien;
}
