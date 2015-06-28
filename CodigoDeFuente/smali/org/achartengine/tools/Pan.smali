.class public Lorg/achartengine/tools/Pan;
.super Lorg/achartengine/tools/AbstractTool;
.source "Pan.java"


# direct methods
.method public constructor <init>(Lorg/achartengine/chart/XYChart;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/achartengine/tools/AbstractTool;-><init>(Lorg/achartengine/chart/XYChart;)V

    .line 34
    return-void
.end method


# virtual methods
.method public apply(FFFF)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/achartengine/tools/Pan;->getRange()[D

    move-result-object v3

    .line 46
    iget-object v2, p0, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getPanLimits()[D

    move-result-object v4

    .line 47
    if-eqz v4, :cond_2

    array-length v2, v4

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    .line 48
    :goto_0
    iget-object v5, p0, Lorg/achartengine/tools/Pan;->mChart:Lorg/achartengine/chart/XYChart;

    invoke-virtual {v5}, Lorg/achartengine/chart/XYChart;->getCalcRange()[D

    move-result-object v5

    .line 49
    const/4 v6, 0x0

    aget-wide v6, v3, v6

    const/4 v8, 0x1

    aget-wide v8, v3, v8

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x2

    aget-wide v6, v3, v6

    const/4 v8, 0x3

    aget-wide v8, v3, v8

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    const/4 v6, 0x2

    aget-wide v6, v5, v6

    const/4 v8, 0x3

    aget-wide v8, v5, v8

    cmpl-double v5, v6, v8

    if-nez v5, :cond_3

    .line 85
    :cond_1
    :goto_1
    return-void

    .line 47
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0, v3}, Lorg/achartengine/tools/Pan;->checkRange([D)V

    .line 55
    iget-object v5, p0, Lorg/achartengine/tools/Pan;->mChart:Lorg/achartengine/chart/XYChart;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lorg/achartengine/chart/XYChart;->toRealPoint(FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 56
    iget-object v6, p0, Lorg/achartengine/tools/Pan;->mChart:Lorg/achartengine/chart/XYChart;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v6, v0, v1}, Lorg/achartengine/chart/XYChart;->toRealPoint(FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 57
    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    .line 58
    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 59
    iget-object v9, p0, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanXEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 60
    if-eqz v2, :cond_7

    .line 61
    const/4 v9, 0x0

    aget-wide v9, v4, v9

    const/4 v11, 0x0

    aget-wide v11, v3, v11

    add-double/2addr v11, v7

    cmpl-double v9, v9, v11

    if-lez v9, :cond_5

    .line 62
    const/4 v7, 0x0

    aget-wide v7, v4, v7

    const/4 v9, 0x0

    aget-wide v9, v4, v9

    const/4 v11, 0x1

    aget-wide v11, v3, v11

    const/4 v13, 0x0

    aget-wide v13, v3, v13

    sub-double/2addr v11, v13

    add-double/2addr v9, v11

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/achartengine/tools/Pan;->setXRange(DD)V

    .line 72
    :cond_4
    :goto_2
    iget-object v7, p0, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanYEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    if-eqz v2, :cond_a

    .line 74
    const/4 v2, 0x2

    aget-wide v7, v4, v2

    const/4 v2, 0x2

    aget-wide v9, v3, v2

    add-double/2addr v9, v5

    cmpl-double v2, v7, v9

    if-lez v2, :cond_8

    .line 75
    const/4 v2, 0x2

    aget-wide v5, v4, v2

    const/4 v2, 0x2

    aget-wide v7, v4, v2

    const/4 v2, 0x3

    aget-wide v9, v3, v2

    const/4 v2, 0x2

    aget-wide v2, v3, v2

    sub-double v2, v9, v2

    add-double/2addr v2, v7

    invoke-virtual {p0, v5, v6, v2, v3}, Lorg/achartengine/tools/Pan;->setYRange(DD)V

    goto :goto_1

    .line 63
    :cond_5
    const/4 v9, 0x1

    aget-wide v9, v4, v9

    const/4 v11, 0x1

    aget-wide v11, v3, v11

    add-double/2addr v11, v7

    cmpg-double v9, v9, v11

    if-gez v9, :cond_6

    .line 64
    const/4 v7, 0x1

    aget-wide v7, v4, v7

    const/4 v9, 0x1

    aget-wide v9, v3, v9

    const/4 v11, 0x0

    aget-wide v11, v3, v11

    sub-double/2addr v9, v11

    sub-double/2addr v7, v9

    const/4 v9, 0x1

    aget-wide v9, v4, v9

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/achartengine/tools/Pan;->setXRange(DD)V

    goto :goto_2

    .line 66
    :cond_6
    const/4 v9, 0x0

    aget-wide v9, v3, v9

    add-double/2addr v9, v7

    const/4 v11, 0x1

    aget-wide v11, v3, v11

    add-double/2addr v7, v11

    invoke-virtual {p0, v9, v10, v7, v8}, Lorg/achartengine/tools/Pan;->setXRange(DD)V

    goto :goto_2

    .line 69
    :cond_7
    const/4 v9, 0x0

    aget-wide v9, v3, v9

    add-double/2addr v9, v7

    const/4 v11, 0x1

    aget-wide v11, v3, v11

    add-double/2addr v7, v11

    invoke-virtual {p0, v9, v10, v7, v8}, Lorg/achartengine/tools/Pan;->setXRange(DD)V

    goto :goto_2

    .line 76
    :cond_8
    const/4 v2, 0x3

    aget-wide v7, v4, v2

    const/4 v2, 0x3

    aget-wide v9, v3, v2

    add-double/2addr v9, v5

    cmpg-double v2, v7, v9

    if-gez v2, :cond_9

    .line 77
    const/4 v2, 0x3

    aget-wide v5, v4, v2

    const/4 v2, 0x3

    aget-wide v7, v3, v2

    const/4 v2, 0x2

    aget-wide v2, v3, v2

    sub-double v2, v7, v2

    sub-double v2, v5, v2

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/achartengine/tools/Pan;->setYRange(DD)V

    goto/16 :goto_1

    .line 79
    :cond_9
    const/4 v2, 0x2

    aget-wide v7, v3, v2

    add-double/2addr v7, v5

    const/4 v2, 0x3

    aget-wide v2, v3, v2

    add-double/2addr v2, v5

    invoke-virtual {p0, v7, v8, v2, v3}, Lorg/achartengine/tools/Pan;->setYRange(DD)V

    goto/16 :goto_1

    .line 82
    :cond_a
    const/4 v2, 0x2

    aget-wide v7, v3, v2

    add-double/2addr v7, v5

    const/4 v2, 0x3

    aget-wide v2, v3, v2

    add-double/2addr v2, v5

    invoke-virtual {p0, v7, v8, v2, v3}, Lorg/achartengine/tools/Pan;->setYRange(DD)V

    goto/16 :goto_1
.end method
