.class public interface abstract annotation Landroid/databinding/BindingBuildInfo;
.super Ljava/lang/Object;
.source "BindingBuildInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/databinding/BindingBuildInfo;
        enableDebugLogs = false
        printEncodedError = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract buildId()Ljava/lang/String;
.end method

.method public abstract enableDebugLogs()Z
.end method

.method public abstract exportClassListTo()Ljava/lang/String;
.end method

.method public abstract isLibrary()Z
.end method

.method public abstract layoutInfoDir()Ljava/lang/String;
.end method

.method public abstract minSdk()I
.end method

.method public abstract modulePackage()Ljava/lang/String;
.end method

.method public abstract printEncodedError()Z
.end method

.method public abstract sdkRoot()Ljava/lang/String;
.end method
