package okio;

/* JADX INFO: loaded from: classes.dex */
final class Segment {
    static final int SIZE = 2048;
    final byte[] data = new byte[2048];
    int limit;
    Segment next;
    int pos;
    Segment prev;

    Segment() {
    }

    public Segment pop() {
        Segment segment = this.next;
        Segment segment2 = segment != this ? segment : null;
        Segment segment3 = this.prev;
        segment3.next = segment;
        this.next.prev = segment3;
        this.next = null;
        this.prev = null;
        return segment2;
    }

    public Segment push(Segment segment) {
        segment.prev = this;
        segment.next = this.next;
        this.next.prev = segment;
        this.next = segment;
        return segment;
    }

    public Segment split(int i) {
        int i2 = (this.limit - this.pos) - i;
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        if (i < i2) {
            Segment segmentTake = SegmentPool.INSTANCE.take();
            System.arraycopy(this.data, this.pos, segmentTake.data, segmentTake.pos, i);
            this.pos += i;
            segmentTake.limit += i;
            this.prev.push(segmentTake);
            return segmentTake;
        }
        Segment segmentTake2 = SegmentPool.INSTANCE.take();
        System.arraycopy(this.data, this.pos + i, segmentTake2.data, segmentTake2.pos, i2);
        this.limit -= i2;
        segmentTake2.limit += i2;
        push(segmentTake2);
        return this;
    }

    public void compact() {
        Segment segment = this.prev;
        if (segment == this) {
            throw new IllegalStateException();
        }
        int i = segment.limit - segment.pos;
        int i2 = this.limit;
        int i3 = this.pos;
        if (i + (i2 - i3) > 2048) {
            return;
        }
        writeTo(segment, i2 - i3);
        pop();
        SegmentPool.INSTANCE.recycle(this);
    }

    public void writeTo(Segment segment, int i) {
        int i2 = segment.limit;
        int i3 = segment.pos;
        if ((i2 - i3) + i > 2048) {
            throw new IllegalArgumentException();
        }
        if (i2 + i > 2048) {
            byte[] bArr = segment.data;
            System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
            segment.limit -= segment.pos;
            segment.pos = 0;
        }
        System.arraycopy(this.data, this.pos, segment.data, segment.limit, i);
        segment.limit += i;
        this.pos += i;
    }
}
