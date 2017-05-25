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
public class Comment {

    public String getId() {
        return id;
    }

    public String getCmt() {
        return cmt;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setCmt(String cmt) {
        this.cmt = cmt;
    }

    public Comment(String id, String cmt) {
        this.id = id;
        this.cmt = cmt;
    }
    private String id;
    private String cmt;
}
