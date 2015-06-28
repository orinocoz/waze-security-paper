.class public Lorg/achartengine/chart/BubbleChart;
.super Lorg/achartengine/chart/XYChart;
.source "BubbleChart.java"


# static fields
.field private static final MAX_BUBBLE_SIZE:I = 0x14

.field private static final MIN_BUBBLE_SIZE:I = 0x2

.field private static final SHAPE_WIDTH:I = 0xa


# direct methods
.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/XYChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 47
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    return-void
.end method


# virtual methods
.method public drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFLandroid/graphics/Paint;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    const/high16 v0, 0x4120

    add-float v3, p3, v0

    const/high16 v5, 0x4040

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/achartengine/chart/BubbleChart;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    .line 97
    return-void
.end method

.method public drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FI)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    check-cast p4, Lorg/achartengine/renderer/XYSeriesRenderer;

    .line 62
    invoke-virtual/range {p4 .. p4}, Lorg/achartengine/renderer/XYSeriesRenderer;->getColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    array-length v9, p3

    .line 65
    iget-object v1, p0, Lorg/achartengine/chart/BubbleChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/achartengine/model/XYValueSeries;

    .line 66
    invoke-virtual {v7}, Lorg/achartengine/model/XYValueSeries;->getMaxValue()D

    move-result-wide v1

    .line 68
    const-wide/high16 v3, 0x4034

    div-double v10, v3, v1

    .line 69
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_0

    .line 70
    div-int/lit8 v1, v8, 0x2

    invoke-virtual {v7, v1}, Lorg/achartengine/model/XYValueSeries;->getValue(I)D

    move-result-wide v1

    mul-double/2addr v1, v10

    const-wide/high16 v3, 0x4000

    add-double/2addr v1, v3

    .line 71
    aget v4, p3, v8

    add-int/lit8 v3, v8, 0x1

    aget v5, p3, v3

    double-to-float v6, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/achartengine/chart/BubbleChart;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    .line 69
    add-int/lit8 v1, v8, 0x2

    move v8, v1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public getLegendShapeWidth()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0xa

    return v0
.end method
