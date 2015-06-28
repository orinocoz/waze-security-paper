.class public Lorg/achartengine/chart/BarChart;
.super Lorg/achartengine/chart/XYChart;
.source "BarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/achartengine/chart/BarChart$Type;
    }
.end annotation


# static fields
.field private static final SHAPE_WIDTH:I = 0xc


# instance fields
.field protected mType:Lorg/achartengine/chart/BarChart$Type;


# direct methods
.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/XYChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 34
    sget-object v0, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    iput-object v0, p0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    .line 52
    iput-object p3, p0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    .line 53
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
    .line 95
    iget-object v0, p0, Lorg/achartengine/chart/BarChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v8

    .line 96
    array-length v0, p4

    invoke-virtual {p0, p4, v0, v8}, Lorg/achartengine/chart/BarChart;->getHalfDiffX([FII)F

    move-result v9

    .line 97
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    array-length v0, p4

    if-ge v7, v0, :cond_1

    .line 98
    aget v3, p4, v7

    .line 99
    iget-object v0, p0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    sget-object v1, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    if-ne v0, v1, :cond_0

    .line 100
    mul-int/lit8 v0, p5, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    int-to-float v1, v8

    const/high16 v2, 0x3fc0

    sub-float/2addr v1, v2

    mul-float/2addr v1, v9

    sub-float/2addr v0, v1

    add-float/2addr v3, v0

    .line 102
    :cond_0
    div-int/lit8 v0, v7, 0x2

    invoke-virtual {p2, v0}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/achartengine/chart/BarChart;->getLabel(D)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v7, 0x1

    aget v0, p4, v0

    const/high16 v1, 0x4060

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/BarChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 97
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method public drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFLandroid/graphics/Paint;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    const/high16 v0, 0x40c0

    .line 127
    sub-float v2, p4, v0

    const/high16 v1, 0x4140

    add-float v3, p3, v1

    add-float v4, p4, v0

    move-object v0, p1

    move v1, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
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
    .line 67
    iget-object v0, p0, Lorg/achartengine/chart/BarChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v7

    .line 68
    array-length v8, p3

    .line 69
    invoke-virtual {p4}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    invoke-virtual {p0, p3, v8, v7}, Lorg/achartengine/chart/BarChart;->getHalfDiffX([FII)F

    move-result v9

    .line 72
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_1

    .line 73
    aget v0, p3, v6

    .line 74
    add-int/lit8 v1, v6, 0x1

    aget v2, p3, v1

    .line 75
    iget-object v1, p0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    sget-object v3, Lorg/achartengine/chart/BarChart$Type;->STACKED:Lorg/achartengine/chart/BarChart$Type;

    if-ne v1, v3, :cond_0

    .line 76
    sub-float v1, v0, v9

    add-float v3, v0, v9

    move-object v0, p1

    move v4, p5

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    :goto_1
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_0

    .line 78
    :cond_0
    int-to-float v1, v7

    mul-float/2addr v1, v9

    sub-float/2addr v0, v1

    mul-int/lit8 v1, p6, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v9

    add-float/2addr v1, v0

    .line 79
    const/high16 v0, 0x4000

    mul-float/2addr v0, v9

    add-float v3, v1, v0

    move-object v0, p1

    move v4, p5

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 82
    :cond_1
    return-void
.end method

.method protected getCoeficient()F
    .locals 1

    .prologue
    .line 157
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getDefaultMinimum()D
    .locals 2

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getHalfDiffX([FII)F
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    add-int/lit8 v0, p2, -0x2

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    sub-float/2addr v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 141
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 142
    const/high16 v0, 0x4120

    .line 145
    :cond_0
    iget-object v1, p0, Lorg/achartengine/chart/BarChart;->mType:Lorg/achartengine/chart/BarChart$Type;

    sget-object v2, Lorg/achartengine/chart/BarChart$Type;->STACKED:Lorg/achartengine/chart/BarChart$Type;

    if-eq v1, v2, :cond_1

    .line 146
    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 148
    :cond_1
    float-to-double v0, v0

    invoke-virtual {p0}, Lorg/achartengine/chart/BarChart;->getCoeficient()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0

    iget-object v6, p0, Lorg/achartengine/chart/BarChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getBarsSpacing()D

    move-result-wide v6

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getLegendShapeWidth()I
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0xc

    return v0
.end method
