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

    public chiTietHoaDonModel(String mahd, String masp, String soluongmua, float giaban, float thanhtien) {
        this.mahd = mahd;
        this.masp = masp;
        this.soluongmua = soluongmua;
        this.giaban = giaban;
        this.thanhtien = thanhtien;
    }

    public chiTietHoaDonModel() {
    }

    public String getMahd() {
        return mahd;
    }

    public void setMahd(String mahd) {
        this.mahd = mahd;
    }

    public String getMasp() {
        return masp;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    public String getSoluongmua() {
        return soluongmua;
    }

    public void setSoluongmua(String soluongmua) {
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
    private String mahd;
    private String masp;
    private String soluongmua;
    private float giaban;
    private float thanhtien;
}
