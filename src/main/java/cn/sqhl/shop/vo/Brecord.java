package cn.sqhl.shop.vo;

import java.util.Date;

public class Brecord {
    private String id;

    private String attr;

    private String attrval;

    private String faceValue;

    private String beforeid;

    private String nowid;

    private String userid;

    private Long shares;

    private String batchId;

    private String hatchetMan;

    private Date createTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getAttr() {
        return attr;
    }

    public void setAttr(String attr) {
        this.attr = attr == null ? null : attr.trim();
    }

    public String getAttrval() {
        return attrval;
    }

    public void setAttrval(String attrval) {
        this.attrval = attrval == null ? null : attrval.trim();
    }

    public String getFaceValue() {
        return faceValue;
    }

    public void setFaceValue(String faceValue) {
        this.faceValue = faceValue == null ? null : faceValue.trim();
    }

    public String getBeforeid() {
        return beforeid;
    }

    public void setBeforeid(String beforeid) {
        this.beforeid = beforeid == null ? null : beforeid.trim();
    }

    public String getNowid() {
        return nowid;
    }

    public void setNowid(String nowid) {
        this.nowid = nowid == null ? null : nowid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public Long getShares() {
        return shares;
    }

    public void setShares(Long shares) {
        this.shares = shares;
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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}