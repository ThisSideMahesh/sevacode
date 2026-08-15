package com.dp.sgp.Model;

import com.dp.sgp.database.DatabaseTables;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ChantingData implements Serializable {

    @SerializedName(DatabaseTables.COUNT)
    private int count;

    @SerializedName("isAuto")
    private boolean isAuto;

    @SerializedName("isSound")
    private boolean isSound;

    @SerializedName("isVibrate")
    private boolean isVibrate;

    @SerializedName("round")
    private int round;

    public boolean isSound() {
        return this.isSound;
    }

    public void setSound(boolean z) {
        this.isSound = z;
    }

    public boolean isVibrate() {
        return this.isVibrate;
    }

    public void setVibrate(boolean z) {
        this.isVibrate = z;
    }

    public boolean isAuto() {
        return this.isAuto;
    }

    public void setAuto(boolean z) {
        this.isAuto = z;
    }

    public int getCount() {
        return this.count;
    }

    public void setCount(int i) {
        this.count = i;
    }

    public int getRound() {
        return this.round;
    }

    public void setRound(int i) {
        this.round = i;
    }
}
