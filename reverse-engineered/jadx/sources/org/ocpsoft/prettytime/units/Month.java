package org.ocpsoft.prettytime.units;

import com.dp.sgp.database.DatabaseTables;
import org.ocpsoft.prettytime.TimeUnit;
import org.ocpsoft.prettytime.impl.ResourcesTimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class Month extends ResourcesTimeUnit implements TimeUnit {
    @Override // org.ocpsoft.prettytime.impl.ResourcesTimeUnit
    protected String getResourceKeyPrefix() {
        return DatabaseTables.MONTH;
    }

    public Month() {
        setMillisPerUnit(2629743830L);
    }
}
