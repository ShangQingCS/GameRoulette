package cn.sqhl.shop.vo;

import java.util.Date;

public class Trecord {
    private String id;

    private String userid;

    private String numb;

    private Date createTime;

    private String batchId;

    private String hatchetMan;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getNumb() {
        return numb;
    }

    public void setNumb(String numb) {
        this.numb = numb == null ? null : numb.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getBatchId() {
        return batchId;
    }

    public void setBatchId(String batchId) {
        this.batchId = batchId == null ? null : batchId.trim();
    }

    public String getHatchetMan() {
        return hatchetMan;
    }

    public void setHatchetMan(String hatchetMan) {
        this.hatchetMan = hatchetMan == null ? null : hatchetMan.trim();
    }
}