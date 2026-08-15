package com.dp.sgp.Model.HomeResponse;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Youtube {
    private String added_on;
    private String description;
    private String id;
    private String image;
    private List<String> information = null;
    private String links;
    private String thumb_image;
    private String title;

    public String getThumb_image() {
        return this.thumb_image;
    }

    public void setThumb_image(String str) {
        this.thumb_image = str;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getImage() {
        return this.image;
    }

    public void setImage(String str) {
        this.image = str;
    }

    public String getLinks() {
        return this.links;
    }

    public void setLinks(String str) {
        this.links = str;
    }

    public List<String> getInformation() {
        return this.information;
    }

    public void setInformation(List<String> list) {
        this.information = list;
    }

    public String getAdded_on() {
        return this.added_on;
    }

    public void setAdded_on(String str) {
        this.added_on = str;
    }
}
