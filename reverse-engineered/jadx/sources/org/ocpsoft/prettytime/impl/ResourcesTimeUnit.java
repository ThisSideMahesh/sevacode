package org.ocpsoft.prettytime.impl;

import org.ocpsoft.prettytime.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class ResourcesTimeUnit implements TimeUnit {
    private long maxQuantity = 0;
    private long millisPerUnit = 1;

    protected String getResourceBundleName() {
        return "org.ocpsoft.prettytime.i18n.Resources";
    }

    protected abstract String getResourceKeyPrefix();

    @Override // org.ocpsoft.prettytime.TimeUnit
    public boolean isPrecise() {
        return true;
    }

    @Override // org.ocpsoft.prettytime.TimeUnit
    public long getMaxQuantity() {
        return this.maxQuantity;
    }

    public void setMaxQuantity(long j) {
        this.maxQuantity = j;
    }

    @Override // org.ocpsoft.prettytime.TimeUnit
    public long getMillisPerUnit() {
        return this.millisPerUnit;
    }

    public void setMillisPerUnit(long j) {
        this.millisPerUnit = j;
    }

    public String toString() {
        return getResourceKeyPrefix();
    }

    public int hashCode() {
        long j = this.maxQuantity;
        int i = (((int) (j ^ (j >>> 32))) + 31) * 31;
        long j2 = this.millisPerUnit;
        return i + ((int) (j2 ^ (j2 >>> 32)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ResourcesTimeUnit resourcesTimeUnit = (ResourcesTimeUnit) obj;
        return this.maxQuantity == resourcesTimeUnit.maxQuantity && this.millisPerUnit == resourcesTimeUnit.millisPerUnit;
    }
}
