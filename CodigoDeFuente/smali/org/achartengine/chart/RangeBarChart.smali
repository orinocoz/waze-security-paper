.class public Lorg/achartengine/chart/RangeBarChart;
.super Lorg/achartengine/chart/BarChart;
.source "RangeBarChart.java"


# direct methods
.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/achartengine/chart/BarChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected drawChartValuesText(Landroid/graphics/Canvas;Lorg/achartengine/model/XYSeries;Landroid/graphics/Paint;[FI)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 86
    iget-object v0, p0, Lorg/achartengine/chart/RangeBarChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v8

    .line 87
    array-length v0, p4

    invoke-virtual {p0, p4, v0, v8}, Lorg/achartengine/chart/RangeBarChart;->getHalfDiffX([FII)F

    move-result v9

    .line 88
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    array-length v0, p4

    if-ge v7, v0, :cond_1

    .line 89
    aget v3, p4, v7

    .line 90
    iget-object v0, p0, Lorg/achartengine/chart/RangeBarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    sget-object v1, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    if-ne v0, v1, :cond_0

    .line 91
    mul-int/lit8 v0, p5, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    int-to-float v1, v8

    const/high16 v2, 0x3fc0

    sub-float/2addr v1, v2

    mul-float/2addr v1, v9

    sub-float/2addr v0, v1

    add-float/2addr v3, v0

    .line 94
    :cond_0
    div-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/achartengine/chart/RangeBarChart;->getLabel(D)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v7, 0x3

    aget v0, p4, v0

    const/high16 v1, 0x4040

    sub-float v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/RangeBarChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 96
    div-int/lit8 v0, v7, 0x2

    invoke-virtual {p2, v0}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/achartengine/chart/RangeBarChart;->getLabel(D)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v7, 0x1

    aget v0, p4, v0

    const/high16 v1, 0x40f0

    add-float v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/RangeBarChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 88
    add-int/lit8 v0, v7, 0x4

    move v7, v0

    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method

.method public drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FI)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lorg/achartengine/chart/RangeBarChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v7

    .line 56
    array-length v8, p3

    .line 57
    invoke-virtual {p4}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    invoke-virtual {p0, p3, v8, v7}, Lorg/achartengine/chart/RangeBarChart;->getHalfDiffX([FII)F

    move-result v9

    .line 60
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_1

    .line 61
    aget v0, p3, v6

    .line 62
    add-int/lit8 v1, v6, 0x1

    aget v4, p3, v1

    .line 64
    add-int/lit8 v1, v6, 0x2

    aget v3, p3, v1

    .line 65
    add-int/lit8 v1, v6, 0x3

    aget v2, p3, v1

    .line 66
    iget-object v1, p0, Lorg/achartengine/chart/RangeBarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    sget-object v5, Lorg/achartengine/chart/BarChart$Type;->STACKED:Lorg/achartengine/chart/BarChart$Type;

    if-ne v1, v5, :cond_0

    .line 67
    sub-float v1, v0, v9

    add-float/2addr v3, v9

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 60
    :goto_1
    add-int/lit8 v0, v6, 0x4

    move v6, v0

    goto :goto_0

    .line 69
    :cond_0
    int-to-float v1, v7

    mul-float/2addr v1, v9

    sub-float/2addr v0, v1

    mul-int/lit8 v1, p6, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v9

    add-float/2addr v1, v0

    .line 70
    const/high16 v0, 0x4000

    mul-float/2addr v0, v9

    add-float v3, v1, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 73
    :cond_1
    return-void
.end method

.method protected getCoeficient()F
    .locals 1

    .prologue
    .line 106
    const/high16 v0, 0x3f00

    return v0
.end method
