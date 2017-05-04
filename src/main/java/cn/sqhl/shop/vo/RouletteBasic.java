package cn.sqhl.shop.vo;

public class RouletteBasic {
    private String id;

    private String info;

    private String color;

    private String kind;

    private String attrSize;

    private String rowInfo;

    private String colInfo;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color == null ? null : color.trim();
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind == null ? null : kind.trim();
    }

    public String getAttrSize() {
        return attrSize;
    }

    public void setAttrSize(String attrSize) {
        this.attrSize = attrSize == null ? null : attrSize.trim();
    }

    public String getRowInfo() {
        return rowInfo;
    }

    public void setRowInfo(String rowInfo) {
        this.rowInfo = rowInfo == null ? null : rowInfo.trim();
    }

    public String getColInfo() {
        return colInfo;
    }

    public void setColInfo(String colInfo) {
        this.colInfo = colInfo == null ? null : colInfo.trim();
    }
}