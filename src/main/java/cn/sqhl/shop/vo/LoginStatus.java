package cn.sqhl.shop.vo;

public class LoginStatus {
    private String id;

    private String sessionid;

    private String userid;

    private String hmanid;
    
    private String demoid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getSessionid() {
        return sessionid;
    }

    public void setSessionid(String sessionid) {
        this.sessionid = sessionid == null ? null : sessionid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getHmanid() {
        return hmanid;
    }

    public void setHmanid(String hmanid) {
        this.hmanid = hmanid == null ? null : hmanid.trim();
    }

	public String getDemoid() {
		return demoid;
	}

	public void setDemoid(String demoid) {
		this.demoid = demoid;
	}
}