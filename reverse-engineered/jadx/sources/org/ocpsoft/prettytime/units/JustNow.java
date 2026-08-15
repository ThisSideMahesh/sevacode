package org.ocpsoft.prettytime.units;

import org.ocpsoft.prettytime.TimeUnit;
import org.ocpsoft.prettytime.impl.ResourcesTimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class JustNow extends ResourcesTimeUnit implements TimeUnit {
    @Override // org.ocpsoft.prettytime.impl.ResourcesTimeUnit
    protected String getResourceKeyPrefix() {
        return "JustNow";
    }

    @Override // org.ocpsoft.prettytime.impl.ResourcesTimeUnit, org.ocpsoft.prettytime.TimeUnit
    public boolean isPrecise() {
        return false;
    }

    public JustNow() {
        setMaxQuantity(60000L);
    }
}
