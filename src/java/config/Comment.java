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

    public Comment(String id, String comment, String idWatch, String idUser, String username, String timeCmt) {
        this.id = id;
        this.comment = comment;
        this.idWatch = idWatch;
        this.idUser = idUser;
        this.username = username;
        this.timeCmt = timeCmt;
    }

    private String id;
    private String comment;
    private String idWatch;
    private String idUser;
    private String username;
    private String timeCmt;
    
}
