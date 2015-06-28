.class public Lcom/waze/animation/easing/Elastic;
.super Ljava/lang/Object;
.source "Elastic.java"

# interfaces
.implements Lcom/waze/animation/easing/AnimationEasing;


# instance fields
.field private mAmplitude:D

.field private mPeriod:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide v0, p0, Lcom/waze/animation/easing/Elastic;->mAmplitude:D

    .line 6
    iput-wide v0, p0, Lcom/waze/animation/easing/Elastic;->mPeriod:D

    .line 8
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2
    .parameter "amplitude"
    .parameter "period"

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide v0, p0, Lcom/waze/animation/easing/Elastic;->mAmplitude:D

    .line 6
    iput-wide v0, p0, Lcom/waze/animation/easing/Elastic;->mPeriod:D

    .line 11
    iput-wide p1, p0, Lcom/waze/animation/easing/Elastic;->mAmplitude:D

    .line 12
    iput-wide p3, p0, Lcom/waze/animation/easing/Elastic;->mPeriod:D

    .line 13
    return-void
.end method


# virtual methods
.method public easeIn(DDDD)D
    .locals 13
    .parameter "time"
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    .line 17
    iget-wide v9, p0, Lcom/waze/animation/easing/Elastic;->mAmplitude:D

    iget-wide v11, p0, Lcom/waze/animation/easing/Elastic;->mPeriod:D

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v12}, Lcom/waze/animation/easing/Elastic;->easeIn(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public easeIn(DDDDDD)D
    .locals 8
    .parameter "t"
    .parameter "start"
    .parameter "end"
    .parameter "duration"
    .parameter "amplitude"
    .parameter "period"

    .prologue
    .line 23
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_0

    .line 31
    .end local p3
    :goto_0
    return-wide p3

    .line 24
    .restart local p3
    :cond_0
    div-double/2addr p1, p7

    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1

    add-double/2addr p3, p5

    goto :goto_0

    .line 25
    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v2, p11, v2

    if-gtz v2, :cond_2

    const-wide v2, 0x3fd3333333333333L

    mul-double p11, p7, v2

    .line 26
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, p9, v2

    if-lez v2, :cond_3

    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, p9, v2

    if-gez v2, :cond_4

    .line 27
    :cond_3
    move-wide/from16 p9, p5

    .line 28
    const-wide/high16 v2, 0x4010

    div-double v0, p11, v2

    .line 31
    .local v0, s:D
    :goto_1
    const-wide/high16 v2, 0x4000

    const-wide/high16 v4, 0x4024

    const-wide/high16 v6, 0x3ff0

    sub-double/2addr p1, v6

    mul-double/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p9

    mul-double v4, p1, p7

    sub-double/2addr v4, v0

    const-wide v6, 0x401921fb54442d18L

    mul-double/2addr v4, v6

    .line 32
    div-double v4, v4, p11

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    neg-double v2, v2

    add-double/2addr p3, v2

    goto :goto_0

    .line 30
    .end local v0           #s:D
    :cond_4
    const-wide v2, 0x401921fb54442d18L

    div-double v2, p11, v2

    div-double v4, p5, p9

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    .restart local v0       #s:D
    goto :goto_1
.end method

.method public easeInOut(DDDD)D
    .locals 13
    .parameter "time"
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    .line 58
    iget-wide v9, p0, Lcom/waze/animation/easing/Elastic;->mAmplitude:D

    iget-wide v11, p0, Lcom/waze/animation/easing/Elastic;->mPeriod:D

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v12}, Lcom/waze/animation/easing/Elastic;->easeInOut(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public easeInOut(DDDDDD)D
    .locals 10
    .parameter "time"
    .parameter "start"
    .parameter "end"
    .parameter "duration"
    .parameter "amplitude"
    .parameter "period"

    .prologue
    .line 65
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_0

    .line 77
    .end local p3
    :goto_0
    return-wide p3

    .line 66
    .restart local p3
    :cond_0
    const-wide/high16 v2, 0x4000

    div-double v2, p7, v2

    div-double/2addr p1, v2

    const-wide/high16 v2, 0x4000

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1

    add-double/2addr p3, p5

    goto :goto_0

    .line 67
    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v2, p11, v2

    if-gtz v2, :cond_2

    const-wide v2, 0x3fdcccccccccccccL

    mul-double p11, p7, v2

    .line 68
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, p9, v2

    if-lez v2, :cond_3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, p9, v2

    if-gez v2, :cond_4

    .line 69
    :cond_3
    move-wide/from16 p9, p5

    .line 70
    const-wide/high16 v2, 0x4010

    div-double v0, p11, v2

    .line 73
    .local v0, s:D
    :goto_1
    const-wide/high16 v2, 0x3ff0

    cmpg-double v2, p1, v2

    if-gez v2, :cond_5

    .line 74
    const-wide/high16 v2, -0x4020

    .line 75
    const-wide/high16 v4, 0x4000

    const-wide/high16 v6, 0x4024

    const-wide/high16 v8, 0x3ff0

    sub-double/2addr p1, v8

    mul-double/2addr v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, p9

    mul-double v6, p1, p7

    sub-double/2addr v6, v0

    .line 76
    const-wide v8, 0x401921fb54442d18L

    mul-double/2addr v6, v8

    div-double v6, v6, p11

    .line 75
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 74
    mul-double/2addr v2, v4

    add-double/2addr p3, v2

    goto :goto_0

    .line 72
    .end local v0           #s:D
    :cond_4
    const-wide v2, 0x401921fb54442d18L

    div-double v2, p11, v2

    div-double v4, p5, p9

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    .restart local v0       #s:D
    goto :goto_1

    .line 77
    :cond_5
    const-wide/high16 v2, 0x4000

    const-wide/high16 v4, -0x3fdc

    const-wide/high16 v6, 0x3ff0

    sub-double/2addr p1, v6

    mul-double/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p9

    .line 78
    mul-double v4, p1, p7

    sub-double/2addr v4, v0

    const-wide v6, 0x401921fb54442d18L

    mul-double/2addr v4, v6

    div-double v4, v4, p11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 77
    mul-double/2addr v2, v4

    .line 78
    const-wide/high16 v4, 0x3fe0

    .line 77
    mul-double/2addr v2, v4

    add-double/2addr v2, p5

    add-double/2addr p3, v2

    goto/16 :goto_0
.end method

.method public easeOut(DDDD)D
    .locals 13
    .parameter "time"
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    .line 38
    iget-wide v9, p0, Lcom/waze/animation/easing/Elastic;->mAmplitude:D

    iget-wide v11, p0, Lcom/waze/animation/easing/Elastic;->mPeriod:D

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v12}, Lcom/waze/animation/easing/Elastic;->easeOut(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public easeOut(DDDDDD)D
    .locals 8
    .parameter "time"
    .parameter "start"
    .parameter "end"
    .parameter "duration"
    .parameter "amplitude"
    .parameter "period"

    .prologue
    .line 44
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_0

    .line 52
    .end local p3
    :goto_0
    return-wide p3

    .line 45
    .restart local p3
    :cond_0
    div-double/2addr p1, p7

    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1

    add-double/2addr p3, p5

    goto :goto_0

    .line 46
    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v2, p11, v2

    if-gtz v2, :cond_2

    const-wide v2, 0x3fd3333333333333L

    mul-double p11, p7, v2

    .line 47
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, p9, v2

    if-lez v2, :cond_3

    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, p9, v2

    if-gez v2, :cond_4

    .line 48
    :cond_3
    move-wide/from16 p9, p5

    .line 49
    const-wide/high16 v2, 0x4010

    div-double v0, p11, v2

    .line 52
    .local v0, s:D
    :goto_1
    const-wide/high16 v2, 0x4000

    const-wide/high16 v4, -0x3fdc

    mul-double/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p9

    .line 53
    mul-double v4, p1, p7

    sub-double/2addr v4, v0

    const-wide v6, 0x401921fb54442d18L

    mul-double/2addr v4, v6

    div-double v4, v4, p11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 52
    mul-double/2addr v2, v4

    add-double/2addr v2, p5

    add-double/2addr p3, v2

    goto :goto_0

    .line 51
    .end local v0           #s:D
    :cond_4
    const-wide v2, 0x401921fb54442d18L

    div-double v2, p11, v2

    div-double v4, p5, p9

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    .restart local v0       #s:D
    goto :goto_1
.end method
