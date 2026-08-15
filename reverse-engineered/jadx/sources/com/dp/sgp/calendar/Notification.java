package com.dp.sgp.calendar;

import com.dp.sgp.database.DatabaseHelperClass;
import com.dp.sgp.database.DatabaseTables;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class Notification implements Serializable {

    @SerializedName("Type")
    @Expose
    private String Type;

    @SerializedName(DatabaseTables.KEY_CHILD_ID)
    @Expose
    private int childid;

    @SerializedName("Createdat")
    @Expose
    private String createdat;

    @SerializedName(DatabaseTables.DESCRIPTION)
    @Expose
    private String description;

    @SerializedName(DatabaseHelperClass.ID)
    @Expose
    private String id;

    @SerializedName("isdeleted")
    @Expose
    private String isdeleted;

    @SerializedName("mediatype")
    @Expose
    private String mediatype;

    @SerializedName("readStatus")
    @Expose
    private int readStatus;

    @SerializedName("Subtitle")
    @Expose
    private String subtitle;

    @SerializedName("Title")
    @Expose
    private String title;

    @SerializedName("updatedat")
    @Expose
    private String updatedat;

    @SerializedName(ImagesContract.URL)
    @Expose
    private String url;

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

    public String getSubtitle() {
        return this.subtitle;
    }

    public void setSubtitle(String str) {
        this.subtitle = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getCreatedat() {
        return this.createdat;
    }

    public void setCreatedat(String str) {
        this.createdat = str;
    }

    public String getUpdatedat() {
        return this.updatedat;
    }

    public void setUpdatedat(String str) {
        this.updatedat = str;
    }

    public String getIsdeleted() {
        return this.isdeleted;
    }

    public void setIsdeleted(String str) {
        this.isdeleted = str;
    }

    public String getMediatype() {
        return this.mediatype;
    }

    public void setMediatype(String str) {
        this.mediatype = str;
    }

    public int getReadStatus() {
        return this.readStatus;
    }

    public void setReadStatus(int i) {
        this.readStatus = i;
    }

    public int getChildid() {
        return this.childid;
    }

    public void setChildid(int i) {
        this.childid = i;
    }

    public String getType() {
        return this.Type;
    }

    public void setType(String str) {
        this.Type = str;
    }
}
