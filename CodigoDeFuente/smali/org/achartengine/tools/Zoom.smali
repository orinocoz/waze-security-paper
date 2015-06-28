.class public Lorg/achartengine/tools/Zoom;
.super Lorg/achartengine/tools/AbstractTool;
.source "Zoom.java"


# instance fields
.field private mZoomIn:Z

.field private mZoomRate:F


# direct methods
.method public constructor <init>(Lorg/achartengine/chart/XYChart;ZF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/achartengine/tools/AbstractTool;-><init>(Lorg/achartengine/chart/XYChart;)V

    .line 38
    iput-boolean p2, p0, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    .line 39
    invoke-virtual {p0, p3}, Lorg/achartengine/tools/Zoom;->setZoomRate(F)V

    .line 40
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 17

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p0}, Lorg/achartengine/tools/Zoom;->getRange()[D

    move-result-object v4

    .line 55
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/achartengine/tools/Zoom;->checkRange([D)V

    .line 56
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomLimits()[D

    move-result-object v6

    .line 57
    if-eqz v6, :cond_5

    array-length v1, v6

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    .line 59
    :goto_0
    const/4 v2, 0x0

    aget-wide v2, v4, v2

    const/4 v5, 0x1

    aget-wide v7, v4, v5

    add-double/2addr v2, v7

    const-wide/high16 v7, 0x4000

    div-double v7, v2, v7

    .line 60
    const/4 v2, 0x2

    aget-wide v2, v4, v2

    const/4 v5, 0x3

    aget-wide v9, v4, v5

    add-double/2addr v2, v9

    const-wide/high16 v9, 0x4000

    div-double v9, v2, v9

    .line 61
    const/4 v2, 0x1

    aget-wide v2, v4, v2

    const/4 v5, 0x0

    aget-wide v11, v4, v5

    sub-double/2addr v2, v11

    .line 62
    const/4 v5, 0x3

    aget-wide v11, v4, v5

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    sub-double v4, v11, v4

    .line 63
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    if-eqz v11, :cond_6

    .line 64
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 65
    move-object/from16 v0, p0

    iget v11, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v11, v11

    div-double/2addr v2, v11

    .line 67
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 68
    move-object/from16 v0, p0

    iget v11, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v11, v11

    div-double/2addr v4, v11

    move-wide v15, v4

    move-wide v4, v2

    move-wide v2, v15

    .line 79
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 80
    const-wide/high16 v11, 0x4000

    div-double v11, v4, v11

    sub-double v11, v7, v11

    .line 81
    const-wide/high16 v13, 0x4000

    div-double/2addr v4, v13

    add-double/2addr v4, v7

    .line 82
    if-eqz v1, :cond_1

    const/4 v7, 0x0

    aget-wide v7, v6, v7

    cmpg-double v7, v7, v11

    if-gtz v7, :cond_2

    const/4 v7, 0x1

    aget-wide v7, v6, v7

    cmpl-double v7, v7, v4

    if-ltz v7, :cond_2

    .line 83
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4, v5}, Lorg/achartengine/tools/Zoom;->setXRange(DD)V

    .line 86
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    const-wide/high16 v4, 0x4000

    div-double v4, v2, v4

    sub-double v4, v9, v4

    .line 88
    const-wide/high16 v7, 0x4000

    div-double/2addr v2, v7

    add-double/2addr v2, v9

    .line 89
    if-eqz v1, :cond_3

    const/4 v1, 0x2

    aget-wide v7, v6, v1

    cmpg-double v1, v7, v4

    if-gtz v1, :cond_4

    const/4 v1, 0x3

    aget-wide v6, v6, v1

    cmpl-double v1, v6, v2

    if-ltz v1, :cond_4

    .line 90
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v2, v3}, Lorg/achartengine/tools/Zoom;->setYRange(DD)V

    .line 93
    :cond_4
    return-void

    .line 57
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 71
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 72
    move-object/from16 v0, p0

    iget v11, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v11, v11

    mul-double/2addr v2, v11

    .line 74
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 75
    move-object/from16 v0, p0

    iget v11, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v11, v11

    mul-double/2addr v4, v11

    move-wide v15, v4

    move-wide v4, v2

    move-wide v2, v15

    goto :goto_1

    :cond_8
    move-wide v15, v4

    move-wide v4, v2

    move-wide v2, v15

    goto :goto_1
.end method

.method public setZoomRate(F)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    .line 48
    return-void
.end method
