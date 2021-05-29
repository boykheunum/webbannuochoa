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
public class tintucModel {

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public String getNgaydang() {
        return ngaydang;
    }

    public void setNgaydang(String ngaydang) {
        this.ngaydang = ngaydang;
    }

    public String getTieude() {
        return tieude;
    }

    public void setTieude(String tieude) {
        this.tieude = tieude;
    }

    public String getNoidung() {
        return noidung;
    }

    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }

    public tintucModel() {
    }

    public tintucModel(int id, String anh, String ngaydang, String tieude, String noidung) {
        this.id = id;
        this.anh = anh;
        this.ngaydang = ngaydang;
        this.tieude = tieude;
        this.noidung = noidung;
    }
    private int id;
    private String anh;
    private String ngaydang;
    private String tieude;
    private String noidung;
}
