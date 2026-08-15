package com.dp.sgp.Model.nityaseva;

import com.dp.sgp.Model.CommonData;
import com.dp.sgp.Model.HomeResponse.Banner;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ProductData {
    private List<CommonData> lokpriya = null;
    private List<CommonData> poojasahitya = null;
    private List<CommonData> ayurveda = null;
    private List<CommonData> granthasahitya = null;
    private List<CommonData> krushidhan = null;
    private List<Banner> productBanners = null;

    public List<Banner> getProductBanners() {
        return this.productBanners;
    }

    public void setProductBanners(List<Banner> list) {
        this.productBanners = list;
    }

    public List<CommonData> getLokpriya() {
        return this.lokpriya;
    }

    public void setLokpriya(List<CommonData> list) {
        this.lokpriya = list;
    }

    public List<CommonData> getPoojasahitya() {
        return this.poojasahitya;
    }

    public void setPoojasahitya(List<CommonData> list) {
        this.poojasahitya = list;
    }

    public List<CommonData> getAyurveda() {
        return this.ayurveda;
    }

    public void setAyurveda(List<CommonData> list) {
        this.ayurveda = list;
    }

    public List<CommonData> getGranthasahitya() {
        return this.granthasahitya;
    }

    public void setGranthasahitya(List<CommonData> list) {
        this.granthasahitya = list;
    }

    public List<CommonData> getKrushidhan() {
        return this.krushidhan;
    }

    public void setKrushidhan(List<CommonData> list) {
        this.krushidhan = list;
    }
}
