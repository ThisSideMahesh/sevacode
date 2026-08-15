package android.support.constraint.solver.widgets;

import android.support.constraint.solver.ArrayRow;
import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidgetContainer extends WidgetContainer {
    static boolean ALLOW_ROOT_GROUP = true;
    private static final int CHAIN_FIRST = 0;
    private static final int CHAIN_FIRST_VISIBLE = 2;
    private static final int CHAIN_LAST = 1;
    private static final int CHAIN_LAST_VISIBLE = 3;
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_LAYOUT = false;
    private static final boolean DEBUG_OPTIMIZE = false;
    private static final int FLAG_CHAIN_DANGLING = 1;
    private static final int FLAG_CHAIN_OPTIMIZE = 0;
    private static final int FLAG_RECOMPUTE_BOUNDS = 2;
    private static final int MAX_ITERATIONS = 8;
    public static final int OPTIMIZATION_ALL = 2;
    public static final int OPTIMIZATION_BASIC = 4;
    public static final int OPTIMIZATION_CHAIN = 8;
    public static final int OPTIMIZATION_NONE = 1;
    private static final boolean USE_SNAPSHOT = true;
    private static final boolean USE_THREAD = false;
    private boolean[] flags;
    protected LinearSystem mBackgroundSystem;
    private ConstraintWidget[] mChainEnds;
    private boolean mHeightMeasuredTooSmall;
    private ConstraintWidget[] mHorizontalChainsArray;
    private int mHorizontalChainsSize;
    private ConstraintWidget[] mMatchConstraintsChainedWidgets;
    private int mOptimizationLevel;
    int mPaddingBottom;
    int mPaddingLeft;
    int mPaddingRight;
    int mPaddingTop;
    private Snapshot mSnapshot;
    protected LinearSystem mSystem;
    private ConstraintWidget[] mVerticalChainsArray;
    private int mVerticalChainsSize;
    private boolean mWidthMeasuredTooSmall;
    int mWrapHeight;
    int mWrapWidth;

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public String getType() {
        return "ConstraintLayout";
    }

    public boolean handlesInternalConstraints() {
        return false;
    }

    public ConstraintWidgetContainer() {
        this.mSystem = new LinearSystem();
        this.mBackgroundSystem = null;
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mMatchConstraintsChainedWidgets = new ConstraintWidget[4];
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 2;
        this.flags = new boolean[3];
        this.mChainEnds = new ConstraintWidget[4];
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
    }

    public ConstraintWidgetContainer(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.mSystem = new LinearSystem();
        this.mBackgroundSystem = null;
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mMatchConstraintsChainedWidgets = new ConstraintWidget[4];
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 2;
        this.flags = new boolean[3];
        this.mChainEnds = new ConstraintWidget[4];
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
    }

    public ConstraintWidgetContainer(int i, int i2) {
        super(i, i2);
        this.mSystem = new LinearSystem();
        this.mBackgroundSystem = null;
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mMatchConstraintsChainedWidgets = new ConstraintWidget[4];
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 2;
        this.flags = new boolean[3];
        this.mChainEnds = new ConstraintWidget[4];
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
    }

    public void setOptimizationLevel(int i) {
        this.mOptimizationLevel = i;
    }

    @Override // android.support.constraint.solver.widgets.WidgetContainer, android.support.constraint.solver.widgets.ConstraintWidget
    public void reset() {
        this.mSystem.reset();
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mPaddingTop = 0;
        this.mPaddingBottom = 0;
        super.reset();
    }

    public boolean isWidthMeasuredTooSmall() {
        return this.mWidthMeasuredTooSmall;
    }

    public boolean isHeightMeasuredTooSmall() {
        return this.mHeightMeasuredTooSmall;
    }

    public static ConstraintWidgetContainer createContainer(ConstraintWidgetContainer constraintWidgetContainer, String str, ArrayList<ConstraintWidget> arrayList, int i) {
        Rectangle bounds = getBounds(arrayList);
        if (bounds.width == 0 || bounds.height == 0) {
            return null;
        }
        if (i > 0) {
            int iMin = Math.min(bounds.x, bounds.y);
            if (i > iMin) {
                i = iMin;
            }
            bounds.grow(i, i);
        }
        constraintWidgetContainer.setOrigin(bounds.x, bounds.y);
        constraintWidgetContainer.setDimension(bounds.width, bounds.height);
        constraintWidgetContainer.setDebugName(str);
        ConstraintWidget parent = arrayList.get(0).getParent();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = arrayList.get(i2);
            if (constraintWidget.getParent() == parent) {
                constraintWidgetContainer.add(constraintWidget);
                constraintWidget.setX(constraintWidget.getX() - bounds.x);
                constraintWidget.setY(constraintWidget.getY() - bounds.y);
            }
        }
        return constraintWidgetContainer;
    }

    public boolean addChildrenToSolver(LinearSystem linearSystem, int i) {
        boolean z;
        addToSolver(linearSystem, i);
        int size = this.mChildren.size();
        int i2 = this.mOptimizationLevel;
        if (i2 == 2 || i2 == 4) {
            if (optimize(linearSystem)) {
                return false;
            }
            z = false;
        } else {
            z = USE_SNAPSHOT;
        }
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i3);
            if (constraintWidget instanceof ConstraintWidgetContainer) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.mHorizontalDimensionBehaviour;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget.mVerticalDimensionBehaviour;
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                constraintWidget.addToSolver(linearSystem, i);
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            } else {
                if (z) {
                    Optimizer.checkMatchParent(this, linearSystem, constraintWidget);
                }
                constraintWidget.addToSolver(linearSystem, i);
            }
        }
        if (this.mHorizontalChainsSize > 0) {
            applyHorizontalChain(linearSystem);
        }
        if (this.mVerticalChainsSize > 0) {
            applyVerticalChain(linearSystem);
        }
        return USE_SNAPSHOT;
    }

    private boolean optimize(LinearSystem linearSystem) {
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            constraintWidget.mHorizontalResolution = -1;
            constraintWidget.mVerticalResolution = -1;
            if (constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                constraintWidget.mHorizontalResolution = 1;
                constraintWidget.mVerticalResolution = 1;
            }
        }
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (!z) {
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < size; i6++) {
                ConstraintWidget constraintWidget2 = this.mChildren.get(i6);
                if (constraintWidget2.mHorizontalResolution == -1) {
                    if (this.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        constraintWidget2.mHorizontalResolution = 1;
                    } else {
                        Optimizer.checkHorizontalSimpleDependency(this, linearSystem, constraintWidget2);
                    }
                }
                if (constraintWidget2.mVerticalResolution == -1) {
                    if (this.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        constraintWidget2.mVerticalResolution = 1;
                    } else {
                        Optimizer.checkVerticalSimpleDependency(this, linearSystem, constraintWidget2);
                    }
                }
                if (constraintWidget2.mVerticalResolution == -1) {
                    i4++;
                }
                if (constraintWidget2.mHorizontalResolution == -1) {
                    i5++;
                }
            }
            if ((i4 == 0 && i5 == 0) || (i2 == i4 && i3 == i5)) {
                z = USE_SNAPSHOT;
            }
            i2 = i4;
            i3 = i5;
        }
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            ConstraintWidget constraintWidget3 = this.mChildren.get(i9);
            if (constraintWidget3.mHorizontalResolution == 1 || constraintWidget3.mHorizontalResolution == -1) {
                i7++;
            }
            if (constraintWidget3.mVerticalResolution == 1 || constraintWidget3.mVerticalResolution == -1) {
                i8++;
            }
        }
        if (i7 == 0 && i8 == 0) {
            return USE_SNAPSHOT;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:194:0x0495  */
    /* JADX WARN: Code duplicated, block: B:197:0x049a  */
    /* JADX WARN: Code duplicated, block: B:229:0x049c A[SYNTHETIC] */
    private void applyHorizontalChain(LinearSystem linearSystem) {
        int i;
        LinearSystem linearSystem2;
        int i2;
        int margin;
        LinearSystem linearSystem3 = linearSystem;
        int i3 = 0;
        int i4 = 0;
        while (i4 < this.mHorizontalChainsSize) {
            ConstraintWidget[] constraintWidgetArr = this.mHorizontalChainsArray;
            ConstraintWidget constraintWidget = constraintWidgetArr[i4];
            int iCountMatchConstraintsChainedWidgets = countMatchConstraintsChainedWidgets(linearSystem, this.mChainEnds, constraintWidgetArr[i4], 0, this.flags);
            ConstraintWidget constraintWidget2 = this.mChainEnds[2];
            if (constraintWidget2 != null) {
                if (this.flags[1]) {
                    int drawX = constraintWidget.getDrawX();
                    while (constraintWidget2 != null) {
                        linearSystem3.addEquality(constraintWidget2.mLeft.mSolverVariable, drawX);
                        ConstraintWidget constraintWidget3 = constraintWidget2.mHorizontalNextWidget;
                        drawX += constraintWidget2.mLeft.getMargin() + constraintWidget2.getWidth() + constraintWidget2.mRight.getMargin();
                        constraintWidget2 = constraintWidget3;
                    }
                } else {
                    boolean z = constraintWidget.mHorizontalChainStyle == 0 ? USE_SNAPSHOT : false;
                    boolean z2 = constraintWidget.mHorizontalChainStyle == 2 ? USE_SNAPSHOT : false;
                    boolean z3 = this.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT ? USE_SNAPSHOT : false;
                    int i5 = this.mOptimizationLevel;
                    if ((i5 != 2 && i5 != 8) || !this.flags[i3] || !constraintWidget.mHorizontalChainFixedPosition || z2 || z3 || constraintWidget.mHorizontalChainStyle != 0) {
                        char c = 3;
                        if (iCountMatchConstraintsChainedWidgets != 0 && !z2) {
                            float f = 0.0f;
                            ConstraintWidget constraintWidget4 = null;
                            while (constraintWidget2 != null) {
                                if (constraintWidget2.mHorizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                    int margin2 = constraintWidget2.mLeft.getMargin();
                                    if (constraintWidget4 != null) {
                                        margin2 += constraintWidget4.mRight.getMargin();
                                    }
                                    linearSystem3.addGreaterThan(constraintWidget2.mLeft.mSolverVariable, constraintWidget2.mLeft.mTarget.mSolverVariable, margin2, constraintWidget2.mLeft.mTarget.mOwner.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? 2 : 3);
                                    int margin3 = constraintWidget2.mRight.getMargin();
                                    if (constraintWidget2.mRight.mTarget.mOwner.mLeft.mTarget != null && constraintWidget2.mRight.mTarget.mOwner.mLeft.mTarget.mOwner == constraintWidget2) {
                                        margin3 += constraintWidget2.mRight.mTarget.mOwner.mLeft.getMargin();
                                    }
                                    linearSystem3.addLowerThan(constraintWidget2.mRight.mSolverVariable, constraintWidget2.mRight.mTarget.mSolverVariable, -margin3, constraintWidget2.mRight.mTarget.mOwner.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? 2 : 3);
                                } else {
                                    f += constraintWidget2.mHorizontalWeight;
                                    if (constraintWidget2.mRight.mTarget != null) {
                                        margin = constraintWidget2.mRight.getMargin();
                                        if (constraintWidget2 != this.mChainEnds[3]) {
                                            margin += constraintWidget2.mRight.mTarget.mOwner.mLeft.getMargin();
                                        }
                                    } else {
                                        margin = 0;
                                    }
                                    linearSystem3.addGreaterThan(constraintWidget2.mRight.mSolverVariable, constraintWidget2.mLeft.mSolverVariable, i3, 1);
                                    linearSystem3.addLowerThan(constraintWidget2.mRight.mSolverVariable, constraintWidget2.mRight.mTarget.mSolverVariable, -margin, 1);
                                }
                                constraintWidget4 = constraintWidget2;
                                constraintWidget2 = constraintWidget2.mHorizontalNextWidget;
                            }
                            if (iCountMatchConstraintsChainedWidgets != 1) {
                                int i6 = 0;
                                while (true) {
                                    int i7 = iCountMatchConstraintsChainedWidgets - 1;
                                    if (i6 >= i7) {
                                        break;
                                    }
                                    ConstraintWidget[] constraintWidgetArr2 = this.mMatchConstraintsChainedWidgets;
                                    ConstraintWidget constraintWidget5 = constraintWidgetArr2[i6];
                                    i6++;
                                    ConstraintWidget constraintWidget6 = constraintWidgetArr2[i6];
                                    SolverVariable solverVariable = constraintWidget5.mLeft.mSolverVariable;
                                    SolverVariable solverVariable2 = constraintWidget5.mRight.mSolverVariable;
                                    SolverVariable solverVariable3 = constraintWidget6.mLeft.mSolverVariable;
                                    SolverVariable solverVariable4 = constraintWidget6.mRight.mSolverVariable;
                                    ConstraintWidget[] constraintWidgetArr3 = this.mChainEnds;
                                    int i8 = iCountMatchConstraintsChainedWidgets;
                                    SolverVariable solverVariable5 = constraintWidget6 == constraintWidgetArr3[c] ? constraintWidgetArr3[1].mRight.mSolverVariable : solverVariable4;
                                    int margin4 = constraintWidget5.mLeft.getMargin();
                                    if (constraintWidget5.mLeft.mTarget != null && constraintWidget5.mLeft.mTarget.mOwner.mRight.mTarget != null && constraintWidget5.mLeft.mTarget.mOwner.mRight.mTarget.mOwner == constraintWidget5) {
                                        margin4 += constraintWidget5.mLeft.mTarget.mOwner.mRight.getMargin();
                                    }
                                    linearSystem3.addGreaterThan(solverVariable, constraintWidget5.mLeft.mTarget.mSolverVariable, margin4, 2);
                                    int margin5 = constraintWidget5.mRight.getMargin();
                                    if (constraintWidget5.mRight.mTarget != null && constraintWidget5.mHorizontalNextWidget != null) {
                                        margin5 += constraintWidget5.mHorizontalNextWidget.mLeft.mTarget != null ? constraintWidget5.mHorizontalNextWidget.mLeft.getMargin() : 0;
                                    }
                                    linearSystem3.addLowerThan(solverVariable2, constraintWidget5.mRight.mTarget.mSolverVariable, -margin5, 2);
                                    if (i6 == i7) {
                                        int margin6 = constraintWidget6.mLeft.getMargin();
                                        if (constraintWidget6.mLeft.mTarget != null && constraintWidget6.mLeft.mTarget.mOwner.mRight.mTarget != null && constraintWidget6.mLeft.mTarget.mOwner.mRight.mTarget.mOwner == constraintWidget6) {
                                            margin6 += constraintWidget6.mLeft.mTarget.mOwner.mRight.getMargin();
                                        }
                                        linearSystem3.addGreaterThan(solverVariable3, constraintWidget6.mLeft.mTarget.mSolverVariable, margin6, 2);
                                        ConstraintAnchor constraintAnchor = constraintWidget6.mRight;
                                        ConstraintWidget[] constraintWidgetArr4 = this.mChainEnds;
                                        if (constraintWidget6 == constraintWidgetArr4[3]) {
                                            constraintAnchor = constraintWidgetArr4[1].mRight;
                                        }
                                        int margin7 = constraintAnchor.getMargin();
                                        if (constraintAnchor.mTarget != null && constraintAnchor.mTarget.mOwner.mLeft.mTarget != null && constraintAnchor.mTarget.mOwner.mLeft.mTarget.mOwner == constraintWidget6) {
                                            margin7 += constraintAnchor.mTarget.mOwner.mLeft.getMargin();
                                        }
                                        i2 = 2;
                                        linearSystem3.addLowerThan(solverVariable5, constraintAnchor.mTarget.mSolverVariable, -margin7, 2);
                                    } else {
                                        i2 = 2;
                                    }
                                    if (constraintWidget.mMatchConstraintMaxWidth > 0) {
                                        linearSystem3.addLowerThan(solverVariable2, solverVariable, constraintWidget.mMatchConstraintMaxWidth, i2);
                                    }
                                    ArrayRow arrayRowCreateRow = linearSystem.createRow();
                                    arrayRowCreateRow.createRowEqualDimension(constraintWidget5.mHorizontalWeight, f, constraintWidget6.mHorizontalWeight, solverVariable, constraintWidget5.mLeft.getMargin(), solverVariable2, constraintWidget5.mRight.getMargin(), solverVariable3, constraintWidget6.mLeft.getMargin(), solverVariable5, constraintWidget6.mRight.getMargin());
                                    linearSystem3.addConstraint(arrayRowCreateRow);
                                    iCountMatchConstraintsChainedWidgets = i8;
                                    c = 3;
                                }
                            } else {
                                ConstraintWidget constraintWidget7 = this.mMatchConstraintsChainedWidgets[i3];
                                int margin8 = constraintWidget7.mLeft.getMargin();
                                if (constraintWidget7.mLeft.mTarget != null) {
                                    margin8 += constraintWidget7.mLeft.mTarget.getMargin();
                                }
                                int margin9 = constraintWidget7.mRight.getMargin();
                                if (constraintWidget7.mRight.mTarget != null) {
                                    margin9 += constraintWidget7.mRight.mTarget.getMargin();
                                }
                                SolverVariable solverVariable6 = constraintWidget.mRight.mTarget.mSolverVariable;
                                ConstraintWidget[] constraintWidgetArr5 = this.mChainEnds;
                                if (constraintWidget7 == constraintWidgetArr5[3]) {
                                    solverVariable6 = constraintWidgetArr5[1].mRight.mTarget.mSolverVariable;
                                }
                                if (constraintWidget7.mMatchConstraintDefaultWidth == 1) {
                                    linearSystem3.addGreaterThan(constraintWidget.mLeft.mSolverVariable, constraintWidget.mLeft.mTarget.mSolverVariable, margin8, 1);
                                    linearSystem3.addLowerThan(constraintWidget.mRight.mSolverVariable, solverVariable6, -margin9, 1);
                                    linearSystem3.addEquality(constraintWidget.mRight.mSolverVariable, constraintWidget.mLeft.mSolverVariable, constraintWidget.getWidth(), 2);
                                } else {
                                    linearSystem3.addEquality(constraintWidget7.mLeft.mSolverVariable, constraintWidget7.mLeft.mTarget.mSolverVariable, margin8, 1);
                                    linearSystem3.addEquality(constraintWidget7.mRight.mSolverVariable, solverVariable6, -margin9, 1);
                                }
                            }
                        } else {
                            ConstraintWidget constraintWidget8 = constraintWidget2;
                            ConstraintWidget constraintWidget9 = null;
                            ConstraintWidget constraintWidget10 = null;
                            boolean z4 = false;
                            while (constraintWidget8 != null) {
                                ConstraintWidget constraintWidget11 = constraintWidget8.mHorizontalNextWidget;
                                if (constraintWidget11 == null) {
                                    constraintWidget9 = this.mChainEnds[1];
                                    z4 = USE_SNAPSHOT;
                                }
                                if (z2) {
                                    ConstraintAnchor constraintAnchor2 = constraintWidget8.mLeft;
                                    int margin10 = constraintAnchor2.getMargin();
                                    if (constraintWidget10 != null) {
                                        margin10 += constraintWidget10.mRight.getMargin();
                                    }
                                    linearSystem3.addGreaterThan(constraintAnchor2.mSolverVariable, constraintAnchor2.mTarget.mSolverVariable, margin10, constraintWidget2 != constraintWidget8 ? 3 : 1);
                                    if (constraintWidget8.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                        ConstraintAnchor constraintAnchor3 = constraintWidget8.mRight;
                                        if (constraintWidget8.mMatchConstraintDefaultWidth == 1) {
                                            linearSystem3.addEquality(constraintAnchor3.mSolverVariable, constraintAnchor2.mSolverVariable, Math.max(constraintWidget8.mMatchConstraintMinWidth, constraintWidget8.getWidth()), 3);
                                        } else {
                                            linearSystem3.addGreaterThan(constraintAnchor2.mSolverVariable, constraintAnchor2.mTarget.mSolverVariable, constraintAnchor2.mMargin, 3);
                                            linearSystem3.addLowerThan(constraintAnchor3.mSolverVariable, constraintAnchor2.mSolverVariable, constraintWidget8.mMatchConstraintMinWidth, 3);
                                        }
                                    }
                                } else if (z || !z4 || constraintWidget10 == null) {
                                    if (!z && !z4 && constraintWidget10 == null) {
                                        if (constraintWidget8.mLeft.mTarget == null) {
                                            linearSystem3.addEquality(constraintWidget8.mLeft.mSolverVariable, constraintWidget8.getDrawX());
                                        } else {
                                            linearSystem3.addEquality(constraintWidget8.mLeft.mSolverVariable, constraintWidget.mLeft.mTarget.mSolverVariable, constraintWidget8.mLeft.getMargin(), 5);
                                        }
                                    } else {
                                        ConstraintAnchor constraintAnchor4 = constraintWidget8.mLeft;
                                        ConstraintAnchor constraintAnchor5 = constraintWidget8.mRight;
                                        int margin11 = constraintAnchor4.getMargin();
                                        int margin12 = constraintAnchor5.getMargin();
                                        linearSystem3.addGreaterThan(constraintAnchor4.mSolverVariable, constraintAnchor4.mTarget.mSolverVariable, margin11, 1);
                                        linearSystem3.addLowerThan(constraintAnchor5.mSolverVariable, constraintAnchor5.mTarget.mSolverVariable, -margin12, 1);
                                        SolverVariable solverVariable7 = constraintAnchor4.mTarget != null ? constraintAnchor4.mTarget.mSolverVariable : null;
                                        if (constraintWidget10 == null) {
                                            solverVariable7 = constraintWidget.mLeft.mTarget != null ? constraintWidget.mLeft.mTarget.mSolverVariable : null;
                                        }
                                        if (constraintWidget11 == null) {
                                            constraintWidget11 = constraintWidget9.mRight.mTarget != null ? constraintWidget9.mRight.mTarget.mOwner : null;
                                        }
                                        ConstraintWidget constraintWidget12 = constraintWidget11;
                                        if (constraintWidget12 != null) {
                                            SolverVariable solverVariable8 = constraintWidget12.mLeft.mSolverVariable;
                                            if (z4) {
                                                solverVariable8 = constraintWidget9.mRight.mTarget != null ? constraintWidget9.mRight.mTarget.mSolverVariable : null;
                                            }
                                            SolverVariable solverVariable9 = solverVariable8;
                                            if (solverVariable7 != null && solverVariable9 != null) {
                                                linearSystem.addCentering(constraintAnchor4.mSolverVariable, solverVariable7, margin11, 0.5f, solverVariable9, constraintAnchor5.mSolverVariable, margin12, 4);
                                            }
                                        }
                                        constraintWidget11 = constraintWidget12;
                                    }
                                    if (z4) {
                                        constraintWidget11 = null;
                                    }
                                    constraintWidget = constraintWidget;
                                    linearSystem3 = linearSystem3;
                                    constraintWidget8 = constraintWidget11;
                                    constraintWidget10 = constraintWidget8;
                                    z = z;
                                    i4 = i4;
                                    this = this;
                                } else if (constraintWidget8.mRight.mTarget == null) {
                                    linearSystem3.addEquality(constraintWidget8.mRight.mSolverVariable, constraintWidget8.getDrawRight());
                                } else {
                                    linearSystem3.addEquality(constraintWidget8.mRight.mSolverVariable, constraintWidget9.mRight.mTarget.mSolverVariable, -constraintWidget8.mRight.getMargin(), 5);
                                }
                                constraintWidget = constraintWidget;
                                linearSystem3 = linearSystem3;
                                if (z4) {
                                    constraintWidget11 = null;
                                }
                                constraintWidget = constraintWidget;
                                linearSystem3 = linearSystem3;
                                constraintWidget8 = constraintWidget11;
                                constraintWidget10 = constraintWidget8;
                                z = z;
                                i4 = i4;
                                this = this;
                            }
                            ConstraintWidget constraintWidget13 = constraintWidget;
                            i = i4;
                            linearSystem2 = linearSystem3;
                            if (z2) {
                                ConstraintAnchor constraintAnchor6 = constraintWidget2.mLeft;
                                ConstraintAnchor constraintAnchor7 = constraintWidget9.mRight;
                                int margin13 = constraintAnchor6.getMargin();
                                int margin14 = constraintAnchor7.getMargin();
                                SolverVariable solverVariable10 = constraintWidget13.mLeft.mTarget != null ? constraintWidget13.mLeft.mTarget.mSolverVariable : null;
                                SolverVariable solverVariable11 = constraintWidget9.mRight.mTarget != null ? constraintWidget9.mRight.mTarget.mSolverVariable : null;
                                if (solverVariable10 != null && solverVariable11 != null) {
                                    linearSystem2.addLowerThan(constraintAnchor7.mSolverVariable, solverVariable11, -margin14, 1);
                                    linearSystem.addCentering(constraintAnchor6.mSolverVariable, solverVariable10, margin13, constraintWidget13.mHorizontalBiasPercent, solverVariable11, constraintAnchor7.mSolverVariable, margin14, 4);
                                }
                            }
                        }
                    } else {
                        Optimizer.applyDirectResolutionHorizontalChain(this, linearSystem3, iCountMatchConstraintsChainedWidgets, constraintWidget);
                    }
                }
                i = i4;
                linearSystem2 = linearSystem3;
            } else {
                i = i4;
                linearSystem2 = linearSystem3;
            }
            i4 = i + 1;
            linearSystem3 = linearSystem2;
            i3 = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:204:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:207:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:239:0x04bf A[SYNTHETIC] */
    private void applyVerticalChain(LinearSystem linearSystem) {
        int i;
        LinearSystem linearSystem2;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        int i2;
        int margin;
        LinearSystem linearSystem3 = linearSystem;
        int i3 = 0;
        int i4 = 0;
        while (i4 < this.mVerticalChainsSize) {
            ConstraintWidget[] constraintWidgetArr = this.mVerticalChainsArray;
            ConstraintWidget constraintWidget = constraintWidgetArr[i4];
            int iCountMatchConstraintsChainedWidgets = countMatchConstraintsChainedWidgets(linearSystem, this.mChainEnds, constraintWidgetArr[i4], 1, this.flags);
            ConstraintWidget constraintWidget2 = this.mChainEnds[2];
            if (constraintWidget2 != null) {
                if (this.flags[1]) {
                    int drawY = constraintWidget.getDrawY();
                    while (constraintWidget2 != null) {
                        linearSystem3.addEquality(constraintWidget2.mTop.mSolverVariable, drawY);
                        ConstraintWidget constraintWidget3 = constraintWidget2.mVerticalNextWidget;
                        drawY += constraintWidget2.mTop.getMargin() + constraintWidget2.getHeight() + constraintWidget2.mBottom.getMargin();
                        constraintWidget2 = constraintWidget3;
                    }
                } else {
                    boolean z = constraintWidget.mVerticalChainStyle == 0 ? USE_SNAPSHOT : false;
                    boolean z2 = constraintWidget.mVerticalChainStyle == 2 ? USE_SNAPSHOT : false;
                    boolean z3 = this.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT ? USE_SNAPSHOT : false;
                    int i5 = this.mOptimizationLevel;
                    if ((i5 != 2 && i5 != 8) || !this.flags[i3] || !constraintWidget.mVerticalChainFixedPosition || z2 || z3 || constraintWidget.mVerticalChainStyle != 0) {
                        char c = 3;
                        if (iCountMatchConstraintsChainedWidgets != 0 && !z2) {
                            float f = 0.0f;
                            ConstraintWidget constraintWidget4 = null;
                            while (constraintWidget2 != null) {
                                if (constraintWidget2.mVerticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                    int margin2 = constraintWidget2.mTop.getMargin();
                                    if (constraintWidget4 != null) {
                                        margin2 += constraintWidget4.mBottom.getMargin();
                                    }
                                    linearSystem3.addGreaterThan(constraintWidget2.mTop.mSolverVariable, constraintWidget2.mTop.mTarget.mSolverVariable, margin2, constraintWidget2.mTop.mTarget.mOwner.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? 2 : 3);
                                    int margin3 = constraintWidget2.mBottom.getMargin();
                                    if (constraintWidget2.mBottom.mTarget.mOwner.mTop.mTarget != null && constraintWidget2.mBottom.mTarget.mOwner.mTop.mTarget.mOwner == constraintWidget2) {
                                        margin3 += constraintWidget2.mBottom.mTarget.mOwner.mTop.getMargin();
                                    }
                                    linearSystem3.addLowerThan(constraintWidget2.mBottom.mSolverVariable, constraintWidget2.mBottom.mTarget.mSolverVariable, -margin3, constraintWidget2.mBottom.mTarget.mOwner.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? 2 : 3);
                                } else {
                                    f += constraintWidget2.mVerticalWeight;
                                    if (constraintWidget2.mBottom.mTarget != null) {
                                        margin = constraintWidget2.mBottom.getMargin();
                                        if (constraintWidget2 != this.mChainEnds[3]) {
                                            margin += constraintWidget2.mBottom.mTarget.mOwner.mTop.getMargin();
                                        }
                                    } else {
                                        margin = 0;
                                    }
                                    linearSystem3.addGreaterThan(constraintWidget2.mBottom.mSolverVariable, constraintWidget2.mTop.mSolverVariable, i3, 1);
                                    linearSystem3.addLowerThan(constraintWidget2.mBottom.mSolverVariable, constraintWidget2.mBottom.mTarget.mSolverVariable, -margin, 1);
                                }
                                constraintWidget4 = constraintWidget2;
                                constraintWidget2 = constraintWidget2.mVerticalNextWidget;
                            }
                            if (iCountMatchConstraintsChainedWidgets != 1) {
                                int i6 = 0;
                                while (true) {
                                    int i7 = iCountMatchConstraintsChainedWidgets - 1;
                                    if (i6 >= i7) {
                                        break;
                                    }
                                    ConstraintWidget[] constraintWidgetArr2 = this.mMatchConstraintsChainedWidgets;
                                    ConstraintWidget constraintWidget5 = constraintWidgetArr2[i6];
                                    i6++;
                                    ConstraintWidget constraintWidget6 = constraintWidgetArr2[i6];
                                    SolverVariable solverVariable3 = constraintWidget5.mTop.mSolverVariable;
                                    SolverVariable solverVariable4 = constraintWidget5.mBottom.mSolverVariable;
                                    SolverVariable solverVariable5 = constraintWidget6.mTop.mSolverVariable;
                                    SolverVariable solverVariable6 = constraintWidget6.mBottom.mSolverVariable;
                                    ConstraintWidget[] constraintWidgetArr3 = this.mChainEnds;
                                    int i8 = iCountMatchConstraintsChainedWidgets;
                                    SolverVariable solverVariable7 = constraintWidget6 == constraintWidgetArr3[c] ? constraintWidgetArr3[1].mBottom.mSolverVariable : solverVariable6;
                                    int margin4 = constraintWidget5.mTop.getMargin();
                                    if (constraintWidget5.mTop.mTarget != null && constraintWidget5.mTop.mTarget.mOwner.mBottom.mTarget != null && constraintWidget5.mTop.mTarget.mOwner.mBottom.mTarget.mOwner == constraintWidget5) {
                                        margin4 += constraintWidget5.mTop.mTarget.mOwner.mBottom.getMargin();
                                    }
                                    linearSystem3.addGreaterThan(solverVariable3, constraintWidget5.mTop.mTarget.mSolverVariable, margin4, 2);
                                    int margin5 = constraintWidget5.mBottom.getMargin();
                                    if (constraintWidget5.mBottom.mTarget != null && constraintWidget5.mVerticalNextWidget != null) {
                                        margin5 += constraintWidget5.mVerticalNextWidget.mTop.mTarget != null ? constraintWidget5.mVerticalNextWidget.mTop.getMargin() : 0;
                                    }
                                    linearSystem3.addLowerThan(solverVariable4, constraintWidget5.mBottom.mTarget.mSolverVariable, -margin5, 2);
                                    if (i6 == i7) {
                                        int margin6 = constraintWidget6.mTop.getMargin();
                                        if (constraintWidget6.mTop.mTarget != null && constraintWidget6.mTop.mTarget.mOwner.mBottom.mTarget != null && constraintWidget6.mTop.mTarget.mOwner.mBottom.mTarget.mOwner == constraintWidget6) {
                                            margin6 += constraintWidget6.mTop.mTarget.mOwner.mBottom.getMargin();
                                        }
                                        linearSystem3.addGreaterThan(solverVariable5, constraintWidget6.mTop.mTarget.mSolverVariable, margin6, 2);
                                        ConstraintAnchor constraintAnchor = constraintWidget6.mBottom;
                                        ConstraintWidget[] constraintWidgetArr4 = this.mChainEnds;
                                        if (constraintWidget6 == constraintWidgetArr4[3]) {
                                            constraintAnchor = constraintWidgetArr4[1].mBottom;
                                        }
                                        int margin7 = constraintAnchor.getMargin();
                                        if (constraintAnchor.mTarget != null && constraintAnchor.mTarget.mOwner.mTop.mTarget != null && constraintAnchor.mTarget.mOwner.mTop.mTarget.mOwner == constraintWidget6) {
                                            margin7 += constraintAnchor.mTarget.mOwner.mTop.getMargin();
                                        }
                                        i2 = 2;
                                        linearSystem3.addLowerThan(solverVariable7, constraintAnchor.mTarget.mSolverVariable, -margin7, 2);
                                    } else {
                                        i2 = 2;
                                    }
                                    if (constraintWidget.mMatchConstraintMaxHeight > 0) {
                                        linearSystem3.addLowerThan(solverVariable4, solverVariable3, constraintWidget.mMatchConstraintMaxHeight, i2);
                                    }
                                    ArrayRow arrayRowCreateRow = linearSystem.createRow();
                                    arrayRowCreateRow.createRowEqualDimension(constraintWidget5.mVerticalWeight, f, constraintWidget6.mVerticalWeight, solverVariable3, constraintWidget5.mTop.getMargin(), solverVariable4, constraintWidget5.mBottom.getMargin(), solverVariable5, constraintWidget6.mTop.getMargin(), solverVariable7, constraintWidget6.mBottom.getMargin());
                                    linearSystem3.addConstraint(arrayRowCreateRow);
                                    iCountMatchConstraintsChainedWidgets = i8;
                                    c = 3;
                                }
                            } else {
                                ConstraintWidget constraintWidget7 = this.mMatchConstraintsChainedWidgets[i3];
                                int margin8 = constraintWidget7.mTop.getMargin();
                                if (constraintWidget7.mTop.mTarget != null) {
                                    margin8 += constraintWidget7.mTop.mTarget.getMargin();
                                }
                                int margin9 = constraintWidget7.mBottom.getMargin();
                                if (constraintWidget7.mBottom.mTarget != null) {
                                    margin9 += constraintWidget7.mBottom.mTarget.getMargin();
                                }
                                SolverVariable solverVariable8 = constraintWidget.mBottom.mTarget.mSolverVariable;
                                ConstraintWidget[] constraintWidgetArr5 = this.mChainEnds;
                                if (constraintWidget7 == constraintWidgetArr5[3]) {
                                    solverVariable8 = constraintWidgetArr5[1].mBottom.mTarget.mSolverVariable;
                                }
                                if (constraintWidget7.mMatchConstraintDefaultHeight == 1) {
                                    linearSystem3.addGreaterThan(constraintWidget.mTop.mSolverVariable, constraintWidget.mTop.mTarget.mSolverVariable, margin8, 1);
                                    linearSystem3.addLowerThan(constraintWidget.mBottom.mSolverVariable, solverVariable8, -margin9, 1);
                                    linearSystem3.addEquality(constraintWidget.mBottom.mSolverVariable, constraintWidget.mTop.mSolverVariable, constraintWidget.getHeight(), 2);
                                } else {
                                    linearSystem3.addEquality(constraintWidget7.mTop.mSolverVariable, constraintWidget7.mTop.mTarget.mSolverVariable, margin8, 1);
                                    linearSystem3.addEquality(constraintWidget7.mBottom.mSolverVariable, solverVariable8, -margin9, 1);
                                }
                            }
                        } else {
                            ConstraintWidget constraintWidget8 = constraintWidget2;
                            ConstraintWidget constraintWidget9 = null;
                            ConstraintWidget constraintWidget10 = null;
                            boolean z4 = false;
                            while (constraintWidget8 != null) {
                                ConstraintWidget constraintWidget11 = constraintWidget8.mVerticalNextWidget;
                                if (constraintWidget11 == null) {
                                    constraintWidget9 = this.mChainEnds[1];
                                    z4 = USE_SNAPSHOT;
                                }
                                if (z2) {
                                    ConstraintAnchor constraintAnchor2 = constraintWidget8.mTop;
                                    int margin10 = constraintAnchor2.getMargin();
                                    if (constraintWidget10 != null) {
                                        margin10 += constraintWidget10.mBottom.getMargin();
                                    }
                                    int i9 = constraintWidget2 != constraintWidget8 ? 3 : 1;
                                    if (constraintAnchor2.mTarget != null) {
                                        solverVariable = constraintAnchor2.mSolverVariable;
                                        solverVariable2 = constraintAnchor2.mTarget.mSolverVariable;
                                    } else if (constraintWidget8.mBaseline.mTarget != null) {
                                        solverVariable = constraintWidget8.mBaseline.mSolverVariable;
                                        solverVariable2 = constraintWidget8.mBaseline.mTarget.mSolverVariable;
                                        margin10 -= constraintAnchor2.getMargin();
                                    } else {
                                        solverVariable = null;
                                        solverVariable2 = null;
                                    }
                                    if (solverVariable != null && solverVariable2 != null) {
                                        linearSystem3.addGreaterThan(solverVariable, solverVariable2, margin10, i9);
                                    }
                                    if (constraintWidget8.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                        ConstraintAnchor constraintAnchor3 = constraintWidget8.mBottom;
                                        if (constraintWidget8.mMatchConstraintDefaultHeight == 1) {
                                            linearSystem3.addEquality(constraintAnchor3.mSolverVariable, constraintAnchor2.mSolverVariable, Math.max(constraintWidget8.mMatchConstraintMinHeight, constraintWidget8.getHeight()), 3);
                                        } else {
                                            linearSystem3.addGreaterThan(constraintAnchor2.mSolverVariable, constraintAnchor2.mTarget.mSolverVariable, constraintAnchor2.mMargin, 3);
                                            linearSystem3.addLowerThan(constraintAnchor3.mSolverVariable, constraintAnchor2.mSolverVariable, constraintWidget8.mMatchConstraintMinHeight, 3);
                                        }
                                    }
                                } else if (z || !z4 || constraintWidget10 == null) {
                                    if (!z && !z4 && constraintWidget10 == null) {
                                        if (constraintWidget8.mTop.mTarget == null) {
                                            linearSystem3.addEquality(constraintWidget8.mTop.mSolverVariable, constraintWidget8.getDrawY());
                                        } else {
                                            linearSystem3.addEquality(constraintWidget8.mTop.mSolverVariable, constraintWidget.mTop.mTarget.mSolverVariable, constraintWidget8.mTop.getMargin(), 5);
                                        }
                                    } else {
                                        ConstraintAnchor constraintAnchor4 = constraintWidget8.mTop;
                                        ConstraintAnchor constraintAnchor5 = constraintWidget8.mBottom;
                                        int margin11 = constraintAnchor4.getMargin();
                                        int margin12 = constraintAnchor5.getMargin();
                                        linearSystem3.addGreaterThan(constraintAnchor4.mSolverVariable, constraintAnchor4.mTarget.mSolverVariable, margin11, 1);
                                        linearSystem3.addLowerThan(constraintAnchor5.mSolverVariable, constraintAnchor5.mTarget.mSolverVariable, -margin12, 1);
                                        SolverVariable solverVariable9 = constraintAnchor4.mTarget != null ? constraintAnchor4.mTarget.mSolverVariable : null;
                                        if (constraintWidget10 == null) {
                                            solverVariable9 = constraintWidget.mTop.mTarget != null ? constraintWidget.mTop.mTarget.mSolverVariable : null;
                                        }
                                        if (constraintWidget11 == null) {
                                            constraintWidget11 = constraintWidget9.mBottom.mTarget != null ? constraintWidget9.mBottom.mTarget.mOwner : null;
                                        }
                                        ConstraintWidget constraintWidget12 = constraintWidget11;
                                        if (constraintWidget12 != null) {
                                            SolverVariable solverVariable10 = constraintWidget12.mTop.mSolverVariable;
                                            if (z4) {
                                                solverVariable10 = constraintWidget9.mBottom.mTarget != null ? constraintWidget9.mBottom.mTarget.mSolverVariable : null;
                                            }
                                            SolverVariable solverVariable11 = solverVariable10;
                                            if (solverVariable9 != null && solverVariable11 != null) {
                                                linearSystem.addCentering(constraintAnchor4.mSolverVariable, solverVariable9, margin11, 0.5f, solverVariable11, constraintAnchor5.mSolverVariable, margin12, 4);
                                            }
                                        }
                                        constraintWidget11 = constraintWidget12;
                                    }
                                    if (z4) {
                                        constraintWidget11 = null;
                                    }
                                    constraintWidget = constraintWidget;
                                    linearSystem3 = linearSystem3;
                                    constraintWidget8 = constraintWidget11;
                                    constraintWidget10 = constraintWidget8;
                                    z = z;
                                    i4 = i4;
                                    this = this;
                                } else if (constraintWidget8.mBottom.mTarget == null) {
                                    linearSystem3.addEquality(constraintWidget8.mBottom.mSolverVariable, constraintWidget8.getDrawBottom());
                                } else {
                                    linearSystem3.addEquality(constraintWidget8.mBottom.mSolverVariable, constraintWidget9.mBottom.mTarget.mSolverVariable, -constraintWidget8.mBottom.getMargin(), 5);
                                }
                                constraintWidget = constraintWidget;
                                linearSystem3 = linearSystem3;
                                if (z4) {
                                    constraintWidget11 = null;
                                }
                                constraintWidget = constraintWidget;
                                linearSystem3 = linearSystem3;
                                constraintWidget8 = constraintWidget11;
                                constraintWidget10 = constraintWidget8;
                                z = z;
                                i4 = i4;
                                this = this;
                            }
                            ConstraintWidget constraintWidget13 = constraintWidget;
                            i = i4;
                            linearSystem2 = linearSystem3;
                            if (z2) {
                                ConstraintAnchor constraintAnchor6 = constraintWidget2.mTop;
                                ConstraintAnchor constraintAnchor7 = constraintWidget9.mBottom;
                                int margin13 = constraintAnchor6.getMargin();
                                int margin14 = constraintAnchor7.getMargin();
                                SolverVariable solverVariable12 = constraintWidget13.mTop.mTarget != null ? constraintWidget13.mTop.mTarget.mSolverVariable : null;
                                SolverVariable solverVariable13 = constraintWidget9.mBottom.mTarget != null ? constraintWidget9.mBottom.mTarget.mSolverVariable : null;
                                if (solverVariable12 != null && solverVariable13 != null) {
                                    linearSystem2.addLowerThan(constraintAnchor7.mSolverVariable, solverVariable13, -margin14, 1);
                                    linearSystem.addCentering(constraintAnchor6.mSolverVariable, solverVariable12, margin13, constraintWidget13.mVerticalBiasPercent, solverVariable13, constraintAnchor7.mSolverVariable, margin14, 4);
                                }
                            }
                        }
                    } else {
                        Optimizer.applyDirectResolutionVerticalChain(this, linearSystem3, iCountMatchConstraintsChainedWidgets, constraintWidget);
                    }
                }
                i = i4;
                linearSystem2 = linearSystem3;
            } else {
                i = i4;
                linearSystem2 = linearSystem3;
            }
            i4 = i + 1;
            linearSystem3 = linearSystem2;
            i3 = 0;
        }
    }

    public void updateChildrenFromSolver(LinearSystem linearSystem, int i, boolean[] zArr) {
        zArr[2] = false;
        updateFromSolver(linearSystem, i);
        int size = this.mChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i2);
            constraintWidget.updateFromSolver(linearSystem, i);
            if (constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getWidth() < constraintWidget.getWrapWidth()) {
                zArr[2] = USE_SNAPSHOT;
            }
            if (constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getHeight() < constraintWidget.getWrapHeight()) {
                zArr[2] = USE_SNAPSHOT;
            }
        }
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        this.mPaddingLeft = i;
        this.mPaddingTop = i2;
        this.mPaddingRight = i3;
        this.mPaddingBottom = i4;
    }

    /* JADX WARN: Code duplicated, block: B:109:0x0216 A[PHI: r0 r12
      0x0216: PHI (r0v30 boolean) = (r0v29 boolean), (r0v32 boolean), (r0v32 boolean), (r0v32 boolean) binds: [B:96:0x01e1, B:104:0x0200, B:105:0x0202, B:107:0x0208] A[DONT_GENERATE, DONT_INLINE]
      0x0216: PHI (r12v7 boolean) = (r12v6 boolean), (r12v9 boolean), (r12v9 boolean), (r12v9 boolean) binds: [B:96:0x01e1, B:104:0x0200, B:105:0x0202, B:107:0x0208] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.support.constraint.solver.widgets.WidgetContainer
    public void layout() {
        boolean z;
        boolean z2;
        int i = this.mX;
        int i2 = this.mY;
        int iMax = Math.max(0, getWidth());
        int iMax2 = Math.max(0, getHeight());
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        if (this.mParent != null) {
            if (this.mSnapshot == null) {
                this.mSnapshot = new Snapshot(this);
            }
            this.mSnapshot.updateFrom(this);
            setX(this.mPaddingLeft);
            setY(this.mPaddingTop);
            resetAnchors();
            resetSolverVariables(this.mSystem.getCache());
        } else {
            this.mX = 0;
            this.mY = 0;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.mVerticalDimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.mHorizontalDimensionBehaviour;
        char c = 2;
        if (this.mOptimizationLevel == 2 && (this.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || this.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
            findWrapSize(this.mChildren, this.flags);
            z = this.flags[0];
            if (iMax > 0 && iMax2 > 0 && (this.mWrapWidth > iMax || this.mWrapHeight > iMax2)) {
                z = false;
            }
            if (z) {
                if (this.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.mHorizontalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    if (iMax > 0 && iMax < this.mWrapWidth) {
                        this.mWidthMeasuredTooSmall = USE_SNAPSHOT;
                        setWidth(iMax);
                    } else {
                        setWidth(Math.max(this.mMinWidth, this.mWrapWidth));
                    }
                }
                if (this.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.mVerticalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    if (iMax2 > 0 && iMax2 < this.mWrapHeight) {
                        this.mHeightMeasuredTooSmall = USE_SNAPSHOT;
                        setHeight(iMax2);
                    } else {
                        setHeight(Math.max(this.mMinHeight, this.mWrapHeight));
                    }
                }
            }
        } else {
            z = false;
        }
        resetChains();
        int size = this.mChildren.size();
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i3);
            if (constraintWidget instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget).layout();
            }
        }
        boolean z3 = z;
        int i4 = 0;
        boolean zAddChildrenToSolver = USE_SNAPSHOT;
        while (zAddChildrenToSolver) {
            int i5 = i4 + 1;
            try {
                this.mSystem.reset();
                zAddChildrenToSolver = addChildrenToSolver(this.mSystem, Integer.MAX_VALUE);
                if (zAddChildrenToSolver) {
                    this.mSystem.minimize();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (zAddChildrenToSolver) {
                updateChildrenFromSolver(this.mSystem, Integer.MAX_VALUE, this.flags);
            } else {
                updateFromSolver(this.mSystem, Integer.MAX_VALUE);
                for (int i6 = 0; i6 < size; i6++) {
                    ConstraintWidget constraintWidget2 = this.mChildren.get(i6);
                    if (constraintWidget2.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget2.getWidth() < constraintWidget2.getWrapWidth()) {
                        this.flags[c] = USE_SNAPSHOT;
                        break;
                    } else {
                        if (constraintWidget2.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget2.getHeight() < constraintWidget2.getWrapHeight()) {
                            this.flags[c] = USE_SNAPSHOT;
                            break;
                        }
                    }
                }
            }
            if (i5 >= 8 || !this.flags[c]) {
                z2 = false;
            } else {
                int iMax3 = 0;
                int iMax4 = 0;
                for (int i7 = 0; i7 < size; i7++) {
                    ConstraintWidget constraintWidget3 = this.mChildren.get(i7);
                    iMax3 = Math.max(iMax3, constraintWidget3.mX + constraintWidget3.getWidth());
                    iMax4 = Math.max(iMax4, constraintWidget3.mY + constraintWidget3.getHeight());
                }
                int iMax5 = Math.max(this.mMinWidth, iMax3);
                int iMax6 = Math.max(this.mMinHeight, iMax4);
                if (dimensionBehaviour2 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || getWidth() >= iMax5) {
                    z2 = false;
                } else {
                    setWidth(iMax5);
                    this.mHorizontalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    z2 = USE_SNAPSHOT;
                    z3 = USE_SNAPSHOT;
                }
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && getHeight() < iMax6) {
                    setHeight(iMax6);
                    this.mVerticalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    z2 = USE_SNAPSHOT;
                    z3 = USE_SNAPSHOT;
                }
            }
            int iMax7 = Math.max(this.mMinWidth, getWidth());
            if (iMax7 > getWidth()) {
                setWidth(iMax7);
                this.mHorizontalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                z2 = USE_SNAPSHOT;
                z3 = USE_SNAPSHOT;
            }
            int iMax8 = Math.max(this.mMinHeight, getHeight());
            if (iMax8 > getHeight()) {
                setHeight(iMax8);
                this.mVerticalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                z2 = USE_SNAPSHOT;
                z3 = USE_SNAPSHOT;
            }
            if (z3) {
                zAddChildrenToSolver = z2;
            } else {
                if (this.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && iMax > 0 && getWidth() > iMax) {
                    this.mWidthMeasuredTooSmall = USE_SNAPSHOT;
                    this.mHorizontalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    setWidth(iMax);
                    z2 = USE_SNAPSHOT;
                    z3 = USE_SNAPSHOT;
                }
                if (this.mVerticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || iMax2 <= 0 || getHeight() <= iMax2) {
                    zAddChildrenToSolver = z2;
                } else {
                    this.mHeightMeasuredTooSmall = USE_SNAPSHOT;
                    this.mVerticalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    setHeight(iMax2);
                    z3 = USE_SNAPSHOT;
                    zAddChildrenToSolver = USE_SNAPSHOT;
                }
            }
            i4 = i5;
            c = 2;
        }
        if (this.mParent != null) {
            int iMax9 = Math.max(this.mMinWidth, getWidth());
            int iMax10 = Math.max(this.mMinHeight, getHeight());
            this.mSnapshot.applyTo(this);
            setWidth(iMax9 + this.mPaddingLeft + this.mPaddingRight);
            setHeight(iMax10 + this.mPaddingTop + this.mPaddingBottom);
        } else {
            this.mX = i;
            this.mY = i2;
        }
        if (z3) {
            this.mHorizontalDimensionBehaviour = dimensionBehaviour2;
            this.mVerticalDimensionBehaviour = dimensionBehaviour;
        }
        resetSolverVariables(this.mSystem.getCache());
        if (this == getRootConstraintContainer()) {
            updateDrawPosition();
        }
    }

    static int setGroup(ConstraintAnchor constraintAnchor, int i) {
        int i2 = constraintAnchor.mGroup;
        if (constraintAnchor.mOwner.getParent() == null) {
            return i;
        }
        if (i2 <= i) {
            return i2;
        }
        constraintAnchor.mGroup = i;
        ConstraintAnchor opposite = constraintAnchor.getOpposite();
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (opposite != null) {
            i = setGroup(opposite, i);
        }
        if (constraintAnchor2 != null) {
            i = setGroup(constraintAnchor2, i);
        }
        if (opposite != null) {
            i = setGroup(opposite, i);
        }
        constraintAnchor.mGroup = i;
        return i;
    }

    public int layoutFindGroupsSimple() {
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            constraintWidget.mLeft.mGroup = 0;
            constraintWidget.mRight.mGroup = 0;
            constraintWidget.mTop.mGroup = 1;
            constraintWidget.mBottom.mGroup = 1;
            constraintWidget.mBaseline.mGroup = 1;
        }
        return 2;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 4521. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public void findHorizontalWrapRecursive(android.support.constraint.solver.widgets.ConstraintWidget r8, boolean[] r9) {
        /*
            Method dump skipped, instruction units count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidgetContainer.findHorizontalWrapRecursive(android.support.constraint.solver.widgets.ConstraintWidget, boolean[]):void");
    }

    /* JADX WARN: Code duplicated, block: B:124:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:92:0x0178  */
    public void findVerticalWrapRecursive(ConstraintWidget constraintWidget, boolean[] zArr) {
        int margin;
        ConstraintWidget owner;
        int optimizerWrapHeight;
        int optimizerWrapHeight2;
        boolean z;
        int relativeEnd;
        boolean z2 = false;
        y = 0;
        int y = 0;
        z2 = false;
        z2 = false;
        z2 = false;
        z2 = false;
        if (constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mHorizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mDimensionRatio > 0.0f) {
            zArr[0] = false;
            return;
        }
        int optimizerWrapHeight3 = constraintWidget.getOptimizerWrapHeight();
        constraintWidget.mVerticalWrapVisited = USE_SNAPSHOT;
        if (constraintWidget instanceof Guideline) {
            Guideline guideline = (Guideline) constraintWidget;
            if (guideline.getOrientation() == 0) {
                if (guideline.getRelativeBegin() != -1) {
                    y = guideline.getRelativeBegin();
                } else if (guideline.getRelativeEnd() != -1) {
                    relativeEnd = guideline.getRelativeEnd();
                }
                relativeEnd = 0;
            } else {
                relativeEnd = optimizerWrapHeight3;
                y = relativeEnd;
            }
            optimizerWrapHeight3 = relativeEnd;
        } else if (constraintWidget.mBaseline.mTarget == null && constraintWidget.mTop.mTarget == null && constraintWidget.mBottom.mTarget == null) {
            y = optimizerWrapHeight3 + constraintWidget.getY();
        } else {
            if (constraintWidget.mBottom.mTarget != null && constraintWidget.mTop.mTarget != null && (constraintWidget.mBottom.mTarget == constraintWidget.mTop.mTarget || (constraintWidget.mBottom.mTarget.mOwner == constraintWidget.mTop.mTarget.mOwner && constraintWidget.mBottom.mTarget.mOwner != constraintWidget.mParent))) {
                zArr[0] = false;
                return;
            }
            if (constraintWidget.mBaseline.isConnected()) {
                ConstraintWidget owner2 = constraintWidget.mBaseline.mTarget.getOwner();
                if (!owner2.mVerticalWrapVisited) {
                    findVerticalWrapRecursive(owner2, zArr);
                }
                int iMax = Math.max((owner2.mDistToTop - owner2.mHeight) + optimizerWrapHeight3, optimizerWrapHeight3);
                int iMax2 = Math.max((owner2.mDistToBottom - owner2.mHeight) + optimizerWrapHeight3, optimizerWrapHeight3);
                if (constraintWidget.getVisibility() == 8) {
                    iMax -= constraintWidget.mHeight;
                    iMax2 -= constraintWidget.mHeight;
                }
                constraintWidget.mDistToTop = iMax;
                constraintWidget.mDistToBottom = iMax2;
                return;
            }
            ConstraintWidget owner3 = null;
            if (constraintWidget.mTop.isConnected()) {
                owner = constraintWidget.mTop.mTarget.getOwner();
                margin = constraintWidget.mTop.getMargin() + optimizerWrapHeight3;
                if (!owner.isRoot() && !owner.mVerticalWrapVisited) {
                    findVerticalWrapRecursive(owner, zArr);
                }
            } else {
                margin = optimizerWrapHeight3;
                owner = null;
            }
            if (constraintWidget.mBottom.isConnected()) {
                owner3 = constraintWidget.mBottom.mTarget.getOwner();
                optimizerWrapHeight3 += constraintWidget.mBottom.getMargin();
                if (!owner3.isRoot() && !owner3.mVerticalWrapVisited) {
                    findVerticalWrapRecursive(owner3, zArr);
                }
            }
            if (constraintWidget.mTop.mTarget != null && !owner.isRoot()) {
                if (constraintWidget.mTop.mTarget.getType() == ConstraintAnchor.Type.TOP) {
                    optimizerWrapHeight2 = owner.mDistToTop - owner.getOptimizerWrapHeight();
                } else if (constraintWidget.mTop.mTarget.getType() == ConstraintAnchor.Type.BOTTOM) {
                    optimizerWrapHeight2 = owner.mDistToTop;
                } else {
                    if (owner.mTopHasCentered && (owner.mTop.mTarget == null || owner.mTop.mTarget.mOwner == constraintWidget || owner.mBottom.mTarget == null || owner.mBottom.mTarget.mOwner == constraintWidget || owner.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) {
                        z = false;
                    } else {
                        z = USE_SNAPSHOT;
                    }
                    constraintWidget.mTopHasCentered = z;
                    if (constraintWidget.mTopHasCentered && (owner.mBottom.mTarget == null || owner.mBottom.mTarget.mOwner != constraintWidget)) {
                        margin += margin - owner.mDistToTop;
                    }
                }
                margin += optimizerWrapHeight2;
                if (owner.mTopHasCentered) {
                    z = USE_SNAPSHOT;
                } else {
                    z = USE_SNAPSHOT;
                }
                constraintWidget.mTopHasCentered = z;
                if (constraintWidget.mTopHasCentered) {
                    margin += margin - owner.mDistToTop;
                }
            }
            if (constraintWidget.mBottom.mTarget != null && !owner3.isRoot()) {
                if (constraintWidget.mBottom.mTarget.getType() == ConstraintAnchor.Type.BOTTOM) {
                    optimizerWrapHeight = owner3.mDistToBottom - owner3.getOptimizerWrapHeight();
                } else if (constraintWidget.mBottom.mTarget.getType() == ConstraintAnchor.Type.TOP) {
                    optimizerWrapHeight = owner3.mDistToBottom;
                } else {
                    if (owner3.mBottomHasCentered || (owner3.mTop.mTarget != null && owner3.mTop.mTarget.mOwner != constraintWidget && owner3.mBottom.mTarget != null && owner3.mBottom.mTarget.mOwner != constraintWidget && owner3.mVerticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) {
                        z2 = USE_SNAPSHOT;
                    }
                    constraintWidget.mBottomHasCentered = z2;
                    if (constraintWidget.mBottomHasCentered && (owner3.mTop.mTarget == null || owner3.mTop.mTarget.mOwner != constraintWidget)) {
                        optimizerWrapHeight3 += optimizerWrapHeight3 - owner3.mDistToBottom;
                    }
                }
                optimizerWrapHeight3 += optimizerWrapHeight;
                if (owner3.mBottomHasCentered) {
                    z2 = USE_SNAPSHOT;
                } else {
                    z2 = USE_SNAPSHOT;
                }
                constraintWidget.mBottomHasCentered = z2;
                if (constraintWidget.mBottomHasCentered) {
                    optimizerWrapHeight3 += optimizerWrapHeight3 - owner3.mDistToBottom;
                }
            }
            y = margin;
        }
        if (constraintWidget.getVisibility() == 8) {
            y -= constraintWidget.mHeight;
            optimizerWrapHeight3 -= constraintWidget.mHeight;
        }
        constraintWidget.mDistToTop = y;
        constraintWidget.mDistToBottom = optimizerWrapHeight3;
    }

    public void findWrapSize(ArrayList<ConstraintWidget> arrayList, boolean[] zArr) {
        int size = arrayList.size();
        char c = 0;
        zArr[0] = USE_SNAPSHOT;
        int i = 0;
        int iMax = 0;
        int iMax2 = 0;
        int iMax3 = 0;
        int iMax4 = 0;
        int iMax5 = 0;
        int iMax6 = 0;
        while (i < size) {
            ConstraintWidget constraintWidget = arrayList.get(i);
            if (!constraintWidget.isRoot()) {
                if (!constraintWidget.mHorizontalWrapVisited) {
                    findHorizontalWrapRecursive(constraintWidget, zArr);
                }
                if (!constraintWidget.mVerticalWrapVisited) {
                    findVerticalWrapRecursive(constraintWidget, zArr);
                }
                if (!zArr[c]) {
                    return;
                }
                int width = (constraintWidget.mDistToLeft + constraintWidget.mDistToRight) - constraintWidget.getWidth();
                int height = (constraintWidget.mDistToTop + constraintWidget.mDistToBottom) - constraintWidget.getHeight();
                if (constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                    width = constraintWidget.mRight.mMargin + constraintWidget.getWidth() + constraintWidget.mLeft.mMargin;
                }
                if (constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                    height = constraintWidget.mBottom.mMargin + constraintWidget.getHeight() + constraintWidget.mTop.mMargin;
                }
                if (constraintWidget.getVisibility() == 8) {
                    width = 0;
                    height = 0;
                }
                iMax = Math.max(iMax, constraintWidget.mDistToLeft);
                iMax2 = Math.max(iMax2, constraintWidget.mDistToRight);
                iMax5 = Math.max(iMax5, constraintWidget.mDistToBottom);
                iMax4 = Math.max(iMax4, constraintWidget.mDistToTop);
                iMax3 = Math.max(iMax3, width);
                iMax6 = Math.max(iMax6, height);
            }
            i++;
            c = 0;
        }
        this.mWrapWidth = Math.max(this.mMinWidth, Math.max(Math.max(iMax, iMax2), iMax3));
        this.mWrapHeight = Math.max(this.mMinHeight, Math.max(Math.max(iMax4, iMax5), iMax6));
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget2 = arrayList.get(i2);
            constraintWidget2.mHorizontalWrapVisited = false;
            constraintWidget2.mVerticalWrapVisited = false;
            constraintWidget2.mLeftHasCentered = false;
            constraintWidget2.mRightHasCentered = false;
            constraintWidget2.mTopHasCentered = false;
            constraintWidget2.mBottomHasCentered = false;
        }
    }

    public int layoutFindGroups() {
        int i = 2;
        ConstraintAnchor.Type[] typeArr = {ConstraintAnchor.Type.LEFT, ConstraintAnchor.Type.RIGHT, ConstraintAnchor.Type.TOP, ConstraintAnchor.Type.BASELINE, ConstraintAnchor.Type.BOTTOM};
        int size = this.mChildren.size();
        int i2 = 1;
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i3);
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            if (constraintAnchor.mTarget != null) {
                if (setGroup(constraintAnchor, i2) == i2) {
                    i2++;
                }
            } else {
                constraintAnchor.mGroup = Integer.MAX_VALUE;
            }
            ConstraintAnchor constraintAnchor2 = constraintWidget.mTop;
            if (constraintAnchor2.mTarget != null) {
                if (setGroup(constraintAnchor2, i2) == i2) {
                    i2++;
                }
            } else {
                constraintAnchor2.mGroup = Integer.MAX_VALUE;
            }
            ConstraintAnchor constraintAnchor3 = constraintWidget.mRight;
            if (constraintAnchor3.mTarget != null) {
                if (setGroup(constraintAnchor3, i2) == i2) {
                    i2++;
                }
            } else {
                constraintAnchor3.mGroup = Integer.MAX_VALUE;
            }
            ConstraintAnchor constraintAnchor4 = constraintWidget.mBottom;
            if (constraintAnchor4.mTarget != null) {
                if (setGroup(constraintAnchor4, i2) == i2) {
                    i2++;
                }
            } else {
                constraintAnchor4.mGroup = Integer.MAX_VALUE;
            }
            ConstraintAnchor constraintAnchor5 = constraintWidget.mBaseline;
            if (constraintAnchor5.mTarget != null) {
                if (setGroup(constraintAnchor5, i2) == i2) {
                    i2++;
                }
            } else {
                constraintAnchor5.mGroup = Integer.MAX_VALUE;
            }
        }
        boolean z = USE_SNAPSHOT;
        while (z) {
            z = false;
            int i4 = 0;
            while (i4 < size) {
                ConstraintWidget constraintWidget2 = this.mChildren.get(i4);
                int i5 = 0;
                while (i5 < 5) {
                    ConstraintAnchor constraintAnchor6 = null;
                    int i6 = AnonymousClass2.$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type[typeArr[i5].ordinal()];
                    if (i6 == 1) {
                        constraintAnchor6 = constraintWidget2.mLeft;
                    } else if (i6 == i) {
                        constraintAnchor6 = constraintWidget2.mTop;
                    } else if (i6 == 3) {
                        constraintAnchor6 = constraintWidget2.mRight;
                    } else if (i6 == 4) {
                        constraintAnchor6 = constraintWidget2.mBottom;
                    } else if (i6 == 5) {
                        constraintAnchor6 = constraintWidget2.mBaseline;
                    }
                    ConstraintAnchor constraintAnchor7 = constraintAnchor6.mTarget;
                    if (constraintAnchor7 != null) {
                        if (constraintAnchor7.mOwner.getParent() != null && constraintAnchor7.mGroup != constraintAnchor6.mGroup) {
                            int i7 = constraintAnchor6.mGroup > constraintAnchor7.mGroup ? constraintAnchor7.mGroup : constraintAnchor6.mGroup;
                            constraintAnchor6.mGroup = i7;
                            constraintAnchor7.mGroup = i7;
                            z = USE_SNAPSHOT;
                        }
                        ConstraintAnchor opposite = constraintAnchor7.getOpposite();
                        if (opposite != null && opposite.mGroup != constraintAnchor6.mGroup) {
                            int i8 = constraintAnchor6.mGroup > opposite.mGroup ? opposite.mGroup : constraintAnchor6.mGroup;
                            constraintAnchor6.mGroup = i8;
                            opposite.mGroup = i8;
                            z = USE_SNAPSHOT;
                        }
                    }
                    i5++;
                    i = 2;
                }
                i4++;
                i = 2;
            }
        }
        int[] iArr = new int[(this.mChildren.size() * 5) + 1];
        Arrays.fill(iArr, -1);
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget3 = this.mChildren.get(i10);
            ConstraintAnchor constraintAnchor8 = constraintWidget3.mLeft;
            if (constraintAnchor8.mGroup != Integer.MAX_VALUE) {
                int i11 = constraintAnchor8.mGroup;
                if (iArr[i11] == -1) {
                    iArr[i11] = i9;
                    i9++;
                }
                constraintAnchor8.mGroup = iArr[i11];
            }
            ConstraintAnchor constraintAnchor9 = constraintWidget3.mTop;
            if (constraintAnchor9.mGroup != Integer.MAX_VALUE) {
                int i12 = constraintAnchor9.mGroup;
                if (iArr[i12] == -1) {
                    iArr[i12] = i9;
                    i9++;
                }
                constraintAnchor9.mGroup = iArr[i12];
            }
            ConstraintAnchor constraintAnchor10 = constraintWidget3.mRight;
            if (constraintAnchor10.mGroup != Integer.MAX_VALUE) {
                int i13 = constraintAnchor10.mGroup;
                if (iArr[i13] == -1) {
                    iArr[i13] = i9;
                    i9++;
                }
                constraintAnchor10.mGroup = iArr[i13];
            }
            ConstraintAnchor constraintAnchor11 = constraintWidget3.mBottom;
            if (constraintAnchor11.mGroup != Integer.MAX_VALUE) {
                int i14 = constraintAnchor11.mGroup;
                if (iArr[i14] == -1) {
                    iArr[i14] = i9;
                    i9++;
                }
                constraintAnchor11.mGroup = iArr[i14];
            }
            ConstraintAnchor constraintAnchor12 = constraintWidget3.mBaseline;
            if (constraintAnchor12.mGroup != Integer.MAX_VALUE) {
                int i15 = constraintAnchor12.mGroup;
                if (iArr[i15] == -1) {
                    iArr[i15] = i9;
                    i9++;
                }
                constraintAnchor12.mGroup = iArr[i15];
            }
        }
        return i9;
    }

    /* JADX INFO: renamed from: android.support.constraint.solver.widgets.ConstraintWidgetContainer$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
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
        }
    }

    public void layoutWithGroup(int i) {
        int i2 = this.mX;
        int i3 = this.mY;
        if (this.mParent != null) {
            if (this.mSnapshot == null) {
                this.mSnapshot = new Snapshot(this);
            }
            this.mSnapshot.updateFrom(this);
            this.mX = 0;
            this.mY = 0;
            resetAnchors();
            resetSolverVariables(this.mSystem.getCache());
        } else {
            this.mX = 0;
            this.mY = 0;
        }
        int size = this.mChildren.size();
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i4);
            if (constraintWidget instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget).layout();
            }
        }
        this.mLeft.mGroup = 0;
        this.mRight.mGroup = 0;
        this.mTop.mGroup = 1;
        this.mBottom.mGroup = 1;
        this.mSystem.reset();
        for (int i5 = 0; i5 < i; i5++) {
            try {
                addToSolver(this.mSystem, i5);
                this.mSystem.minimize();
                updateFromSolver(this.mSystem, i5);
            } catch (Exception e) {
                e.printStackTrace();
            }
            updateFromSolver(this.mSystem, -2);
        }
        if (this.mParent != null) {
            int width = getWidth();
            int height = getHeight();
            this.mSnapshot.applyTo(this);
            setWidth(width);
            setHeight(height);
        } else {
            this.mX = i2;
            this.mY = i3;
        }
        if (this == getRootConstraintContainer()) {
            updateDrawPosition();
        }
    }

    public ArrayList<Guideline> getVerticalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList<>();
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 1) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    public ArrayList<Guideline> getHorizontalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList<>();
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 0) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    public LinearSystem getSystem() {
        return this.mSystem;
    }

    private void resetChains() {
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
    }

    void addChain(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            while (constraintWidget.mLeft.mTarget != null && constraintWidget.mLeft.mTarget.mOwner.mRight.mTarget != null && constraintWidget.mLeft.mTarget.mOwner.mRight.mTarget == constraintWidget.mLeft && constraintWidget.mLeft.mTarget.mOwner != constraintWidget) {
                constraintWidget = constraintWidget.mLeft.mTarget.mOwner;
            }
            addHorizontalChain(constraintWidget);
            return;
        }
        if (i == 1) {
            while (constraintWidget.mTop.mTarget != null && constraintWidget.mTop.mTarget.mOwner.mBottom.mTarget != null && constraintWidget.mTop.mTarget.mOwner.mBottom.mTarget == constraintWidget.mTop && constraintWidget.mTop.mTarget.mOwner != constraintWidget) {
                constraintWidget = constraintWidget.mTop.mTarget.mOwner;
            }
            addVerticalChain(constraintWidget);
        }
    }

    private void addHorizontalChain(ConstraintWidget constraintWidget) {
        int i = 0;
        while (true) {
            int i2 = this.mHorizontalChainsSize;
            if (i < i2) {
                if (this.mHorizontalChainsArray[i] == constraintWidget) {
                    return;
                } else {
                    i++;
                }
            } else {
                int i3 = i2 + 1;
                ConstraintWidget[] constraintWidgetArr = this.mHorizontalChainsArray;
                if (i3 >= constraintWidgetArr.length) {
                    this.mHorizontalChainsArray = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
                }
                ConstraintWidget[] constraintWidgetArr2 = this.mHorizontalChainsArray;
                int i4 = this.mHorizontalChainsSize;
                constraintWidgetArr2[i4] = constraintWidget;
                this.mHorizontalChainsSize = i4 + 1;
                return;
            }
        }
    }

    private void addVerticalChain(ConstraintWidget constraintWidget) {
        int i = 0;
        while (true) {
            int i2 = this.mVerticalChainsSize;
            if (i < i2) {
                if (this.mVerticalChainsArray[i] == constraintWidget) {
                    return;
                } else {
                    i++;
                }
            } else {
                int i3 = i2 + 1;
                ConstraintWidget[] constraintWidgetArr = this.mVerticalChainsArray;
                if (i3 >= constraintWidgetArr.length) {
                    this.mVerticalChainsArray = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
                }
                ConstraintWidget[] constraintWidgetArr2 = this.mVerticalChainsArray;
                int i4 = this.mVerticalChainsSize;
                constraintWidgetArr2[i4] = constraintWidget;
                this.mVerticalChainsSize = i4 + 1;
                return;
            }
        }
    }

    private int countMatchConstraintsChainedWidgets(LinearSystem linearSystem, ConstraintWidget[] constraintWidgetArr, ConstraintWidget constraintWidget, int i, boolean[] zArr) {
        int i2;
        char c;
        char c2;
        zArr[0] = USE_SNAPSHOT;
        zArr[1] = false;
        ConstraintWidget constraintWidget2 = null;
        constraintWidgetArr[0] = null;
        constraintWidgetArr[2] = null;
        constraintWidgetArr[1] = null;
        constraintWidgetArr[3] = null;
        float f = 0.0f;
        int i3 = 5;
        if (i == 0) {
            boolean z = (constraintWidget.mLeft.mTarget == null || constraintWidget.mLeft.mTarget.mOwner == this) ? USE_SNAPSHOT : false;
            constraintWidget.mHorizontalNextWidget = null;
            ConstraintWidget constraintWidget3 = constraintWidget.getVisibility() != 8 ? constraintWidget : null;
            ConstraintWidget constraintWidget4 = constraintWidget;
            ConstraintWidget constraintWidget5 = null;
            ConstraintWidget constraintWidget6 = constraintWidget3;
            i2 = 0;
            while (constraintWidget4.mRight.mTarget != null) {
                constraintWidget4.mHorizontalNextWidget = constraintWidget2;
                if (constraintWidget4.getVisibility() != 8) {
                    if (constraintWidget3 == null) {
                        constraintWidget3 = constraintWidget4;
                    }
                    if (constraintWidget6 != null && constraintWidget6 != constraintWidget4) {
                        constraintWidget6.mHorizontalNextWidget = constraintWidget4;
                    }
                    constraintWidget6 = constraintWidget4;
                } else {
                    linearSystem.addEquality(constraintWidget4.mLeft.mSolverVariable, constraintWidget4.mLeft.mTarget.mSolverVariable, 0, 5);
                    linearSystem.addEquality(constraintWidget4.mRight.mSolverVariable, constraintWidget4.mLeft.mSolverVariable, 0, 5);
                }
                if (constraintWidget4.getVisibility() != 8 && constraintWidget4.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    if (constraintWidget4.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        zArr[0] = false;
                    }
                    if (constraintWidget4.mDimensionRatio <= f) {
                        zArr[0] = false;
                        int i4 = i2 + 1;
                        ConstraintWidget[] constraintWidgetArr2 = this.mMatchConstraintsChainedWidgets;
                        if (i4 >= constraintWidgetArr2.length) {
                            this.mMatchConstraintsChainedWidgets = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr2, constraintWidgetArr2.length * 2);
                        }
                        this.mMatchConstraintsChainedWidgets[i2] = constraintWidget4;
                        i2 = i4;
                    }
                }
                if (constraintWidget4.mRight.mTarget.mOwner.mLeft.mTarget == null || constraintWidget4.mRight.mTarget.mOwner.mLeft.mTarget.mOwner != constraintWidget4 || constraintWidget4.mRight.mTarget.mOwner == constraintWidget4) {
                    break;
                }
                constraintWidget5 = constraintWidget4.mRight.mTarget.mOwner;
                constraintWidget4 = constraintWidget5;
                constraintWidget2 = null;
                f = 0.0f;
            }
            if (constraintWidget4.mRight.mTarget != null && constraintWidget4.mRight.mTarget.mOwner != this) {
                z = false;
            }
            if (constraintWidget.mLeft.mTarget == null || constraintWidget5.mRight.mTarget == null) {
                c2 = 1;
                zArr[1] = USE_SNAPSHOT;
            } else {
                c2 = 1;
            }
            constraintWidget.mHorizontalChainFixedPosition = z;
            constraintWidget5.mHorizontalNextWidget = null;
            constraintWidgetArr[0] = constraintWidget;
            constraintWidgetArr[2] = constraintWidget3;
            constraintWidgetArr[c2] = constraintWidget5;
            constraintWidgetArr[3] = constraintWidget6;
        } else {
            boolean z2 = (constraintWidget.mTop.mTarget == null || constraintWidget.mTop.mTarget.mOwner == this) ? USE_SNAPSHOT : false;
            ConstraintWidget constraintWidget7 = null;
            constraintWidget.mVerticalNextWidget = null;
            ConstraintWidget constraintWidget8 = constraintWidget;
            ConstraintWidget constraintWidget9 = null;
            ConstraintWidget constraintWidget10 = constraintWidget.getVisibility() != 8 ? constraintWidget : null;
            ConstraintWidget constraintWidget11 = constraintWidget10;
            int i5 = 0;
            while (constraintWidget8.mBottom.mTarget != null) {
                constraintWidget8.mVerticalNextWidget = constraintWidget7;
                if (constraintWidget8.getVisibility() != 8) {
                    if (constraintWidget10 == null) {
                        constraintWidget10 = constraintWidget8;
                    }
                    if (constraintWidget11 != null && constraintWidget11 != constraintWidget8) {
                        constraintWidget11.mVerticalNextWidget = constraintWidget8;
                    }
                    constraintWidget11 = constraintWidget8;
                } else {
                    linearSystem.addEquality(constraintWidget8.mTop.mSolverVariable, constraintWidget8.mTop.mTarget.mSolverVariable, 0, i3);
                    linearSystem.addEquality(constraintWidget8.mBottom.mSolverVariable, constraintWidget8.mTop.mSolverVariable, 0, i3);
                }
                if (constraintWidget8.getVisibility() != 8 && constraintWidget8.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    if (constraintWidget8.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        zArr[0] = false;
                    }
                    if (constraintWidget8.mDimensionRatio <= 0.0f) {
                        zArr[0] = false;
                        int i6 = i5 + 1;
                        ConstraintWidget[] constraintWidgetArr3 = this.mMatchConstraintsChainedWidgets;
                        if (i6 >= constraintWidgetArr3.length) {
                            this.mMatchConstraintsChainedWidgets = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr3, constraintWidgetArr3.length * 2);
                        }
                        this.mMatchConstraintsChainedWidgets[i5] = constraintWidget8;
                        i5 = i6;
                    }
                }
                if (constraintWidget8.mBottom.mTarget.mOwner.mTop.mTarget == null || constraintWidget8.mBottom.mTarget.mOwner.mTop.mTarget.mOwner != constraintWidget8 || constraintWidget8.mBottom.mTarget.mOwner == constraintWidget8) {
                    break;
                }
                constraintWidget8 = constraintWidget8.mBottom.mTarget.mOwner;
                constraintWidget9 = constraintWidget8;
                constraintWidget7 = null;
                i3 = 5;
            }
            i2 = i5;
            if (constraintWidget8.mBottom.mTarget != null && constraintWidget8.mBottom.mTarget.mOwner != this) {
                z2 = false;
            }
            if (constraintWidget.mTop.mTarget == null || constraintWidget9.mBottom.mTarget == null) {
                c = 1;
                zArr[1] = USE_SNAPSHOT;
            } else {
                c = 1;
            }
            constraintWidget.mVerticalChainFixedPosition = z2;
            constraintWidget9.mVerticalNextWidget = null;
            constraintWidgetArr[0] = constraintWidget;
            constraintWidgetArr[2] = constraintWidget10;
            constraintWidgetArr[c] = constraintWidget9;
            constraintWidgetArr[3] = constraintWidget11;
        }
        return i2;
    }
}
