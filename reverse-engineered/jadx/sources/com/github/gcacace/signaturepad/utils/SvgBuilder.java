package com.github.gcacace.signaturepad.utils;

/* JADX INFO: loaded from: classes.dex */
public class SvgBuilder {
    private final StringBuilder mSvgPathsBuilder = new StringBuilder();
    private SvgPathBuilder mCurrentPathBuilder = null;

    public void clear() {
        this.mSvgPathsBuilder.setLength(0);
        this.mCurrentPathBuilder = null;
    }

    public String build(int i, int i2) {
        if (isPathStarted()) {
            appendCurrentPath();
        }
        return "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n<svg xmlns=\"http://www.w3.org/2000/svg\" version=\"1.2\" baseProfile=\"tiny\" height=\"" + i2 + "\" width=\"" + i + "\"><g stroke-linejoin=\"round\" stroke-linecap=\"round\" fill=\"none\" stroke=\"black\">" + ((CharSequence) this.mSvgPathsBuilder) + "</g></svg>";
    }

    public SvgBuilder append(Bezier bezier, float f) {
        Integer numValueOf = Integer.valueOf(Math.round(f));
        SvgPoint svgPoint = new SvgPoint(bezier.startPoint);
        SvgPoint svgPoint2 = new SvgPoint(bezier.control1);
        SvgPoint svgPoint3 = new SvgPoint(bezier.control2);
        SvgPoint svgPoint4 = new SvgPoint(bezier.endPoint);
        if (!isPathStarted()) {
            startNewPath(numValueOf, svgPoint);
        }
        if (!svgPoint.equals(this.mCurrentPathBuilder.getLastPoint()) || !numValueOf.equals(this.mCurrentPathBuilder.getStrokeWidth())) {
            appendCurrentPath();
            startNewPath(numValueOf, svgPoint);
        }
        this.mCurrentPathBuilder.append(svgPoint2, svgPoint3, svgPoint4);
        return this;
    }

    private void startNewPath(Integer num, SvgPoint svgPoint) {
        this.mCurrentPathBuilder = new SvgPathBuilder(svgPoint, num);
    }

    private void appendCurrentPath() {
        this.mSvgPathsBuilder.append(this.mCurrentPathBuilder);
    }

    private boolean isPathStarted() {
        return this.mCurrentPathBuilder != null;
    }
}
