package android.databinding;

/* JADX INFO: loaded from: classes.dex */
public class BaseObservable implements Observable {
    private transient PropertyChangeRegistry mCallbacks;

    @Override // android.databinding.Observable
    public synchronized void addOnPropertyChangedCallback(Observable.OnPropertyChangedCallback onPropertyChangedCallback) {
        if (this.mCallbacks == null) {
            this.mCallbacks = new PropertyChangeRegistry();
        }
        this.mCallbacks.add(onPropertyChangedCallback);
    }

    @Override // android.databinding.Observable
    public synchronized void removeOnPropertyChangedCallback(Observable.OnPropertyChangedCallback onPropertyChangedCallback) {
        PropertyChangeRegistry propertyChangeRegistry = this.mCallbacks;
        if (propertyChangeRegistry != null) {
            propertyChangeRegistry.remove(onPropertyChangedCallback);
        }
    }

    public synchronized void notifyChange() {
        PropertyChangeRegistry propertyChangeRegistry = this.mCallbacks;
        if (propertyChangeRegistry != null) {
            propertyChangeRegistry.notifyCallbacks(this, 0, null);
        }
    }

    public void notifyPropertyChanged(int i) {
        PropertyChangeRegistry propertyChangeRegistry = this.mCallbacks;
        if (propertyChangeRegistry != null) {
            propertyChangeRegistry.notifyCallbacks(this, i, null);
        }
    }
}
