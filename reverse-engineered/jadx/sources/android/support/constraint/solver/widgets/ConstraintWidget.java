package android.support.constraint.solver.widgets;

import android.support.constraint.solver.ArrayRow;
import android.support.constraint.solver.Cache;
import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidget {
    private static final boolean AUTOTAG_CENTER = false;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0.5f;
    protected static final int DIRECT = 2;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    protected static final int SOLVER = 1;
    public static final int UNKNOWN = -1;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    protected ArrayList<ConstraintAnchor> mAnchors;
    ConstraintAnchor mBaseline;
    int mBaselineDistance;
    ConstraintAnchor mBottom;
    boolean mBottomHasCentered;
    ConstraintAnchor mCenter;
    ConstraintAnchor mCenterX;
    ConstraintAnchor mCenterY;
    private Object mCompanionWidget;
    private int mContainerItemSkip;
    private String mDebugName;
    protected float mDimensionRatio;
    protected int mDimensionRatioSide;
    int mDistToBottom;
    int mDistToLeft;
    int mDistToRight;
    int mDistToTop;
    private int mDrawHeight;
    private int mDrawWidth;
    private int mDrawX;
    private int mDrawY;
    int mHeight;
    float mHorizontalBiasPercent;
    boolean mHorizontalChainFixedPosition;
    int mHorizontalChainStyle;
    DimensionBehaviour mHorizontalDimensionBehaviour;
    ConstraintWidget mHorizontalNextWidget;
    public int mHorizontalResolution;
    float mHorizontalWeight;
    boolean mHorizontalWrapVisited;
    ConstraintAnchor mLeft;
    boolean mLeftHasCentered;
    int mMatchConstraintDefaultHeight;
    int mMatchConstraintDefaultWidth;
    int mMatchConstraintMaxHeight;
    int mMatchConstraintMaxWidth;
    int mMatchConstraintMinHeight;
    int mMatchConstraintMinWidth;
    protected int mMinHeight;
    protected int mMinWidth;
    protected int mOffsetX;
    protected int mOffsetY;
    ConstraintWidget mParent;
    ConstraintAnchor mRight;
    boolean mRightHasCentered;
    private int mSolverBottom;
    private int mSolverLeft;
    private int mSolverRight;
    private int mSolverTop;
    ConstraintAnchor mTop;
    boolean mTopHasCentered;
    private String mType;
    float mVerticalBiasPercent;
    boolean mVerticalChainFixedPosition;
    int mVerticalChainStyle;
    DimensionBehaviour mVerticalDimensionBehaviour;
    ConstraintWidget mVerticalNextWidget;
    public int mVerticalResolution;
    float mVerticalWeight;
    boolean mVerticalWrapVisited;
    private int mVisibility;
    int mWidth;
    private int mWrapHeight;
    private int mWrapWidth;
    protected int mX;
    protected int mY;

    public enum ContentAlignment {
        BEGIN,
        MIDDLE,
        END,
        TOP,
        VERTICAL_MIDDLE,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public void connectedTo(ConstraintWidget constraintWidget) {
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mWrapWidth = 0;
        this.mWrapHeight = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mHorizontalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mVerticalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mCompanionWidget = null;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mHorizontalWrapVisited = false;
        this.mVerticalWrapVisited = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalChainFixedPosition = false;
        this.mVerticalChainFixedPosition = false;
        this.mHorizontalWeight = 0.0f;
        this.mVerticalWeight = 0.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
    }

    public ConstraintWidget() {
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        this.mCenter = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mAnchors = new ArrayList<>();
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mSolverLeft = 0;
        this.mSolverTop = 0;
        this.mSolverRight = 0;
        this.mSolverBottom = 0;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mHorizontalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mVerticalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalWeight = 0.0f;
        this.mVerticalWeight = 0.0f;
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        addAnchors();
    }

    public ConstraintWidget(int i, int i2, int i3, int i4) {
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        this.mCenter = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mAnchors = new ArrayList<>();
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mSolverLeft = 0;
        this.mSolverTop = 0;
        this.mSolverRight = 0;
        this.mSolverBottom = 0;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mHorizontalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mVerticalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalWeight = 0.0f;
        this.mVerticalWeight = 0.0f;
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.mX = i;
        this.mY = i2;
        this.mWidth = i3;
        this.mHeight = i4;
        addAnchors();
        forceUpdateDrawPosition();
    }

    public ConstraintWidget(int i, int i2) {
        this(0, 0, i, i2);
    }

    public void resetSolverVariables(Cache cache) {
        this.mLeft.resetSolverVariable(cache);
        this.mTop.resetSolverVariable(cache);
        this.mRight.resetSolverVariable(cache);
        this.mBottom.resetSolverVariable(cache);
        this.mBaseline.resetSolverVariable(cache);
        this.mCenter.resetSolverVariable(cache);
        this.mCenterX.resetSolverVariable(cache);
        this.mCenterY.resetSolverVariable(cache);
    }

    public void resetGroups() {
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).mGroup = Integer.MAX_VALUE;
        }
    }

    private void addAnchors() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mBaseline);
    }

    public boolean isRoot() {
        return this.mParent == null;
    }

    public boolean isRootContainer() {
        ConstraintWidget constraintWidget;
        return (this instanceof ConstraintWidgetContainer) && ((constraintWidget = this.mParent) == null || !(constraintWidget instanceof ConstraintWidgetContainer));
    }

    public boolean isInsideConstraintLayout() {
        ConstraintWidget parent = getParent();
        if (parent == null) {
            return false;
        }
        while (parent != null) {
            if (parent instanceof ConstraintWidgetContainer) {
                return true;
            }
            parent = parent.getParent();
        }
        return false;
    }

    public boolean hasAncestor(ConstraintWidget constraintWidget) {
        ConstraintWidget parent = getParent();
        if (parent == constraintWidget) {
            return true;
        }
        if (parent == constraintWidget.getParent()) {
            return false;
        }
        while (parent != null) {
            if (parent == constraintWidget || parent == constraintWidget.getParent()) {
                return true;
            }
            parent = parent.getParent();
        }
        return false;
    }

    public WidgetContainer getRootWidgetContainer() {
        ConstraintWidget parent = this;
        while (parent.getParent() != null) {
            parent = parent.getParent();
        }
        if (parent instanceof WidgetContainer) {
            return (WidgetContainer) parent;
        }
        return null;
    }

    public ConstraintWidget getParent() {
        return this.mParent;
    }

    public void setParent(ConstraintWidget constraintWidget) {
        this.mParent = constraintWidget;
    }

    public String getType() {
        return this.mType;
    }

    public void setType(String str) {
        this.mType = str;
    }

    public void setVisibility(int i) {
        this.mVisibility = i;
    }

    public int getVisibility() {
        return this.mVisibility;
    }

    public String getDebugName() {
        return this.mDebugName;
    }

    public void setDebugName(String str) {
        this.mDebugName = str;
    }

    public void setDebugSolverName(LinearSystem linearSystem, String str) {
        this.mDebugName = str;
        SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(this.mBottom);
        solverVariableCreateObjectVariable.setName(str + ".left");
        solverVariableCreateObjectVariable2.setName(str + ".top");
        solverVariableCreateObjectVariable3.setName(str + ".right");
        solverVariableCreateObjectVariable4.setName(str + ".bottom");
        if (this.mBaselineDistance > 0) {
            linearSystem.createObjectVariable(this.mBaseline).setName(str + ".baseline");
        }
    }

    public String toString() {
        return (this.mType != null ? "type: " + this.mType + " " : "") + (this.mDebugName != null ? "id: " + this.mDebugName + " " : "") + "(" + this.mX + ", " + this.mY + ") - (" + this.mWidth + " x " + this.mHeight + ") wrap: (" + this.mWrapWidth + " x " + this.mWrapHeight + ")";
    }

    int getInternalDrawX() {
        return this.mDrawX;
    }

    int getInternalDrawY() {
        return this.mDrawY;
    }

    public int getInternalDrawRight() {
        return this.mDrawX + this.mDrawWidth;
    }

    public int getInternalDrawBottom() {
        return this.mDrawY + this.mDrawHeight;
    }

    public int getX() {
        return this.mX;
    }

    public int getY() {
        return this.mY;
    }

    public int getWidth() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    public int getOptimizerWrapWidth() {
        int iMax;
        int i = this.mWidth;
        if (this.mHorizontalDimensionBehaviour != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i;
        }
        if (this.mMatchConstraintDefaultWidth == 1) {
            iMax = Math.max(this.mMatchConstraintMinWidth, i);
        } else {
            iMax = this.mMatchConstraintMinWidth;
            if (iMax > 0) {
                this.mWidth = iMax;
            } else {
                iMax = 0;
            }
        }
        int i2 = this.mMatchConstraintMaxWidth;
        return (i2 <= 0 || i2 >= iMax) ? iMax : i2;
    }

    public int getOptimizerWrapHeight() {
        int iMax;
        int i = this.mHeight;
        if (this.mVerticalDimensionBehaviour != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i;
        }
        if (this.mMatchConstraintDefaultHeight == 1) {
            iMax = Math.max(this.mMatchConstraintMinHeight, i);
        } else {
            iMax = this.mMatchConstraintMinHeight;
            if (iMax > 0) {
                this.mHeight = iMax;
            } else {
                iMax = 0;
            }
        }
        int i2 = this.mMatchConstraintMaxHeight;
        return (i2 <= 0 || i2 >= iMax) ? iMax : i2;
    }

    public int getWrapWidth() {
        return this.mWrapWidth;
    }

    public int getHeight() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    public int getWrapHeight() {
        return this.mWrapHeight;
    }

    public int getDrawX() {
        return this.mDrawX + this.mOffsetX;
    }

    public int getDrawY() {
        return this.mDrawY + this.mOffsetY;
    }

    public int getDrawWidth() {
        return this.mDrawWidth;
    }

    public int getDrawHeight() {
        return this.mDrawHeight;
    }

    public int getDrawBottom() {
        return getDrawY() + this.mDrawHeight;
    }

    public int getDrawRight() {
        return getDrawX() + this.mDrawWidth;
    }

    protected int getRootX() {
        return this.mX + this.mOffsetX;
    }

    protected int getRootY() {
        return this.mY + this.mOffsetY;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getLeft() {
        return getX();
    }

    public int getTop() {
        return getY();
    }

    public int getRight() {
        return getX() + this.mWidth;
    }

    public int getBottom() {
        return getY() + this.mHeight;
    }

    public float getHorizontalBiasPercent() {
        return this.mHorizontalBiasPercent;
    }

    public float getVerticalBiasPercent() {
        return this.mVerticalBiasPercent;
    }

    public boolean hasBaseline() {
        return this.mBaselineDistance > 0;
    }

    public int getBaselineDistance() {
        return this.mBaselineDistance;
    }

    public Object getCompanionWidget() {
        return this.mCompanionWidget;
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public void setX(int i) {
        this.mX = i;
    }

    public void setY(int i) {
        this.mY = i;
    }

    public void setOrigin(int i, int i2) {
        this.mX = i;
        this.mY = i2;
    }

    public void setOffset(int i, int i2) {
        this.mOffsetX = i;
        this.mOffsetY = i2;
    }

    /* JADX INFO: renamed from: android.support.constraint.solver.widgets.ConstraintWidget$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            $SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_X.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public void setGoneMargin(ConstraintAnchor.Type type, int i) {
        int i2 = AnonymousClass1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[type.ordinal()];
        if (i2 == 1) {
            this.mLeft.mGoneMargin = i;
            return;
        }
        if (i2 == 2) {
            this.mTop.mGoneMargin = i;
        } else if (i2 == 3) {
            this.mRight.mGoneMargin = i;
        } else {
            if (i2 != 4) {
                return;
            }
            this.mBottom.mGoneMargin = i;
        }
    }

    public void updateDrawPosition() {
        int i = this.mX;
        int i2 = this.mY;
        int i3 = this.mWidth + i;
        int i4 = this.mHeight + i2;
        this.mDrawX = i;
        this.mDrawY = i2;
        this.mDrawWidth = i3 - i;
        this.mDrawHeight = i4 - i2;
    }

    public void forceUpdateDrawPosition() {
        int i = this.mX;
        int i2 = this.mY;
        int i3 = this.mWidth + i;
        int i4 = this.mHeight + i2;
        this.mDrawX = i;
        this.mDrawY = i2;
        this.mDrawWidth = i3 - i;
        this.mDrawHeight = i4 - i2;
    }

    public void setDrawOrigin(int i, int i2) {
        int i3 = i - this.mOffsetX;
        this.mDrawX = i3;
        int i4 = i2 - this.mOffsetY;
        this.mDrawY = i4;
        this.mX = i3;
        this.mY = i4;
    }

    public void setDrawX(int i) {
        int i2 = i - this.mOffsetX;
        this.mDrawX = i2;
        this.mX = i2;
    }

    public void setDrawY(int i) {
        int i2 = i - this.mOffsetY;
        this.mDrawY = i2;
        this.mY = i2;
    }

    public void setDrawWidth(int i) {
        this.mDrawWidth = i;
    }

    public void setDrawHeight(int i) {
        this.mDrawHeight = i;
    }

    public void setWidth(int i) {
        this.mWidth = i;
        int i2 = this.mMinWidth;
        if (i < i2) {
            this.mWidth = i2;
        }
    }

    public void setHeight(int i) {
        this.mHeight = i;
        int i2 = this.mMinHeight;
        if (i < i2) {
            this.mHeight = i2;
        }
    }

    public void setHorizontalMatchStyle(int i, int i2, int i3) {
        this.mMatchConstraintDefaultWidth = i;
        this.mMatchConstraintMinWidth = i2;
        this.mMatchConstraintMaxWidth = i3;
    }

    public void setVerticalMatchStyle(int i, int i2, int i3) {
        this.mMatchConstraintDefaultHeight = i;
        this.mMatchConstraintMinHeight = i2;
        this.mMatchConstraintMaxHeight = i3;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0084 A[PHI: r0
      0x0084: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:45:0x0084, B:35:0x007d, B:23:0x004f, B:25:0x0055, B:27:0x0061, B:29:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:39:0x0085). Please report as a decompilation issue!!! */
    public void setDimensionRatio(String str) {
        float fAbs;
        int i = 0;
        if (str == null || str.length() == 0) {
            this.mDimensionRatio = 0.0f;
            return;
        }
        int i2 = -1;
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i3 = 0;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (strSubstring.equalsIgnoreCase("W")) {
                i2 = 0;
            } else if (strSubstring.equalsIgnoreCase("H")) {
                i2 = 1;
            }
            i3 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        try {
            if (iIndexOf2 >= 0 && iIndexOf2 < length - 1) {
                String strSubstring2 = str.substring(i3, iIndexOf2);
                String strSubstring3 = str.substring(iIndexOf2 + 1);
                if (strSubstring2.length() <= 0 || strSubstring3.length() <= 0) {
                    fAbs = 0.0f;
                } else {
                    float f = Float.parseFloat(strSubstring2);
                    float f2 = Float.parseFloat(strSubstring3);
                    if (f <= 0.0f || f2 <= 0.0f) {
                        fAbs = 0.0f;
                    } else if (i2 == 1) {
                        fAbs = Math.abs(f2 / f);
                    } else {
                        fAbs = Math.abs(f / f2);
                    }
                }
            } else {
                String strSubstring4 = str.substring(i3);
                if (strSubstring4.length() > 0) {
                    fAbs = Float.parseFloat(strSubstring4);
                } else {
                    fAbs = 0.0f;
                }
            }
        } catch (NumberFormatException unused) {
        }
        i = (fAbs > i ? 1 : (fAbs == i ? 0 : -1));
        if (i > 0) {
            this.mDimensionRatio = fAbs;
            this.mDimensionRatioSide = i2;
        }
    }

    public void setDimensionRatio(float f, int i) {
        this.mDimensionRatio = f;
        this.mDimensionRatioSide = i;
    }

    public float getDimensionRatio() {
        return this.mDimensionRatio;
    }

    public int getDimensionRatioSide() {
        return this.mDimensionRatioSide;
    }

    public void setHorizontalBiasPercent(float f) {
        this.mHorizontalBiasPercent = f;
    }

    public void setVerticalBiasPercent(float f) {
        this.mVerticalBiasPercent = f;
    }

    public void setMinWidth(int i) {
        if (i < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = i;
        }
    }

    public void setMinHeight(int i) {
        if (i < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = i;
        }
    }

    public void setWrapWidth(int i) {
        this.mWrapWidth = i;
    }

    public void setWrapHeight(int i) {
        this.mWrapHeight = i;
    }

    public void setDimension(int i, int i2) {
        this.mWidth = i;
        int i3 = this.mMinWidth;
        if (i < i3) {
            this.mWidth = i3;
        }
        this.mHeight = i2;
        int i4 = this.mMinHeight;
        if (i2 < i4) {
            this.mHeight = i4;
        }
    }

    public void setFrame(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        this.mX = i;
        this.mY = i2;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        if (this.mHorizontalDimensionBehaviour == DimensionBehaviour.FIXED && i7 < (i6 = this.mWidth)) {
            i7 = i6;
        }
        if (this.mVerticalDimensionBehaviour == DimensionBehaviour.FIXED && i8 < (i5 = this.mHeight)) {
            i8 = i5;
        }
        this.mWidth = i7;
        this.mHeight = i8;
        int i9 = this.mMinHeight;
        if (i8 < i9) {
            this.mHeight = i9;
        }
        int i10 = this.mMinWidth;
        if (i7 < i10) {
            this.mWidth = i10;
        }
    }

    public void setHorizontalDimension(int i, int i2) {
        this.mX = i;
        int i3 = i2 - i;
        this.mWidth = i3;
        int i4 = this.mMinWidth;
        if (i3 < i4) {
            this.mWidth = i4;
        }
    }

    public void setVerticalDimension(int i, int i2) {
        this.mY = i;
        int i3 = i2 - i;
        this.mHeight = i3;
        int i4 = this.mMinHeight;
        if (i3 < i4) {
            this.mHeight = i4;
        }
    }

    public void setBaselineDistance(int i) {
        this.mBaselineDistance = i;
    }

    public void setCompanionWidget(Object obj) {
        this.mCompanionWidget = obj;
    }

    public void setContainerItemSkip(int i) {
        if (i >= 0) {
            this.mContainerItemSkip = i;
        } else {
            this.mContainerItemSkip = 0;
        }
    }

    public int getContainerItemSkip() {
        return this.mContainerItemSkip;
    }

    public void setHorizontalWeight(float f) {
        this.mHorizontalWeight = f;
    }

    public void setVerticalWeight(float f) {
        this.mVerticalWeight = f;
    }

    public void setHorizontalChainStyle(int i) {
        this.mHorizontalChainStyle = i;
    }

    public int getHorizontalChainStyle() {
        return this.mHorizontalChainStyle;
    }

    public void setVerticalChainStyle(int i) {
        this.mVerticalChainStyle = i;
    }

    public int getVerticalChainStyle() {
        return this.mVerticalChainStyle;
    }

    public void immediateConnect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        getAnchor(type).connect(constraintWidget.getAnchor(type2), i, i2, ConstraintAnchor.Strength.STRONG, 0, true);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2) {
        connect(constraintAnchor, constraintAnchor2, i, ConstraintAnchor.Strength.STRONG, i2);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        connect(constraintAnchor, constraintAnchor2, i, ConstraintAnchor.Strength.STRONG, 0);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, ConstraintAnchor.Strength strength, int i2) {
        if (constraintAnchor.getOwner() == this) {
            connect(constraintAnchor.getType(), constraintAnchor2.getOwner(), constraintAnchor2.getType(), i, strength, i2);
        }
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i) {
        connect(type, constraintWidget, type2, i, ConstraintAnchor.Strength.STRONG);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2) {
        connect(type, constraintWidget, type2, 0, ConstraintAnchor.Strength.STRONG);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, ConstraintAnchor.Strength strength) {
        connect(type, constraintWidget, type2, i, strength, 0);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, ConstraintAnchor.Strength strength, int i2) {
        boolean z;
        int i3 = 0;
        if (type == ConstraintAnchor.Type.CENTER) {
            if (type2 == ConstraintAnchor.Type.CENTER) {
                ConstraintAnchor anchor = getAnchor(ConstraintAnchor.Type.LEFT);
                ConstraintAnchor anchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
                ConstraintAnchor anchor3 = getAnchor(ConstraintAnchor.Type.TOP);
                ConstraintAnchor anchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
                boolean z2 = true;
                if ((anchor == null || !anchor.isConnected()) && (anchor2 == null || !anchor2.isConnected())) {
                    connect(ConstraintAnchor.Type.LEFT, constraintWidget, ConstraintAnchor.Type.LEFT, 0, strength, i2);
                    connect(ConstraintAnchor.Type.RIGHT, constraintWidget, ConstraintAnchor.Type.RIGHT, 0, strength, i2);
                    z = true;
                } else {
                    z = false;
                }
                if ((anchor3 == null || !anchor3.isConnected()) && (anchor4 == null || !anchor4.isConnected())) {
                    connect(ConstraintAnchor.Type.TOP, constraintWidget, ConstraintAnchor.Type.TOP, 0, strength, i2);
                    connect(ConstraintAnchor.Type.BOTTOM, constraintWidget, ConstraintAnchor.Type.BOTTOM, 0, strength, i2);
                } else {
                    z2 = false;
                }
                if (z && z2) {
                    getAnchor(ConstraintAnchor.Type.CENTER).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.CENTER), 0, i2);
                    return;
                } else if (z) {
                    getAnchor(ConstraintAnchor.Type.CENTER_X).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.CENTER_X), 0, i2);
                    return;
                } else {
                    if (z2) {
                        getAnchor(ConstraintAnchor.Type.CENTER_Y).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.CENTER_Y), 0, i2);
                        return;
                    }
                    return;
                }
            }
            if (type2 == ConstraintAnchor.Type.LEFT || type2 == ConstraintAnchor.Type.RIGHT) {
                connect(ConstraintAnchor.Type.LEFT, constraintWidget, type2, 0, strength, i2);
                connect(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0, strength, i2);
                getAnchor(ConstraintAnchor.Type.CENTER).connect(constraintWidget.getAnchor(type2), 0, i2);
                return;
            } else {
                if (type2 == ConstraintAnchor.Type.TOP || type2 == ConstraintAnchor.Type.BOTTOM) {
                    connect(ConstraintAnchor.Type.TOP, constraintWidget, type2, 0, strength, i2);
                    connect(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0, strength, i2);
                    getAnchor(ConstraintAnchor.Type.CENTER).connect(constraintWidget.getAnchor(type2), 0, i2);
                    return;
                }
                return;
            }
        }
        if (type == ConstraintAnchor.Type.CENTER_X && (type2 == ConstraintAnchor.Type.LEFT || type2 == ConstraintAnchor.Type.RIGHT)) {
            ConstraintAnchor anchor5 = getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor anchor6 = constraintWidget.getAnchor(type2);
            ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.RIGHT);
            anchor5.connect(anchor6, 0, i2);
            anchor7.connect(anchor6, 0, i2);
            getAnchor(ConstraintAnchor.Type.CENTER_X).connect(anchor6, 0, i2);
            return;
        }
        if (type == ConstraintAnchor.Type.CENTER_Y && (type2 == ConstraintAnchor.Type.TOP || type2 == ConstraintAnchor.Type.BOTTOM)) {
            ConstraintAnchor anchor8 = constraintWidget.getAnchor(type2);
            getAnchor(ConstraintAnchor.Type.TOP).connect(anchor8, 0, i2);
            getAnchor(ConstraintAnchor.Type.BOTTOM).connect(anchor8, 0, i2);
            getAnchor(ConstraintAnchor.Type.CENTER_Y).connect(anchor8, 0, i2);
            return;
        }
        if (type == ConstraintAnchor.Type.CENTER_X && type2 == ConstraintAnchor.Type.CENTER_X) {
            getAnchor(ConstraintAnchor.Type.LEFT).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT), 0, i2);
            getAnchor(ConstraintAnchor.Type.RIGHT).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT), 0, i2);
            getAnchor(ConstraintAnchor.Type.CENTER_X).connect(constraintWidget.getAnchor(type2), 0, i2);
            return;
        }
        if (type == ConstraintAnchor.Type.CENTER_Y && type2 == ConstraintAnchor.Type.CENTER_Y) {
            getAnchor(ConstraintAnchor.Type.TOP).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.TOP), 0, i2);
            getAnchor(ConstraintAnchor.Type.BOTTOM).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM), 0, i2);
            getAnchor(ConstraintAnchor.Type.CENTER_Y).connect(constraintWidget.getAnchor(type2), 0, i2);
            return;
        }
        ConstraintAnchor anchor9 = getAnchor(type);
        ConstraintAnchor anchor10 = constraintWidget.getAnchor(type2);
        if (anchor9.isValidConnection(anchor10)) {
            if (type == ConstraintAnchor.Type.BASELINE) {
                ConstraintAnchor anchor11 = getAnchor(ConstraintAnchor.Type.TOP);
                ConstraintAnchor anchor12 = getAnchor(ConstraintAnchor.Type.BOTTOM);
                if (anchor11 != null) {
                    anchor11.reset();
                }
                if (anchor12 != null) {
                    anchor12.reset();
                }
            } else {
                if (type == ConstraintAnchor.Type.TOP || type == ConstraintAnchor.Type.BOTTOM) {
                    ConstraintAnchor anchor13 = getAnchor(ConstraintAnchor.Type.BASELINE);
                    if (anchor13 != null) {
                        anchor13.reset();
                    }
                    ConstraintAnchor anchor14 = getAnchor(ConstraintAnchor.Type.CENTER);
                    if (anchor14.getTarget() != anchor10) {
                        anchor14.reset();
                    }
                    ConstraintAnchor opposite = getAnchor(type).getOpposite();
                    ConstraintAnchor anchor15 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
                    if (anchor15.isConnected()) {
                        opposite.reset();
                        anchor15.reset();
                    }
                } else if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                    ConstraintAnchor anchor16 = getAnchor(ConstraintAnchor.Type.CENTER);
                    if (anchor16.getTarget() != anchor10) {
                        anchor16.reset();
                    }
                    ConstraintAnchor opposite2 = getAnchor(type).getOpposite();
                    ConstraintAnchor anchor17 = getAnchor(ConstraintAnchor.Type.CENTER_X);
                    if (anchor17.isConnected()) {
                        opposite2.reset();
                        anchor17.reset();
                    }
                }
                i3 = i;
            }
            anchor9.connect(anchor10, i3, strength, i2);
            anchor10.getOwner().connectedTo(anchor9.getOwner());
        }
    }

    public void resetAllConstraints() {
        resetAnchors();
        setVerticalBiasPercent(DEFAULT_BIAS);
        setHorizontalBiasPercent(DEFAULT_BIAS);
        if (this instanceof ConstraintWidgetContainer) {
            return;
        }
        if (getHorizontalDimensionBehaviour() == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (getWidth() == getWrapWidth()) {
                setHorizontalDimensionBehaviour(DimensionBehaviour.WRAP_CONTENT);
            } else if (getWidth() > getMinWidth()) {
                setHorizontalDimensionBehaviour(DimensionBehaviour.FIXED);
            }
        }
        if (getVerticalDimensionBehaviour() == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (getHeight() == getWrapHeight()) {
                setVerticalDimensionBehaviour(DimensionBehaviour.WRAP_CONTENT);
            } else if (getHeight() > getMinHeight()) {
                setVerticalDimensionBehaviour(DimensionBehaviour.FIXED);
            }
        }
    }

    public void resetAnchor(ConstraintAnchor constraintAnchor) {
        if (getParent() != null && (getParent() instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        ConstraintAnchor anchor = getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor anchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
        ConstraintAnchor anchor3 = getAnchor(ConstraintAnchor.Type.TOP);
        ConstraintAnchor anchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
        ConstraintAnchor anchor5 = getAnchor(ConstraintAnchor.Type.CENTER);
        ConstraintAnchor anchor6 = getAnchor(ConstraintAnchor.Type.CENTER_X);
        ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
        if (constraintAnchor == anchor5) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                anchor.reset();
                anchor2.reset();
            }
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.mHorizontalBiasPercent = 0.5f;
            this.mVerticalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor6) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget().getOwner() == anchor2.getTarget().getOwner()) {
                anchor.reset();
                anchor2.reset();
            }
            this.mHorizontalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor7) {
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget().getOwner() == anchor4.getTarget().getOwner()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.mVerticalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor || constraintAnchor == anchor2) {
            if (anchor.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                anchor5.reset();
            }
        } else if ((constraintAnchor == anchor3 || constraintAnchor == anchor4) && anchor3.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
            anchor5.reset();
        }
        constraintAnchor.reset();
    }

    public void resetAnchors() {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).reset();
        }
    }

    public void resetAnchors(int i) {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintAnchor constraintAnchor = this.mAnchors.get(i2);
            if (i == constraintAnchor.getConnectionCreator()) {
                if (constraintAnchor.isVerticalAnchor()) {
                    setVerticalBiasPercent(DEFAULT_BIAS);
                } else {
                    setHorizontalBiasPercent(DEFAULT_BIAS);
                }
                constraintAnchor.reset();
            }
        }
    }

    public void disconnectWidget(ConstraintWidget constraintWidget) {
        ArrayList<ConstraintAnchor> anchors = getAnchors();
        int size = anchors.size();
        for (int i = 0; i < size; i++) {
            ConstraintAnchor constraintAnchor = anchors.get(i);
            if (constraintAnchor.isConnected() && constraintAnchor.getTarget().getOwner() == constraintWidget) {
                constraintAnchor.reset();
            }
        }
    }

    public void disconnectUnlockedWidget(ConstraintWidget constraintWidget) {
        ArrayList<ConstraintAnchor> anchors = getAnchors();
        int size = anchors.size();
        for (int i = 0; i < size; i++) {
            ConstraintAnchor constraintAnchor = anchors.get(i);
            if (constraintAnchor.isConnected() && constraintAnchor.getTarget().getOwner() == constraintWidget && constraintAnchor.getConnectionCreator() == 2) {
                constraintAnchor.reset();
            }
        }
    }

    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        switch (AnonymousClass1.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[type.ordinal()]) {
            case 1:
                return this.mLeft;
            case 2:
                return this.mTop;
            case 3:
                return this.mRight;
            case 4:
                return this.mBottom;
            case 5:
                return this.mBaseline;
            case 6:
                return this.mCenterX;
            case 7:
                return this.mCenterY;
            case 8:
                return this.mCenter;
            default:
                return null;
        }
    }

    public DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mHorizontalDimensionBehaviour;
    }

    public DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mVerticalDimensionBehaviour;
    }

    public void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mHorizontalDimensionBehaviour = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            setWidth(this.mWrapWidth);
        }
    }

    public void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mVerticalDimensionBehaviour = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            setHeight(this.mWrapHeight);
        }
    }

    public boolean isInHorizontalChain() {
        if (this.mLeft.mTarget == null || this.mLeft.mTarget.mTarget != this.mLeft) {
            return this.mRight.mTarget != null && this.mRight.mTarget.mTarget == this.mRight;
        }
        return true;
    }

    public ConstraintWidget getHorizontalChainControlWidget() {
        if (!isInHorizontalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.RIGHT).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public boolean isInVerticalChain() {
        if (this.mTop.mTarget == null || this.mTop.mTarget.mTarget != this.mTop) {
            return this.mBottom.mTarget != null && this.mBottom.mTarget.mTarget == this.mBottom;
        }
        return true;
    }

    public ConstraintWidget getVerticalChainControlWidget() {
        if (!isInVerticalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.TOP);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public void addToSolver(LinearSystem linearSystem) {
        addToSolver(linearSystem, Integer.MAX_VALUE);
    }

    /* JADX WARN: Code duplicated, block: B:214:0x03f7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:215:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:220:0x0404  */
    /* JADX WARN: Code duplicated, block: B:231:0x0418  */
    /* JADX WARN: Code duplicated, block: B:239:0x0432  */
    /* JADX WARN: Code duplicated, block: B:242:0x0445  */
    /* JADX WARN: Code duplicated, block: B:243:0x044d  */
    /* JADX WARN: Code duplicated, block: B:251:0x0465 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:252:0x0467  */
    /* JADX WARN: Code duplicated, block: B:261:0x04d2  */
    /* JADX WARN: Code duplicated, block: B:262:0x0519  */
    /* JADX WARN: Code duplicated, block: B:270:0x053f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:271:0x0541  */
    /* JADX WARN: Code duplicated, block: B:280:0x05cd  */
    /* JADX WARN: Code duplicated, block: B:282:0x05da  */
    /* JADX WARN: Code duplicated, block: B:288:0x05ea  */
    /* JADX WARN: Code duplicated, block: B:289:0x05ff  */
    /* JADX WARN: Code duplicated, block: B:291:0x0604  */
    /* JADX WARN: Code duplicated, block: B:292:0x0617  */
    /* JADX WARN: Code duplicated, block: B:294:0x0620  */
    /* JADX WARN: Code duplicated, block: B:297:0x062b  */
    /* JADX WARN: Code duplicated, block: B:299:0x0649  */
    public void addToSolver(LinearSystem linearSystem, int i) {
        boolean z;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i3;
        boolean z6;
        int i4;
        int i5;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        ArrayRow arrayRowCreateRow;
        int i6;
        int i7;
        SolverVariable solverVariable5;
        SolverVariable solverVariable6;
        int i8;
        SolverVariable solverVariable7;
        SolverVariable solverVariable8;
        ConstraintAnchor constraintAnchor;
        LinearSystem linearSystem2;
        SolverVariable solverVariable9;
        ConstraintAnchor constraintAnchor2;
        int i9;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        boolean z7;
        boolean z8;
        ConstraintWidget constraintWidget = this;
        SolverVariable solverVariableCreateObjectVariable = (i == Integer.MAX_VALUE || constraintWidget.mLeft.mGroup == i) ? linearSystem.createObjectVariable(constraintWidget.mLeft) : null;
        SolverVariable solverVariableCreateObjectVariable2 = (i == Integer.MAX_VALUE || constraintWidget.mRight.mGroup == i) ? linearSystem.createObjectVariable(constraintWidget.mRight) : null;
        SolverVariable solverVariableCreateObjectVariable3 = (i == Integer.MAX_VALUE || constraintWidget.mTop.mGroup == i) ? linearSystem.createObjectVariable(constraintWidget.mTop) : null;
        SolverVariable solverVariableCreateObjectVariable4 = (i == Integer.MAX_VALUE || constraintWidget.mBottom.mGroup == i) ? linearSystem.createObjectVariable(constraintWidget.mBottom) : null;
        SolverVariable solverVariableCreateObjectVariable5 = (i == Integer.MAX_VALUE || constraintWidget.mBaseline.mGroup == i) ? linearSystem.createObjectVariable(constraintWidget.mBaseline) : null;
        if (constraintWidget.mParent != null) {
            if ((constraintWidget.mLeft.mTarget == null || constraintWidget.mLeft.mTarget.mTarget != constraintWidget.mLeft) && (constraintWidget.mRight.mTarget == null || constraintWidget.mRight.mTarget.mTarget != constraintWidget.mRight)) {
                z7 = false;
            } else {
                ((ConstraintWidgetContainer) constraintWidget.mParent).addChain(constraintWidget, 0);
                z7 = true;
            }
            if ((constraintWidget.mTop.mTarget == null || constraintWidget.mTop.mTarget.mTarget != constraintWidget.mTop) && (constraintWidget.mBottom.mTarget == null || constraintWidget.mBottom.mTarget.mTarget != constraintWidget.mBottom)) {
                z8 = false;
            } else {
                ((ConstraintWidgetContainer) constraintWidget.mParent).addChain(constraintWidget, 1);
                z8 = true;
            }
            if (constraintWidget.mParent.getHorizontalDimensionBehaviour() == DimensionBehaviour.WRAP_CONTENT && !z7) {
                if (constraintWidget.mLeft.mTarget == null || constraintWidget.mLeft.mTarget.mOwner != constraintWidget.mParent) {
                    SolverVariable solverVariableCreateObjectVariable6 = linearSystem.createObjectVariable(constraintWidget.mParent.mLeft);
                    ArrayRow arrayRowCreateRow2 = linearSystem.createRow();
                    arrayRowCreateRow2.createRowGreaterThan(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable6, linearSystem.createSlackVariable(), 0);
                    linearSystem.addConstraint(arrayRowCreateRow2);
                } else if (constraintWidget.mLeft.mTarget != null && constraintWidget.mLeft.mTarget.mOwner == constraintWidget.mParent) {
                    constraintWidget.mLeft.setConnectionType(ConstraintAnchor.ConnectionType.STRICT);
                }
                if (constraintWidget.mRight.mTarget == null || constraintWidget.mRight.mTarget.mOwner != constraintWidget.mParent) {
                    SolverVariable solverVariableCreateObjectVariable7 = linearSystem.createObjectVariable(constraintWidget.mParent.mRight);
                    ArrayRow arrayRowCreateRow3 = linearSystem.createRow();
                    arrayRowCreateRow3.createRowGreaterThan(solverVariableCreateObjectVariable7, solverVariableCreateObjectVariable2, linearSystem.createSlackVariable(), 0);
                    linearSystem.addConstraint(arrayRowCreateRow3);
                } else if (constraintWidget.mRight.mTarget != null && constraintWidget.mRight.mTarget.mOwner == constraintWidget.mParent) {
                    constraintWidget.mRight.setConnectionType(ConstraintAnchor.ConnectionType.STRICT);
                }
            }
            if (constraintWidget.mParent.getVerticalDimensionBehaviour() == DimensionBehaviour.WRAP_CONTENT && !z8) {
                if (constraintWidget.mTop.mTarget == null || constraintWidget.mTop.mTarget.mOwner != constraintWidget.mParent) {
                    SolverVariable solverVariableCreateObjectVariable8 = linearSystem.createObjectVariable(constraintWidget.mParent.mTop);
                    ArrayRow arrayRowCreateRow4 = linearSystem.createRow();
                    arrayRowCreateRow4.createRowGreaterThan(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable8, linearSystem.createSlackVariable(), 0);
                    linearSystem.addConstraint(arrayRowCreateRow4);
                } else if (constraintWidget.mTop.mTarget != null && constraintWidget.mTop.mTarget.mOwner == constraintWidget.mParent) {
                    constraintWidget.mTop.setConnectionType(ConstraintAnchor.ConnectionType.STRICT);
                }
                if (constraintWidget.mBottom.mTarget == null || constraintWidget.mBottom.mTarget.mOwner != constraintWidget.mParent) {
                    SolverVariable solverVariableCreateObjectVariable9 = linearSystem.createObjectVariable(constraintWidget.mParent.mBottom);
                    ArrayRow arrayRowCreateRow5 = linearSystem.createRow();
                    arrayRowCreateRow5.createRowGreaterThan(solverVariableCreateObjectVariable9, solverVariableCreateObjectVariable4, linearSystem.createSlackVariable(), 0);
                    linearSystem.addConstraint(arrayRowCreateRow5);
                } else if (constraintWidget.mBottom.mTarget != null && constraintWidget.mBottom.mTarget.mOwner == constraintWidget.mParent) {
                    constraintWidget.mBottom.setConnectionType(ConstraintAnchor.ConnectionType.STRICT);
                }
            }
            z = z7;
            z2 = z8;
        } else {
            z = false;
            z2 = false;
        }
        int i10 = constraintWidget.mWidth;
        int i11 = constraintWidget.mMinWidth;
        if (i10 < i11) {
            i10 = i11;
        }
        int i12 = constraintWidget.mHeight;
        int i13 = constraintWidget.mMinHeight;
        if (i12 < i13) {
            i12 = i13;
        }
        boolean z9 = constraintWidget.mHorizontalDimensionBehaviour != DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z10 = constraintWidget.mVerticalDimensionBehaviour != DimensionBehaviour.MATCH_CONSTRAINT;
        if (!z9 && (constraintAnchor4 = constraintWidget.mLeft) != null && constraintWidget.mRight != null && (constraintAnchor4.mTarget == null || constraintWidget.mRight.mTarget == null)) {
            z9 = true;
        }
        if (!z10 && (constraintAnchor3 = constraintWidget.mTop) != null && constraintWidget.mBottom != null && ((constraintAnchor3.mTarget == null || constraintWidget.mBottom.mTarget == null) && (constraintWidget.mBaselineDistance == 0 || (constraintWidget.mBaseline != null && (constraintWidget.mTop.mTarget == null || constraintWidget.mBaseline.mTarget == null))))) {
            z10 = true;
        }
        int i14 = constraintWidget.mDimensionRatioSide;
        float f = constraintWidget.mDimensionRatio;
        SolverVariable solverVariable10 = solverVariableCreateObjectVariable4;
        if (f <= 0.0f || constraintWidget.mVisibility == 8) {
            i10 = i10;
            i12 = i12;
            z10 = z10;
            i2 = i14;
            f = f;
            z3 = false;
            z4 = z9;
        } else if (constraintWidget.mHorizontalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mVerticalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (z9 && !z10) {
                i2 = 0;
            } else if (z9 || !z10) {
                i2 = i14;
            } else {
                if (constraintWidget.mDimensionRatioSide == -1) {
                    i10 = i10;
                    i12 = i12;
                    f = 1.0f / f;
                    i2 = 1;
                    z3 = true;
                    z10 = z10;
                } else {
                    i2 = 1;
                }
                z4 = z9;
            }
            z3 = true;
            z4 = z9;
        } else {
            if (constraintWidget.mHorizontalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
                i10 = (int) (constraintWidget.mHeight * f);
                i12 = i12;
                z10 = z10;
                f = f;
                z4 = true;
                i2 = 0;
            } else {
                if (constraintWidget.mVerticalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
                    if (constraintWidget.mDimensionRatioSide == -1) {
                        f = 1.0f / f;
                    }
                    i10 = i10;
                    i12 = (int) (constraintWidget.mWidth * f);
                    z4 = z9;
                    f = f;
                    i2 = 1;
                    z10 = true;
                }
                i10 = i10;
                i12 = i12;
                z10 = z10;
                i2 = i14;
                f = f;
                z3 = false;
                z4 = z9;
            }
            z3 = false;
        }
        boolean z11 = z3 && (i2 == 0 || i2 == -1);
        boolean z12 = constraintWidget.mHorizontalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT && (constraintWidget instanceof ConstraintWidgetContainer);
        if (constraintWidget.mHorizontalResolution != 2) {
            if (i != Integer.MAX_VALUE && (constraintWidget.mLeft.mGroup != i || constraintWidget.mRight.mGroup != i)) {
                i12 = i12;
                solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                solverVariableCreateObjectVariable2 = solverVariableCreateObjectVariable2;
                solverVariableCreateObjectVariable = solverVariableCreateObjectVariable;
                i2 = i2;
                solverVariable10 = solverVariable10;
            } else if (z11 && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) {
                SolverVariable solverVariableCreateObjectVariable10 = linearSystem.createObjectVariable(constraintWidget.mLeft);
                SolverVariable solverVariableCreateObjectVariable11 = linearSystem.createObjectVariable(constraintWidget.mRight);
                SolverVariable solverVariableCreateObjectVariable12 = linearSystem.createObjectVariable(constraintWidget.mLeft.getTarget());
                SolverVariable solverVariableCreateObjectVariable13 = linearSystem.createObjectVariable(constraintWidget.mRight.getTarget());
                linearSystem.addGreaterThan(solverVariableCreateObjectVariable10, solverVariableCreateObjectVariable12, constraintWidget.mLeft.getMargin(), 3);
                linearSystem.addLowerThan(solverVariableCreateObjectVariable11, solverVariableCreateObjectVariable13, constraintWidget.mRight.getMargin() * (-1), 3);
                if (!z) {
                    linearSystem.addCentering(solverVariableCreateObjectVariable10, solverVariableCreateObjectVariable12, constraintWidget.mLeft.getMargin(), constraintWidget.mHorizontalBiasPercent, solverVariableCreateObjectVariable13, solverVariableCreateObjectVariable11, constraintWidget.mRight.getMargin(), 4);
                }
                solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                solverVariableCreateObjectVariable2 = solverVariableCreateObjectVariable2;
                solverVariableCreateObjectVariable = solverVariableCreateObjectVariable;
                i2 = i2;
            } else {
                ConstraintAnchor constraintAnchor5 = constraintWidget.mLeft;
                ConstraintAnchor constraintAnchor6 = constraintWidget.mRight;
                int i15 = constraintWidget.mX;
                applyConstraints(linearSystem, z12, z4, constraintAnchor5, constraintAnchor6, i15, i15 + i10, i10, constraintWidget.mMinWidth, constraintWidget.mHorizontalBiasPercent, z11, z, constraintWidget.mMatchConstraintDefaultWidth, constraintWidget.mMatchConstraintMinWidth, constraintWidget.mMatchConstraintMaxWidth);
            }
            if (constraintWidget.mVerticalResolution == 2) {
                return;
            }
            if (constraintWidget.mVerticalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT || !(constraintWidget instanceof ConstraintWidgetContainer)) {
                z5 = false;
            } else {
                z5 = true;
            }
            i3 = i2;
            z6 = !z3 && (i3 == 1 || i3 == -1);
            if (constraintWidget.mBaselineDistance <= 0) {
                constraintAnchor = constraintWidget.mBottom;
                if (i != Integer.MAX_VALUE || (constraintAnchor.mGroup == i && constraintWidget.mBaseline.mGroup == i)) {
                    linearSystem2 = linearSystem;
                    solverVariable9 = solverVariableCreateObjectVariable3;
                    linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
                } else {
                    linearSystem2 = linearSystem;
                    solverVariable9 = solverVariableCreateObjectVariable3;
                }
                if (constraintWidget.mBaseline.mTarget != null) {
                    i9 = constraintWidget.mBaselineDistance;
                    constraintAnchor2 = constraintWidget.mBaseline;
                } else {
                    constraintAnchor2 = constraintAnchor;
                    i9 = i12;
                }
                if (i == Integer.MAX_VALUE && (constraintWidget.mTop.mGroup != i || constraintAnchor2.mGroup != i)) {
                    i4 = i3;
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariable9;
                } else if (!z6 && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null) {
                    SolverVariable solverVariableCreateObjectVariable14 = linearSystem2.createObjectVariable(constraintWidget.mTop);
                    SolverVariable solverVariableCreateObjectVariable15 = linearSystem2.createObjectVariable(constraintWidget.mBottom);
                    SolverVariable solverVariableCreateObjectVariable16 = linearSystem2.createObjectVariable(constraintWidget.mTop.getTarget());
                    SolverVariable solverVariableCreateObjectVariable17 = linearSystem2.createObjectVariable(constraintWidget.mBottom.getTarget());
                    linearSystem2.addGreaterThan(solverVariableCreateObjectVariable14, solverVariableCreateObjectVariable16, constraintWidget.mTop.getMargin(), 3);
                    linearSystem2.addLowerThan(solverVariableCreateObjectVariable15, solverVariableCreateObjectVariable17, constraintWidget.mBottom.getMargin() * (-1), 3);
                    if (!z2) {
                        linearSystem.addCentering(solverVariableCreateObjectVariable14, solverVariableCreateObjectVariable16, constraintWidget.mTop.getMargin(), constraintWidget.mVerticalBiasPercent, solverVariableCreateObjectVariable17, solverVariableCreateObjectVariable15, constraintWidget.mBottom.getMargin(), 4);
                    }
                    i4 = i3;
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariable9;
                } else {
                    ConstraintAnchor constraintAnchor7 = constraintWidget.mTop;
                    int i16 = constraintWidget.mY;
                    i4 = i3;
                    applyConstraints(linearSystem, z5, z10, constraintAnchor7, constraintAnchor2, i16, i16 + i9, i9, constraintWidget.mMinHeight, constraintWidget.mVerticalBiasPercent, z6, z2, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight);
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariable9;
                    linearSystem.addEquality(solverVariable, solverVariable2, i12, 5);
                }
            } else {
                i4 = i3;
                i5 = i12;
                solverVariable = solverVariable10;
                solverVariable2 = solverVariableCreateObjectVariable3;
                if (i != Integer.MAX_VALUE || (this.mTop.mGroup == i && this.mBottom.mGroup == i)) {
                    if (!z6 && this.mTop.mTarget != null && this.mBottom.mTarget != null) {
                        SolverVariable solverVariableCreateObjectVariable18 = linearSystem.createObjectVariable(this.mTop);
                        SolverVariable solverVariableCreateObjectVariable19 = linearSystem.createObjectVariable(this.mBottom);
                        SolverVariable solverVariableCreateObjectVariable20 = linearSystem.createObjectVariable(this.mTop.getTarget());
                        SolverVariable solverVariableCreateObjectVariable21 = linearSystem.createObjectVariable(this.mBottom.getTarget());
                        linearSystem.addGreaterThan(solverVariableCreateObjectVariable18, solverVariableCreateObjectVariable20, this.mTop.getMargin(), 3);
                        linearSystem.addLowerThan(solverVariableCreateObjectVariable19, solverVariableCreateObjectVariable21, this.mBottom.getMargin() * (-1), 3);
                        if (!z2) {
                            linearSystem.addCentering(solverVariableCreateObjectVariable18, solverVariableCreateObjectVariable20, this.mTop.getMargin(), this.mVerticalBiasPercent, solverVariableCreateObjectVariable21, solverVariableCreateObjectVariable19, this.mBottom.getMargin(), 4);
                        }
                    } else {
                        ConstraintAnchor constraintAnchor8 = this.mTop;
                        ConstraintAnchor constraintAnchor9 = this.mBottom;
                        int i17 = this.mY;
                        solverVariable3 = solverVariable;
                        solverVariable4 = solverVariable2;
                        applyConstraints(linearSystem, z5, z10, constraintAnchor8, constraintAnchor9, i17, i17 + i5, i5, this.mMinHeight, this.mVerticalBiasPercent, z6, z2, this.mMatchConstraintDefaultHeight, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight);
                    }
                }
                if (z3) {
                    arrayRowCreateRow = linearSystem.createRow();
                    if (i != Integer.MAX_VALUE || (this.mLeft.mGroup == i && this.mRight.mGroup == i)) {
                        i6 = i4;
                        if (i6 == 0) {
                            linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                            return;
                        }
                        if (i6 == 1) {
                            linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                            return;
                        }
                        i7 = this.mMatchConstraintMinWidth;
                        solverVariable5 = solverVariableCreateObjectVariable;
                        solverVariable6 = solverVariableCreateObjectVariable2;
                        if (i7 > 0) {
                            linearSystem.addGreaterThan(solverVariable6, solverVariable5, i7, 3);
                        }
                        i8 = this.mMatchConstraintMinHeight;
                        solverVariable7 = solverVariable3;
                        solverVariable8 = solverVariable4;
                        if (i8 > 0) {
                            linearSystem.addGreaterThan(solverVariable7, solverVariable8, i8, 3);
                        }
                        arrayRowCreateRow.createRowDimensionRatio(solverVariable6, solverVariable5, solverVariable7, solverVariable8, f);
                        SolverVariable solverVariableCreateErrorVariable = linearSystem.createErrorVariable();
                        SolverVariable solverVariableCreateErrorVariable2 = linearSystem.createErrorVariable();
                        solverVariableCreateErrorVariable.strength = 4;
                        solverVariableCreateErrorVariable2.strength = 4;
                        arrayRowCreateRow.addError(solverVariableCreateErrorVariable, solverVariableCreateErrorVariable2);
                        linearSystem.addConstraint(arrayRowCreateRow);
                    }
                    return;
                }
            }
            solverVariable3 = solverVariable;
            solverVariable4 = solverVariable2;
            if (z3) {
                arrayRowCreateRow = linearSystem.createRow();
                if (i != Integer.MAX_VALUE) {
                }
                i6 = i4;
                if (i6 == 0) {
                    linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                    return;
                }
                if (i6 == 1) {
                    linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                    return;
                }
                i7 = this.mMatchConstraintMinWidth;
                solverVariable5 = solverVariableCreateObjectVariable;
                solverVariable6 = solverVariableCreateObjectVariable2;
                if (i7 > 0) {
                    linearSystem.addGreaterThan(solverVariable6, solverVariable5, i7, 3);
                }
                i8 = this.mMatchConstraintMinHeight;
                solverVariable7 = solverVariable3;
                solverVariable8 = solverVariable4;
                if (i8 > 0) {
                    linearSystem.addGreaterThan(solverVariable7, solverVariable8, i8, 3);
                }
                arrayRowCreateRow.createRowDimensionRatio(solverVariable6, solverVariable5, solverVariable7, solverVariable8, f);
                SolverVariable solverVariableCreateErrorVariable3 = linearSystem.createErrorVariable();
                SolverVariable solverVariableCreateErrorVariable4 = linearSystem.createErrorVariable();
                solverVariableCreateErrorVariable3.strength = 4;
                solverVariableCreateErrorVariable4.strength = 4;
                arrayRowCreateRow.addError(solverVariableCreateErrorVariable3, solverVariableCreateErrorVariable4);
                linearSystem.addConstraint(arrayRowCreateRow);
            }
        }
        constraintWidget = this;
        if (constraintWidget.mVerticalResolution == 2) {
            return;
        }
        if (constraintWidget.mVerticalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            z5 = false;
        } else {
            z5 = false;
        }
        i3 = i2;
        if (z3) {
        }
        if (constraintWidget.mBaselineDistance <= 0) {
            i4 = i3;
            i5 = i12;
            solverVariable = solverVariable10;
            solverVariable2 = solverVariableCreateObjectVariable3;
            if (i != Integer.MAX_VALUE) {
                if (!z6) {
                }
                ConstraintAnchor constraintAnchor10 = this.mTop;
                ConstraintAnchor constraintAnchor11 = this.mBottom;
                int i18 = this.mY;
                solverVariable3 = solverVariable;
                solverVariable4 = solverVariable2;
                applyConstraints(linearSystem, z5, z10, constraintAnchor10, constraintAnchor11, i18, i18 + i5, i5, this.mMinHeight, this.mVerticalBiasPercent, z6, z2, this.mMatchConstraintDefaultHeight, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight);
            } else {
                if (!z6) {
                }
                ConstraintAnchor constraintAnchor12 = this.mTop;
                ConstraintAnchor constraintAnchor13 = this.mBottom;
                int i19 = this.mY;
                solverVariable3 = solverVariable;
                solverVariable4 = solverVariable2;
                applyConstraints(linearSystem, z5, z10, constraintAnchor12, constraintAnchor13, i19, i19 + i5, i5, this.mMinHeight, this.mVerticalBiasPercent, z6, z2, this.mMatchConstraintDefaultHeight, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight);
            }
            if (z3) {
                arrayRowCreateRow = linearSystem.createRow();
                if (i != Integer.MAX_VALUE) {
                }
                i6 = i4;
                if (i6 == 0) {
                    linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                    return;
                }
                if (i6 == 1) {
                    linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                    return;
                }
                i7 = this.mMatchConstraintMinWidth;
                solverVariable5 = solverVariableCreateObjectVariable;
                solverVariable6 = solverVariableCreateObjectVariable2;
                if (i7 > 0) {
                    linearSystem.addGreaterThan(solverVariable6, solverVariable5, i7, 3);
                }
                i8 = this.mMatchConstraintMinHeight;
                solverVariable7 = solverVariable3;
                solverVariable8 = solverVariable4;
                if (i8 > 0) {
                    linearSystem.addGreaterThan(solverVariable7, solverVariable8, i8, 3);
                }
                arrayRowCreateRow.createRowDimensionRatio(solverVariable6, solverVariable5, solverVariable7, solverVariable8, f);
                SolverVariable solverVariableCreateErrorVariable5 = linearSystem.createErrorVariable();
                SolverVariable solverVariableCreateErrorVariable6 = linearSystem.createErrorVariable();
                solverVariableCreateErrorVariable5.strength = 4;
                solverVariableCreateErrorVariable6.strength = 4;
                arrayRowCreateRow.addError(solverVariableCreateErrorVariable5, solverVariableCreateErrorVariable6);
                linearSystem.addConstraint(arrayRowCreateRow);
            }
        }
        constraintAnchor = constraintWidget.mBottom;
        if (i != Integer.MAX_VALUE) {
            linearSystem2 = linearSystem;
            solverVariable9 = solverVariableCreateObjectVariable3;
            linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
        } else {
            linearSystem2 = linearSystem;
            solverVariable9 = solverVariableCreateObjectVariable3;
            linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
        }
        if (constraintWidget.mBaseline.mTarget != null) {
            i9 = constraintWidget.mBaselineDistance;
            constraintAnchor2 = constraintWidget.mBaseline;
        } else {
            constraintAnchor2 = constraintAnchor;
            i9 = i12;
        }
        if (i == Integer.MAX_VALUE) {
            if (!z6) {
                ConstraintAnchor constraintAnchor14 = constraintWidget.mTop;
                int i110 = constraintWidget.mY;
                i4 = i3;
                applyConstraints(linearSystem, z5, z10, constraintAnchor14, constraintAnchor2, i110, i110 + i9, i9, constraintWidget.mMinHeight, constraintWidget.mVerticalBiasPercent, z6, z2, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight);
                solverVariable = solverVariable10;
                solverVariable2 = solverVariable9;
                linearSystem.addEquality(solverVariable, solverVariable2, i12, 5);
            } else {
                ConstraintAnchor constraintAnchor15 = constraintWidget.mTop;
                int i111 = constraintWidget.mY;
                i4 = i3;
                applyConstraints(linearSystem, z5, z10, constraintAnchor15, constraintAnchor2, i111, i111 + i9, i9, constraintWidget.mMinHeight, constraintWidget.mVerticalBiasPercent, z6, z2, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight);
                solverVariable = solverVariable10;
                solverVariable2 = solverVariable9;
                linearSystem.addEquality(solverVariable, solverVariable2, i12, 5);
            }
        } else if (!z6) {
            ConstraintAnchor constraintAnchor16 = constraintWidget.mTop;
            int i112 = constraintWidget.mY;
            i4 = i3;
            applyConstraints(linearSystem, z5, z10, constraintAnchor16, constraintAnchor2, i112, i112 + i9, i9, constraintWidget.mMinHeight, constraintWidget.mVerticalBiasPercent, z6, z2, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight);
            solverVariable = solverVariable10;
            solverVariable2 = solverVariable9;
            linearSystem.addEquality(solverVariable, solverVariable2, i12, 5);
        } else {
            ConstraintAnchor constraintAnchor17 = constraintWidget.mTop;
            int i113 = constraintWidget.mY;
            i4 = i3;
            applyConstraints(linearSystem, z5, z10, constraintAnchor17, constraintAnchor2, i113, i113 + i9, i9, constraintWidget.mMinHeight, constraintWidget.mVerticalBiasPercent, z6, z2, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight);
            solverVariable = solverVariable10;
            solverVariable2 = solverVariable9;
            linearSystem.addEquality(solverVariable, solverVariable2, i12, 5);
        }
        solverVariable3 = solverVariable;
        solverVariable4 = solverVariable2;
        if (z3) {
            arrayRowCreateRow = linearSystem.createRow();
            if (i != Integer.MAX_VALUE) {
            }
            i6 = i4;
            if (i6 == 0) {
                linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                return;
            }
            if (i6 == 1) {
                linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                return;
            }
            i7 = this.mMatchConstraintMinWidth;
            solverVariable5 = solverVariableCreateObjectVariable;
            solverVariable6 = solverVariableCreateObjectVariable2;
            if (i7 > 0) {
                linearSystem.addGreaterThan(solverVariable6, solverVariable5, i7, 3);
            }
            i8 = this.mMatchConstraintMinHeight;
            solverVariable7 = solverVariable3;
            solverVariable8 = solverVariable4;
            if (i8 > 0) {
                linearSystem.addGreaterThan(solverVariable7, solverVariable8, i8, 3);
            }
            arrayRowCreateRow.createRowDimensionRatio(solverVariable6, solverVariable5, solverVariable7, solverVariable8, f);
            SolverVariable solverVariableCreateErrorVariable7 = linearSystem.createErrorVariable();
            SolverVariable solverVariableCreateErrorVariable8 = linearSystem.createErrorVariable();
            solverVariableCreateErrorVariable7.strength = 4;
            solverVariableCreateErrorVariable8.strength = 4;
            arrayRowCreateRow.addError(solverVariableCreateErrorVariable7, solverVariableCreateErrorVariable8);
            linearSystem.addConstraint(arrayRowCreateRow);
        }
    }

    private void applyConstraints(LinearSystem linearSystem, boolean z, boolean z2, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2, int i3, int i4, float f, boolean z3, boolean z4, int i5, int i6, int i7) {
        boolean z5;
        int i8;
        int i9 = i6;
        SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(constraintAnchor);
        SolverVariable solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(constraintAnchor2);
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(constraintAnchor.getTarget());
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(constraintAnchor2.getTarget());
        int margin = constraintAnchor.getMargin();
        int margin2 = constraintAnchor2.getMargin();
        if (this.mVisibility == 8) {
            z5 = true;
            i8 = 0;
        } else {
            z5 = z2;
            i8 = i3;
        }
        if (solverVariableCreateObjectVariable3 == null && solverVariableCreateObjectVariable4 == null) {
            linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable, i));
            if (z3) {
                return;
            }
            if (z) {
                linearSystem.addConstraint(LinearSystem.createRowEquals(linearSystem, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i4, true));
                return;
            } else if (z5) {
                linearSystem.addConstraint(LinearSystem.createRowEquals(linearSystem, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i8, false));
                return;
            } else {
                linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, i2));
                return;
            }
        }
        if (solverVariableCreateObjectVariable3 != null && solverVariableCreateObjectVariable4 == null) {
            linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin));
            if (z) {
                linearSystem.addConstraint(LinearSystem.createRowEquals(linearSystem, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i4, true));
                return;
            } else {
                if (z3) {
                    return;
                }
                if (z5) {
                    linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i8));
                    return;
                } else {
                    linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, i2));
                    return;
                }
            }
        }
        if (solverVariableCreateObjectVariable3 == null && solverVariableCreateObjectVariable4 != null) {
            linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, margin2 * (-1)));
            if (z) {
                linearSystem.addConstraint(LinearSystem.createRowEquals(linearSystem, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i4, true));
                return;
            } else {
                if (z3) {
                    return;
                }
                if (z5) {
                    linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i8));
                    return;
                } else {
                    linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable, i));
                    return;
                }
            }
        }
        if (z5) {
            if (z) {
                linearSystem.addConstraint(LinearSystem.createRowEquals(linearSystem, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i4, true));
            } else {
                linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i8));
            }
            if (constraintAnchor.getStrength() == constraintAnchor2.getStrength()) {
                if (solverVariableCreateObjectVariable3 == solverVariableCreateObjectVariable4) {
                    linearSystem.addConstraint(LinearSystem.createRowCentering(linearSystem, solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, 0, 0.5f, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable2, 0, true));
                    return;
                } else {
                    if (z4) {
                        return;
                    }
                    linearSystem.addConstraint(LinearSystem.createRowGreaterThan(linearSystem, solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, constraintAnchor.getConnectionType() != ConstraintAnchor.ConnectionType.STRICT));
                    linearSystem.addConstraint(LinearSystem.createRowLowerThan(linearSystem, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, margin2 * (-1), constraintAnchor2.getConnectionType() != ConstraintAnchor.ConnectionType.STRICT));
                    linearSystem.addConstraint(LinearSystem.createRowCentering(linearSystem, solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, f, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable2, margin2, false));
                    return;
                }
            }
            if (constraintAnchor.getStrength() == ConstraintAnchor.Strength.STRONG) {
                linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin));
                SolverVariable solverVariableCreateSlackVariable = linearSystem.createSlackVariable();
                ArrayRow arrayRowCreateRow = linearSystem.createRow();
                arrayRowCreateRow.createRowLowerThan(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, solverVariableCreateSlackVariable, margin2 * (-1));
                linearSystem.addConstraint(arrayRowCreateRow);
                return;
            }
            SolverVariable solverVariableCreateSlackVariable2 = linearSystem.createSlackVariable();
            ArrayRow arrayRowCreateRow2 = linearSystem.createRow();
            arrayRowCreateRow2.createRowGreaterThan(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, solverVariableCreateSlackVariable2, margin);
            linearSystem.addConstraint(arrayRowCreateRow2);
            linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, margin2 * (-1)));
            return;
        }
        if (z3) {
            linearSystem.addGreaterThan(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, 3);
            linearSystem.addLowerThan(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, margin2 * (-1), 3);
            linearSystem.addConstraint(LinearSystem.createRowCentering(linearSystem, solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, f, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable2, margin2, true));
            return;
        }
        if (z4) {
            return;
        }
        if (i5 == 1) {
            if (i9 <= i8) {
                i9 = i8;
            }
            if (i7 > 0) {
                if (i7 < i9) {
                    i9 = i7;
                } else {
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i7, 3);
                }
            }
            linearSystem.addEquality(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i9, 3);
            linearSystem.addGreaterThan(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, 2);
            linearSystem.addLowerThan(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, -margin2, 2);
            linearSystem.addCentering(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, f, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable2, margin2, 4);
            return;
        }
        if (i9 == 0 && i7 == 0) {
            linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin));
            linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, margin2 * (-1)));
            return;
        }
        if (i7 > 0) {
            linearSystem.addLowerThan(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i7, 3);
        }
        linearSystem.addGreaterThan(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, 2);
        linearSystem.addLowerThan(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, -margin2, 2);
        linearSystem.addCentering(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, f, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable2, margin2, 4);
    }

    public void updateFromSolver(LinearSystem linearSystem, int i) {
        if (i == Integer.MAX_VALUE) {
            setFrame(linearSystem.getObjectVariableValue(this.mLeft), linearSystem.getObjectVariableValue(this.mTop), linearSystem.getObjectVariableValue(this.mRight), linearSystem.getObjectVariableValue(this.mBottom));
            return;
        }
        if (i == -2) {
            setFrame(this.mSolverLeft, this.mSolverTop, this.mSolverRight, this.mSolverBottom);
            return;
        }
        if (this.mLeft.mGroup == i) {
            this.mSolverLeft = linearSystem.getObjectVariableValue(this.mLeft);
        }
        if (this.mTop.mGroup == i) {
            this.mSolverTop = linearSystem.getObjectVariableValue(this.mTop);
        }
        if (this.mRight.mGroup == i) {
            this.mSolverRight = linearSystem.getObjectVariableValue(this.mRight);
        }
        if (this.mBottom.mGroup == i) {
            this.mSolverBottom = linearSystem.getObjectVariableValue(this.mBottom);
        }
    }

    public void updateFromSolver(LinearSystem linearSystem) {
        updateFromSolver(linearSystem, Integer.MAX_VALUE);
    }
}
