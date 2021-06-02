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
public class nhanVienModel {

    public nhanVienModel() {
    }

    public int getManv() {
        return manv;
    }

    public void setManv(int manv) {
        this.manv = manv;
    }

    public String getMacv() {
        return macv;
    }

    public void setMacv(String macv) {
        this.macv = macv;
    }

    public String getTennv() {
        return tennv;
    }

    public void setTennv(String tennv) {
        this.tennv = tennv;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(String ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getTendangnhap() {
        return tendangnhap;
    }

    public void setTendangnhap(String tendangnhap) {
        this.tendangnhap = tendangnhap;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public nhanVienModel(int manv, String macv, String tennv, String sdt, String diachi, String ngaysinh, String tendangnhap, String matkhau) {
        this.manv = manv;
        this.macv = macv;
        this.tennv = tennv;
        this.sdt = sdt;
        this.diachi = diachi;
        this.ngaysinh = ngaysinh;
        this.tendangnhap = tendangnhap;
        this.matkhau = matkhau;
    }
    private int manv;
    private String macv;
    private String tennv;
    private String sdt;
    private String diachi;
    private String ngaysinh;
    private String tendangnhap;

    public nhanVienModel(String macv, String tennv, String sdt, String diachi, String ngaysinh, String tendangnhap, String matkhau) {
        this.macv = macv;
        this.tennv = tennv;
        this.sdt = sdt;
        this.diachi = diachi;
        this.ngaysinh = ngaysinh;
        this.tendangnhap = tendangnhap;
        this.matkhau = matkhau;
    }
    private String matkhau;
}
