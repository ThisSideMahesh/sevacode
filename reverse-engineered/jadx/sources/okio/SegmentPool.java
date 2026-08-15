package okio;

import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: loaded from: classes.dex */
final class SegmentPool {
    static final SegmentPool INSTANCE = new SegmentPool();
    static final long MAX_SIZE = 65536;
    long byteCount;
    private Segment next;

    private SegmentPool() {
    }

    Segment take() {
        synchronized (this) {
            Segment segment = this.next;
            if (segment != null) {
                this.next = segment.next;
                segment.next = null;
                this.byteCount -= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
                return segment;
            }
            return new Segment();
        }
    }

    void recycle(Segment segment) {
        if (segment.next != null || segment.prev != null) {
            throw new IllegalArgumentException();
        }
        synchronized (this) {
            long j = this.byteCount;
            if (j + PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH > 65536) {
                return;
            }
            this.byteCount = j + PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
            segment.next = this.next;
            segment.limit = 0;
            segment.pos = 0;
            this.next = segment;
        }
    }
}
