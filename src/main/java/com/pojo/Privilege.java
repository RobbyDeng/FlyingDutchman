package com.pojo;

/**
 * Created by dell on 2019/3/9.
 */
public class Privilege {
    private String id;
    private String name;
    private String parentPrivilege;
    private String url;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getParentPrivilege() {
        return parentPrivilege;
    }

    public void setParentPrivilege(String parentPrivilege) {
        this.parentPrivilege = parentPrivilege;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
