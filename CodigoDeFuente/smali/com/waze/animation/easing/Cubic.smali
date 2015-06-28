.class public Lcom/waze/animation/easing/Cubic;
.super Ljava/lang/Object;
.source "Cubic.java"

# interfaces
.implements Lcom/waze/animation/easing/AnimationEasing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public easeIn(DDDD)D
    .locals 2
    .parameter "time"
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    .line 12
    div-double/2addr p1, p7

    mul-double v0, p5, p1

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public easeInOut(DDDD)D
    .locals 6
    .parameter "time"
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 17
    div-double v0, p7, v4

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    div-double v0, p5, v4

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    add-double/2addr v0, p3

    .line 18
    :goto_0
    return-wide v0

    :cond_0
    div-double v0, p5, v4

    sub-double/2addr p1, v4

    mul-double v2, p1, p1

    mul-double/2addr v2, p1

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, p3

    goto :goto_0
.end method

.method public easeOut(DDDD)D
    .locals 4
    .parameter "time"
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    const-wide/high16 v2, 0x3ff0

    .line 7
    div-double v0, p1, p7

    sub-double p1, v0, v2

    mul-double v0, p1, p1

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    mul-double/2addr v0, p5

    add-double/2addr v0, p3

    return-wide v0
.end method
