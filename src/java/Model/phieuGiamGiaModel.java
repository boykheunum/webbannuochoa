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
public class phieuGiamGiaModel {
    private String idmagiamgia;
    private boolean kieugiamgia;
    private String ngaybatdau;
    private String ngayketthuc;
    private int soluong;
    private int giatri;
    private int dieukien;

    public phieuGiamGiaModel(String idmagiamgia, boolean kieugiamgia, String ngaybatdau, String ngayketthuc, int soluong, int giatri, int dieukien) {
        this.idmagiamgia = idmagiamgia;
        this.kieugiamgia = kieugiamgia;
        this.ngaybatdau = ngaybatdau;
        this.ngayketthuc = ngayketthuc;
        this.soluong = soluong;
        this.giatri = giatri;
        this.dieukien = dieukien;
    }

    public phieuGiamGiaModel() {
    }

    public String getIdmagiamgia() {
        return idmagiamgia;
    }

    public void setIdmagiamgia(String idmagiamgia) {
        this.idmagiamgia = idmagiamgia;
    }

    public boolean isKieugiamgia() {
        return kieugiamgia;
    }

    public void setKieugiamgia(boolean kieugiamgia) {
        this.kieugiamgia = kieugiamgia;
    }

    public String getNgaybatdau() {
        return ngaybatdau;
    }

    public void setNgaybatdau(String ngaybatdau) {
        this.ngaybatdau = ngaybatdau;
    }

    public String getNgayketthuc() {
        return ngayketthuc;
    }

    public void setNgayketthuc(String ngayketthuc) {
        this.ngayketthuc = ngayketthuc;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public int getGiatri() {
        return giatri;
    }

    public void setGiatri(int giatri) {
        this.giatri = giatri;
    }

    public int getDieukien() {
        return dieukien;
    }

    public void setDieukien(int dieukien) {
        this.dieukien = dieukien;
    }

    public boolean setKieugiamgia() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
