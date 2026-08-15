package android.databinding;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ObservableField<T> extends BaseObservable implements Serializable {
    static final long serialVersionUID = 1;
    private T mValue;

    public ObservableField(T t) {
        this.mValue = t;
    }

    public ObservableField() {
    }

    public T get() {
        return this.mValue;
    }

    public void set(T t) {
        if (t != this.mValue) {
            this.mValue = t;
            notifyChange();
        }
    }
}
