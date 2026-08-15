package com.dp.sgp.Model.saramrut;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NewSwamiDatum implements Parcelable {
    public static final Parcelable.Creator<NewSwamiDatum> CREATOR = new Parcelable.Creator<NewSwamiDatum>() { // from class: com.dp.sgp.Model.saramrut.NewSwamiDatum.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NewSwamiDatum createFromParcel(Parcel parcel) {
            return new NewSwamiDatum(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NewSwamiDatum[] newArray(int i) {
            return new NewSwamiDatum[i];
        }
    };
    private String added_on;
    private String complete_prayan;
    private String completed_on;
    private String current_adhyay;
    private String description;
    private String id;
    private String image;
    private List<Object> information;
    private String links;
    private String status;
    private String statusName;
    private String thumb_image;
    private String title;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCompleted_on() {
        return this.completed_on;
    }

    public void setCompleted_on(String str) {
        this.completed_on = str;
    }

    public String getComplete_prayan() {
        return this.complete_prayan;
    }

    public void setComplete_prayan(String str) {
        this.complete_prayan = str;
    }

    public String getCurrent_adhyay() {
        return this.current_adhyay;
    }

    public void setCurrent_adhyay(String str) {
        this.current_adhyay = str;
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

    public String getThumb_image() {
        return this.thumb_image;
    }

    public void setThumb_image(String str) {
        this.thumb_image = str;
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

    public List<Object> getInformation() {
        return this.information;
    }

    public void setInformation(List<Object> list) {
        this.information = list;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getStatusName() {
        return this.statusName;
    }

    public void setStatusName(String str) {
        this.statusName = str;
    }

    public String getAdded_on() {
        return this.added_on;
    }

    public void setAdded_on(String str) {
        this.added_on = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.title);
        parcel.writeString(this.description);
        parcel.writeString(this.thumb_image);
        parcel.writeString(this.image);
        parcel.writeString(this.links);
        parcel.writeList(this.information);
        parcel.writeString(this.status);
        parcel.writeString(this.statusName);
        parcel.writeString(this.added_on);
        parcel.writeString(this.complete_prayan);
        parcel.writeString(this.current_adhyay);
    }

    public NewSwamiDatum() {
    }

    protected NewSwamiDatum(Parcel parcel) {
        this.id = parcel.readString();
        this.title = parcel.readString();
        this.description = parcel.readString();
        this.thumb_image = parcel.readString();
        this.image = parcel.readString();
        this.links = parcel.readString();
        ArrayList arrayList = new ArrayList();
        this.information = arrayList;
        parcel.readList(arrayList, Object.class.getClassLoader());
        this.status = parcel.readString();
        this.statusName = parcel.readString();
        this.added_on = parcel.readString();
        this.complete_prayan = parcel.readString();
        this.current_adhyay = parcel.readString();
    }
}
