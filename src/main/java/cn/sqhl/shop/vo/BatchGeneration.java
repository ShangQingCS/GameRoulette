package cn.sqhl.shop.vo;

public class BatchGeneration {
    private String id;

    private String userid;

    private String hatchetMan;

    private String batchId;

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

    public String getHatchetMan() {
        return hatchetMan;
    }

    public void setHatchetMan(String hatchetMan) {
        this.hatchetMan = hatchetMan == null ? null : hatchetMan.trim();
    }

    public String getBatchId() {
        return batchId;
    }

    public void setBatchId(String batchId) {
        this.batchId = batchId == null ? null : batchId.trim();
    }
}