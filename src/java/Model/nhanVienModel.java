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

    public nhanVienModel(int manv, String macv, String tennv, String sdt, String diachi, String ngaysinhString) {
        this.manv = manv;
        this.macv = macv;
        this.tennv = tennv;
        this.sdt = sdt;
        this.diachi = diachi;
        this.ngaysinhString = ngaysinhString;
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

    public String getNgaysinhString() {
        return ngaysinhString;
    }

    public void setNgaysinhString(String ngaysinhString) {
        this.ngaysinhString = ngaysinhString;
    }
    private int manv;
    private String macv;
    private String tennv;
    private String sdt;
    private String diachi;
    private String ngaysinhString;
}
