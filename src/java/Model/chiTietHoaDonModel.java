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
public class chiTietHoaDonModel {

    public int getMahd() {
        return mahd;
    }

    public void setMahd(int mahd) {
        this.mahd = mahd;
    }

    public String getMasp() {
        return masp;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    public int getSoluongmua() {
        return soluongmua;
    }

    public void setSoluongmua(int soluongmua) {
        this.soluongmua = soluongmua;
    }

    public float getGiaban() {
        return giaban;
    }

    public void setGiaban(float giaban) {
        this.giaban = giaban;
    }

    public float getThanhtien() {
        return thanhtien;
    }

    public void setThanhtien(float thanhtien) {
        this.thanhtien = thanhtien;
    }

    public String getIdmagiamgia() {
        return idmagiamgia;
    }

    public void setIdmagiamgia(String idmagiamgia) {
        this.idmagiamgia = idmagiamgia;
    }

    public chiTietHoaDonModel(int mahd, String masp, int soluongmua, float giaban, float thanhtien, String idmagiamgia) {
        this.mahd = mahd;
        this.masp = masp;
        this.soluongmua = soluongmua;
        this.giaban = giaban;
        this.thanhtien = thanhtien;
        this.idmagiamgia = idmagiamgia;
    }

    public chiTietHoaDonModel() {
    }
    private int mahd;
    private String masp;
    private int soluongmua;
    private float giaban;
    private float thanhtien;
    private String idmagiamgia;
}
