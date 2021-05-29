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
public class thongTinCuaHangModel {

    private String sdtcuahang;
    private String email;
    private String diachi;
    private int id;

    public thongTinCuaHangModel(String sdtcuahang, String email, String diachi, int id) {
        this.sdtcuahang = sdtcuahang;
        this.email = email;
        this.diachi = diachi;
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public thongTinCuaHangModel() {
    }

    public String getSdtcuahang() {
        return sdtcuahang;
    }

    public void setSdtcuahang(String sdtcuahang) {
        this.sdtcuahang = sdtcuahang;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public thongTinCuaHangModel(String sdtcuahang, String email, String diachi) {
        this.sdtcuahang = sdtcuahang;
        this.email = email;
        this.diachi = diachi;
    }

}
