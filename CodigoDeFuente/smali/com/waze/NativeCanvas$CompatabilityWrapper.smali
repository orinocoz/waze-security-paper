.class final Lcom/waze/NativeCanvas$CompatabilityWrapper;
.super Ljava/lang/Object;
.source "NativeCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompatabilityWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter "aEvent"

    .prologue
    .line 698
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter "aEvent"
    .parameter "aIndex"

    .prologue
    .line 702
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter "aEvent"
    .parameter "aIndex"

    .prologue
    .line 706
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method
