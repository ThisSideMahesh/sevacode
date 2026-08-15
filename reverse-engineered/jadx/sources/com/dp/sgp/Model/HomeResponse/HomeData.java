package com.dp.sgp.Model.HomeResponse;

import com.dp.sgp.Model.Profile;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HomeData {
    private List<Panchang> panchangs = null;
    private List<Sevamarg> sevamarg = null;
    private List<Youtube> youtube = null;
    private List<Banner> banners = null;
    private List<Suvichar> suvichar = null;
    private List<Vibhag> vibhag = null;
    private List<Banner> productsBanner = null;
    private List<Profile> profile = null;

    public List<Banner> getBanners() {
        return this.banners;
    }

    public void setBanners(List<Banner> list) {
        this.banners = list;
    }

    public List<Panchang> getPanchangs() {
        return this.panchangs;
    }

    public void setPanchangs(List<Panchang> list) {
        this.panchangs = list;
    }

    public List<Sevamarg> getSevamarg() {
        return this.sevamarg;
    }

    public void setSevamarg(List<Sevamarg> list) {
        this.sevamarg = list;
    }

    public List<Youtube> getYoutube() {
        return this.youtube;
    }

    public void setYoutube(List<Youtube> list) {
        this.youtube = list;
    }

    public List<Suvichar> getSuvichar() {
        return this.suvichar;
    }

    public void setSuvichar(List<Suvichar> list) {
        this.suvichar = list;
    }

    public List<Vibhag> getVibhag() {
        return this.vibhag;
    }

    public void setVibhag(List<Vibhag> list) {
        this.vibhag = list;
    }

    public List<Banner> getProductsBanner() {
        return this.productsBanner;
    }

    public void setProductsBanner(List<Banner> list) {
        this.productsBanner = list;
    }

    public List<Profile> getProfile() {
        return this.profile;
    }

    public void setProfile(List<Profile> list) {
        this.profile = list;
    }
}
