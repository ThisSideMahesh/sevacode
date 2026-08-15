package com.dp.sgp.Model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CommonData implements Parcelable {
    public static final Parcelable.Creator<CommonData> CREATOR = new Parcelable.Creator<CommonData>() { // from class: com.dp.sgp.Model.CommonData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CommonData createFromParcel(Parcel parcel) {
            return new CommonData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CommonData[] newArray(int i) {
            return new CommonData[i];
        }
    };
    private String added_on;
    private String create_datetime;
    private String description;
    private String id;
    private String image;
    private List<String> information;
    private String links;
    private String thumb_image;
    private String title;
    private Integer unread;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
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

    public String getThumb_image() {
        return this.thumb_image;
    }

    public void setThumb_image(String str) {
        this.thumb_image = str;
    }

    public String getCreate_datetime() {
        return this.create_datetime;
    }

    public void setCreate_datetime(String str) {
        this.create_datetime = str;
    }

    public Integer getUnread() {
        return this.unread;
    }

    public void setUnread(Integer num) {
        this.unread = num;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.image);
        parcel.writeString(this.links);
        parcel.writeStringList(this.information);
        parcel.writeString(this.added_on);
        parcel.writeString(this.id);
        parcel.writeString(this.title);
        parcel.writeString(this.description);
        parcel.writeString(this.thumb_image);
        parcel.writeString(this.create_datetime);
        parcel.writeValue(this.unread);
    }

    public CommonData() {
        this.information = null;
    }

    protected CommonData(Parcel parcel) {
        this.information = null;
        this.image = parcel.readString();
        this.links = parcel.readString();
        this.information = parcel.createStringArrayList();
        this.added_on = parcel.readString();
        this.id = parcel.readString();
        this.title = parcel.readString();
        this.description = parcel.readString();
        this.thumb_image = parcel.readString();
        this.create_datetime = parcel.readString();
        this.unread = (Integer) parcel.readValue(Integer.class.getClassLoader());
    }
}
