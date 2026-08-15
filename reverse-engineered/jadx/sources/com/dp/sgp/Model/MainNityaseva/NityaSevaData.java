package com.dp.sgp.Model.MainNityaseva;

import com.dp.sgp.Model.CommonData;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NityaSevaData {
    private Aartisangrah aartisangrah;
    private NityasevaMMainResponse nityaseva;
    private List<Shriswamicharitra> shriswamicharitra = null;
    private List<CommonData> sanwar = null;

    public NityasevaMMainResponse getNityaseva() {
        return this.nityaseva;
    }

    public void setNityaseva(NityasevaMMainResponse nityasevaMMainResponse) {
        this.nityaseva = nityasevaMMainResponse;
    }

    public Aartisangrah getAartisangrah() {
        return this.aartisangrah;
    }

    public void setAartisangrah(Aartisangrah aartisangrah) {
        this.aartisangrah = aartisangrah;
    }

    public List<Shriswamicharitra> getShriswamicharitra() {
        return this.shriswamicharitra;
    }

    public void setShriswamicharitra(List<Shriswamicharitra> list) {
        this.shriswamicharitra = list;
    }

    public List<CommonData> getSanwar() {
        return this.sanwar;
    }

    public void setSanwar(List<CommonData> list) {
        this.sanwar = list;
    }
}
