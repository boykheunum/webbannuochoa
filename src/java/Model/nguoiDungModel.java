/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author DELL
 */
public class nguoiDungModel {

    private String tendangnhap;
    private String hovaten;
    private String diachi;
    private String matkhau;
    private String sdt;
    private String makh;

    public nguoiDungModel(String tendangnhap, String matkhau) {
        this.tendangnhap = tendangnhap;
        this.matkhau = matkhau;
    }

    public String getTendangnhap() {
        return tendangnhap;
    }

    public void setTendangnhap(String tendangnhap) {
        this.tendangnhap = tendangnhap;
    }

    public String getHovaten() {
        return hovaten;
    }

    public void setHovaten(String hovaten) {
        this.hovaten = hovaten;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getMakh() {
        return makh;
    }

    public void setMakh(String makh) {
        this.makh = makh;
    }

    public nguoiDungModel(String tendangnhap, String hovaten, String diachi, String matkhau, String sdt, String makh) {
        this.tendangnhap = tendangnhap;
        this.hovaten = hovaten;
        this.diachi = diachi;
        this.matkhau = matkhau;
        this.sdt = sdt;
        this.makh = makh;
    }

    public nguoiDungModel() {
    }
}
