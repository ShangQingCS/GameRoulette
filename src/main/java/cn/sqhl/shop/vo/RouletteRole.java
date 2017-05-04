package cn.sqhl.shop.vo;

public class RouletteRole {
    private String id;

    private String attr;

    private String attrval;

    private Long odds;

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

    public Long getOdds() {
        return odds;
    }

    public void setOdds(Long odds) {
        this.odds = odds;
    }
}