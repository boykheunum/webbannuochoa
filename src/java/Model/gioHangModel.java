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
public class gioHangModel {
    private float giaban;
    private String masp;
    private int soluongmua;
    private String anh;

    public gioHangModel(float giaban, String masp, int soluongmua, String anh) {
        this.giaban = giaban;
        this.masp = masp;
        this.soluongmua = soluongmua;
        this.anh = anh;
    }

    public gioHangModel() {
    }

    public float getGiaban() {
        return giaban;
    }

    public void setGiaban(float giaban) {
        this.giaban = giaban;
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

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }
    
    
}
