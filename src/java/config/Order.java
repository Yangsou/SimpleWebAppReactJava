/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

/**
 *
 * @author wladek
 */
public class Order {

    public String getId() {
        return id;
    }

    public String getIdUser() {
        return idUser;
    }

    public String getIdWatch() {
        return idWatch;
    }

    public String getCount() {
        return count;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    public void setIdWatch(String idWatch) {
        this.idWatch = idWatch;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public Order(String id, String idUser, String idWatch, String count) {
        this.id = id;
        this.idUser = idUser;
        this.idWatch = idWatch;
        this.count = count;
    }

    public Order() {
    }
    private String id;
    private String idUser;
    private String idWatch;
    private String count;
}
