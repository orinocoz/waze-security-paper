.class public interface abstract Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraCallbacks"
.end annotation


# virtual methods
.method public abstract onCapture(Z)V
.end method

.method public abstract onError()V
.end method

.method public abstract onSize(Landroid/hardware/Camera$Size;)V
.end method
