package com.dp.sgp.Model;

import com.dp.sgp.database.DatabaseTables;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SevaNondInput implements Serializable {

    @SerializedName(DatabaseTables.DATE)
    @Expose
    private String date;

    @SerializedName("mobile_no")
    @Expose
    private String mobileNo;

    @SerializedName("seva_details")
    @Expose
    private ArrayList<SevaDetail> sevaDetails = null;

    @SerializedName("seva_type")
    @Expose
    private String sevaType;

    @SerializedName(DatabaseTables.SEVA_ID)
    @Expose
    private int seva_id;

    @SerializedName("sevekari_name")
    @Expose
    private String sevekariName;

    public int getSeva_id() {
        return this.seva_id;
    }

    public void setSeva_id(int i) {
        this.seva_id = i;
    }

    public String getDate() {
        return this.date;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public String getSevaType() {
        return this.sevaType;
    }

    public void setSevaType(String str) {
        this.sevaType = str;
    }

    public String getSevekariName() {
        return this.sevekariName;
    }

    public void setSevekariName(String str) {
        this.sevekariName = str;
    }

    public String getMobileNo() {
        return this.mobileNo;
    }

    public void setMobileNo(String str) {
        this.mobileNo = str;
    }

    public ArrayList<SevaDetail> getSevaDetails() {
        return this.sevaDetails;
    }

    public void setSevaDetails(ArrayList<SevaDetail> arrayList) {
        this.sevaDetails = arrayList;
    }
}
