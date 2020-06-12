package com.edu.bean;

import java.util.Date;

public class Video {
    private Integer id;

    private String name;

    private String videodesc;

    private Integer musicname;

    private String videotype;

    private Integer isopen;

    private Date updatedate;

    private Integer userid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getVideodesc() {
        return videodesc;
    }

    public void setVideodesc(String videodesc) {
        this.videodesc = videodesc == null ? null : videodesc.trim();
    }

    public Integer getMusicname() {
        return musicname;
    }

    public void setMusicname(Integer musicname) {
        this.musicname = musicname;
    }

    public String getVideotype() {
        return videotype;
    }

    public void setVideotype(String videotype) {
        this.videotype = videotype == null ? null : videotype.trim();
    }

    public Integer getIsopen() {
        return isopen;
    }

    public void setIsopen(Integer isopen) {
        this.isopen = isopen;
    }

    public Date getUpdatedate() {
        return updatedate;
    }

    public void setUpdatedate(Date updatedate) {
        this.updatedate = updatedate;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}