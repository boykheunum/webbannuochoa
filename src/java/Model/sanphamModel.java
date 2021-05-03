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

    public float getGianhap() {
        return gianhap;
    }

    public void setGianhap(float gianhap) {
        this.gianhap = gianhap;
    }

    public float getGiaban() {
        return giaban;
    }

    public void setGiaban(float giaban) {
        this.giaban = giaban;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getHinhanh() {
        return hinhanh;
    }

    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }

    public sanphamModel(String masp, String maloaisp, String tensp, int soluong, float gianhap, float giaban, String mota, String hinhanh) {
        this.masp = masp;
        this.maloaisp = maloaisp;
        this.tensp = tensp;
        this.soluong = soluong;
        this.gianhap = gianhap;
        this.giaban = giaban;
        this.mota = mota;
        this.hinhanh = hinhanh;
    }

    public sanphamModel() {
    }

    public sanphamModel(String maloaisp, String tensp, int soluong, float gianhap, float giaban, String mota, String hinhanh) {
        this.maloaisp = maloaisp;
        this.tensp = tensp;
        this.soluong = soluong;
        this.gianhap = gianhap;
        this.giaban = giaban;
        this.mota = mota;
        this.hinhanh = hinhanh;
    }

    private String masp;
    private String maloaisp;
    private String tensp;
    private int soluong;
    private float gianhap;
    private float giaban;
    private String mota;
    private String hinhanh;
}
