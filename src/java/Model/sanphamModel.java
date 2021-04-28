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
public class sanphamModel {

    public String getMasp() {
        return masp;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    public String getMaloaisp() {
        return maloaisp;
    }

    public void setMaloaisp(String maloaisp) {
        this.maloaisp = maloaisp;
    }

    public String getTensp() {
        return tensp;
    }

    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public int getGianhap() {
        return gianhap;
    }

    public void setGianhap(int gianhap) {
        this.gianhap = gianhap;
    }

    public int getGiaban() {
        return giaban;
    }

    public void setGiaban(int giaban) {
        this.giaban = giaban;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public sanphamModel(String masp, String maloaisp, String tensp, int soluong, int gianhap, int giaban, String mota, String anh) {
        this.masp = masp;
        this.maloaisp = maloaisp;
        this.tensp = tensp;
        this.soluong = soluong;
        this.gianhap = gianhap;
        this.giaban = giaban;
        this.mota = mota;
        this.anh = anh;
    }

    public sanphamModel() {
    }
    private String masp;
    private String maloaisp;
    private String tensp;
    private int soluong;
    private int gianhap;
    private int giaban;
    private String mota;
    private String anh;
}
