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
public class loaispModel {

    public loaispModel(String maloaisp, String tenloaisp) {
        this.maloaisp = maloaisp;
        this.tenloaisp = tenloaisp;
    }

    public loaispModel() {
    }

    public String getMaloaisp() {
        return maloaisp;
    }

    public void setMaloaisp(String maloaisp) {
        this.maloaisp = maloaisp;
    }

    public String getTenloaisp() {
        return tenloaisp;
    }

    public void setTenloaisp(String tenloaisp) {
        this.tenloaisp = tenloaisp;
    }
    private String maloaisp;
    private String tenloaisp;
}
