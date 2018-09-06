package com.sxwl.cn.company.daomain;

public class ProductInfo {
    private Integer productinfoId;

    private String productinfoName;

    private String img;

    private String productinfoDesc;

    public Integer getProductinfoId() {
        return productinfoId;
    }

    public void setProductinfoId(Integer productinfoId) {
        this.productinfoId = productinfoId;
    }

    public String getProductinfoName() {
        return productinfoName;
    }

    public void setProductinfoName(String productinfoName) {
        this.productinfoName = productinfoName == null ? null : productinfoName.trim();
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public String getProductinfoDesc() {
        return productinfoDesc;
    }

    public void setProductinfoDesc(String productinfoDesc) {
        this.productinfoDesc = productinfoDesc == null ? null : productinfoDesc.trim();
    }
}