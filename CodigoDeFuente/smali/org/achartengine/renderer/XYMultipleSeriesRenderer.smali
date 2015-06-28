.class public Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
.super Lorg/achartengine/renderer/DefaultRenderer;
.source "XYMultipleSeriesRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    }
.end annotation


# instance fields
.field private initialRange:[D

.field private mAxisTitleTextSize:F

.field private mBarSpacing:D

.field private mChartTitle:Ljava/lang/String;

.field private mChartTitleTextSize:F

.field private mChartValuesTextSize:F

.field private mDisplayChartValues:Z

.field private mGridColor:I

.field private mMarginsColor:I

.field private mMaxX:D

.field private mMaxY:D

.field private mMinX:D

.field private mMinY:D

.field private mOrientation:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

.field private mPanLimits:[D

.field private mPanXEnabled:Z

.field private mPanYEnabled:Z

.field private mPointSize:F

.field private mXLabels:I

.field private mXLabelsAngle:F

.field private mXTextLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mXTitle:Ljava/lang/String;

.field private mYLabels:I

.field private mYLabelsAngle:F

.field private mYTitle:Ljava/lang/String;

.field private mZoomLimits:[D

.field private mZoomRate:F

.field private mZoomXEnabled:Z

.field private mZoomYEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide v5, 0x7fefffffffffffffL

    const-wide v1, -0x10000000000001L

    const/16 v4, 0xc8

    const/4 v3, 0x1

    .line 28
    invoke-direct {p0}, Lorg/achartengine/renderer/DefaultRenderer;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mChartTitle:Ljava/lang/String;

    .line 32
    const/high16 v0, 0x4170

    iput v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mChartTitleTextSize:F

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTitle:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTitle:Ljava/lang/String;

    .line 38
    const/high16 v0, 0x4140

    iput v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mAxisTitleTextSize:F

    .line 40
    iput-wide v5, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinX:D

    .line 42
    iput-wide v1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxX:D

    .line 44
    iput-wide v5, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinY:D

    .line 46
    iput-wide v1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxY:D

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXLabels:I

    .line 51
    const/4 v0, 0x5

    iput v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYLabels:I

    .line 53
    sget-object v0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mOrientation:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    .line 59
    const/high16 v0, 0x4120

    iput v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mChartValuesTextSize:F

    .line 61
    iput-boolean v3, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanXEnabled:Z

    .line 63
    iput-boolean v3, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanYEnabled:Z

    .line 65
    iput-boolean v3, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomXEnabled:Z

    .line 67
    iput-boolean v3, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomYEnabled:Z

    .line 69
    const/high16 v0, 0x3fc0

    iput v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomRate:F

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mBarSpacing:D

    .line 73
    iput v7, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMarginsColor:I

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [D

    iget-wide v1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinX:D

    aput-wide v1, v0, v7

    iget-wide v1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxX:D

    aput-wide v1, v0, v3

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinY:D

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxY:D

    aput-wide v2, v0, v1

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:[D

    .line 85
    const/high16 v0, 0x4040

    iput v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPointSize:F

    .line 87
    const/16 v0, 0x4b

    invoke-static {v0, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mGridColor:I

    .line 92
    return-void
.end method


# virtual methods
.method public addTextLabel(DLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    return-void
.end method

.method public getAxisTitleTextSize()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mAxisTitleTextSize:F

    return v0
.end method

.method public getBarsSpacing()D
    .locals 2

    .prologue
    .line 522
    iget-wide v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mBarSpacing:D

    return-wide v0
.end method

.method public getChartTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mChartTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getChartTitleTextSize()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mChartTitleTextSize:F

    return v0
.end method

.method public getChartValuesTextSize()F
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mChartValuesTextSize:F

    return v0
.end method

.method public getGridColor()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mGridColor:I

    return v0
.end method

.method public getInitialRange()[D
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:[D

    return-object v0
.end method

.method public getMarginsColor()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMarginsColor:I

    return v0
.end method

.method public getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mOrientation:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    return-object v0
.end method

.method public getPanLimits()[D
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanLimits:[D

    return-object v0
.end method

.method public getPointSize()F
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPointSize:F

    return v0
.end method

.method public getXAxisMax()D
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxX:D

    return-wide v0
.end method

.method public getXAxisMin()D
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinX:D

    return-wide v0
.end method

.method public getXLabels()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXLabels:I

    return v0
.end method

.method public getXLabelsAngle()F
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXLabelsAngle:F

    return v0
.end method

.method public getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXTextLabelLocations()[Ljava/lang/Double;
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    return-object v0
.end method

.method public getXTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getYAxisMax()D
    .locals 2

    .prologue
    .line 315
    iget-wide v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxY:D

    return-wide v0
.end method

.method public getYAxisMin()D
    .locals 2

    .prologue
    .line 285
    iget-wide v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinY:D

    return-wide v0
.end method

.method public getYLabels()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYLabels:I

    return v0
.end method

.method public getYLabelsAngle()F
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYLabelsAngle:F

    return v0
.end method

.method public getYTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomLimits()[D
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomLimits:[D

    return-object v0
.end method

.method public getZoomRate()F
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomRate:F

    return v0
.end method

.method public isDisplayChartValues()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mDisplayChartValues:Z

    return v0
.end method

.method public isInitialRangeSet()Z
    .locals 1

    .prologue
    .line 685
    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinYSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxXSet()Z
    .locals 4

    .prologue
    .line 276
    iget-wide v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxX:D

    const-wide v2, -0x10000000000001L

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxYSet()Z
    .locals 4

    .prologue
    .line 336
    iget-wide v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxY:D

    const-wide v2, -0x10000000000001L

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMinXSet()Z
    .locals 4

    .prologue
    .line 246
    iget-wide v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinX:D

    const-wide v2, 0x7fefffffffffffffL

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMinYSet()Z
    .locals 4

    .prologue
    .line 306
    iget-wide v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinY:D

    const-wide v2, 0x7fefffffffffffffL

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanXEnabled()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanXEnabled:Z

    return v0
.end method

.method public isPanYEnabled()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanYEnabled:Z

    return v0
.end method

.method public isZoomXEnabled()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomXEnabled:Z

    return v0
.end method

.method public isZoomYEnabled()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomYEnabled:Z

    return v0
.end method

.method public setAxisTitleTextSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mAxisTitleTextSize:F

    .line 217
    return-void
.end method

.method public setBarSpacing(D)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput-wide p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mBarSpacing:D

    .line 534
    return-void
.end method

.method public setChartTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mChartTitle:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setChartTitleTextSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mChartTitleTextSize:F

    .line 163
    return-void
.end method

.method public setChartValuesTextSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mChartValuesTextSize:F

    .line 438
    return-void
.end method

.method public setDisplayChartValues(Z)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-boolean p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mDisplayChartValues:Z

    .line 420
    return-void
.end method

.method public setGridColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 569
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mGridColor:I

    .line 570
    return-void
.end method

.method public setInitialRange([D)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:[D

    .line 696
    return-void
.end method

.method public setMarginsColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMarginsColor:I

    .line 552
    return-void
.end method

.method public setOrientation(Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mOrientation:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    .line 127
    return-void
.end method

.method public setPanEnabled(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 465
    iput-boolean p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanXEnabled:Z

    .line 466
    iput-boolean p2, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanYEnabled:Z

    .line 467
    return-void
.end method

.method public setPanLimits([D)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanLimits:[D

    .line 590
    return-void
.end method

.method public setPointSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 663
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPointSize:F

    .line 664
    return-void
.end method

.method public setRange([D)V
    .locals 2
    .parameter

    .prologue
    .line 673
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 674
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 675
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 676
    const/4 v0, 0x3

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 677
    return-void
.end method

.method public setXAxisMax(D)V
    .locals 2
    .parameter

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:[D

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    .line 267
    :cond_0
    iput-wide p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxX:D

    .line 268
    return-void
.end method

.method public setXAxisMin(D)V
    .locals 2
    .parameter

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 237
    :cond_0
    iput-wide p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinX:D

    .line 238
    return-void
.end method

.method public setXLabels(I)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXLabels:I

    .line 355
    return-void
.end method

.method public setXLabelsAngle(F)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXLabelsAngle:F

    .line 628
    return-void
.end method

.method public setXTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTitle:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setYAxisMax(D)V
    .locals 2
    .parameter

    .prologue
    .line 324
    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:[D

    const/4 v1, 0x3

    aput-wide p1, v0, v1

    .line 327
    :cond_0
    iput-wide p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxY:D

    .line 328
    return-void
.end method

.method public setYAxisMin(D)V
    .locals 2
    .parameter

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinYSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:[D

    const/4 v1, 0x2

    aput-wide p1, v0, v1

    .line 297
    :cond_0
    iput-wide p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinY:D

    .line 298
    return-void
.end method

.method public setYLabels(I)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYLabels:I

    .line 402
    return-void
.end method

.method public setYLabelsAngle(F)V
    .locals 0
    .parameter

    .prologue
    .line 645
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYLabelsAngle:F

    .line 646
    return-void
.end method

.method public setYTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTitle:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setZoomEnabled(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 494
    iput-boolean p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomXEnabled:Z

    .line 495
    iput-boolean p2, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomYEnabled:Z

    .line 496
    return-void
.end method

.method public setZoomLimits([D)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomLimits:[D

    .line 610
    return-void
.end method

.method public setZoomRate(F)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomRate:F

    .line 514
    return-void
.end method
