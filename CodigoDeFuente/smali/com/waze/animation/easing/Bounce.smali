.class public Lcom/waze/animation/easing/Bounce;
.super Ljava/lang/Object;
.source "Bounce.java"

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
    .locals 9
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 20
    sub-double v1, p7, p1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/waze/animation/easing/Bounce;->easeOut(DDDD)D

    move-result-wide v0

    sub-double v0, p5, v0

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public easeInOut(DDDD)D
    .locals 9
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 25
    const-wide/high16 v0, 0x4000

    div-double v0, p7, v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 26
    const-wide/high16 v0, 0x4000

    mul-double v1, p1, v0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/waze/animation/easing/Bounce;->easeIn(DDDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    add-double/2addr v0, p3

    .line 28
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4000

    mul-double/2addr v0, p1

    sub-double v1, v0, p7

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/waze/animation/easing/Bounce;->easeOut(DDDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v2, p5

    add-double/2addr v0, v2

    add-double/2addr v0, p3

    goto :goto_0
.end method

.method public easeOut(DDDD)D
    .locals 4
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    const-wide v2, 0x401e400000000000L

    .line 7
    div-double/2addr p1, p7

    const-wide v0, 0x3fd745d1745d1746L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 8
    mul-double v0, v2, p1

    mul-double/2addr v0, p1

    mul-double/2addr v0, p5

    add-double/2addr v0, p3

    .line 14
    :goto_0
    return-wide v0

    .line 9
    :cond_0
    const-wide v0, 0x3fe745d1745d1746L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 10
    const-wide v0, 0x3fe1745d1745d174L

    sub-double/2addr p1, v0

    mul-double v0, v2, p1

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3fe8

    add-double/2addr v0, v2

    mul-double/2addr v0, p5

    add-double/2addr v0, p3

    goto :goto_0

    .line 11
    :cond_1
    const-wide v0, 0x3fed1745d1745d17L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    .line 12
    const-wide v0, 0x3fea2e8ba2e8ba2fL

    sub-double/2addr p1, v0

    mul-double v0, v2, p1

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3fee

    add-double/2addr v0, v2

    mul-double/2addr v0, p5

    add-double/2addr v0, p3

    goto :goto_0

    .line 14
    :cond_2
    const-wide v0, 0x3fee8ba2e8ba2e8cL

    sub-double/2addr p1, v0

    mul-double v0, v2, p1

    mul-double/2addr v0, p1

    const-wide v2, 0x3fef800000000000L

    add-double/2addr v0, v2

    mul-double/2addr v0, p5

    add-double/2addr v0, p3

    goto :goto_0
.end method
