.class public Lorg/achartengine/chart/ScatterChart;
.super Lorg/achartengine/chart/XYChart;
.source "ScatterChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/achartengine/chart/ScatterChart$1;
    }
.end annotation


# static fields
.field private static final SHAPE_WIDTH:I = 0xa

.field private static final SIZE:F = 3.0f


# instance fields
.field private size:F


# direct methods
.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/XYChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 36
    const/high16 v0, 0x4040

    iput v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    .line 46
    invoke-virtual {p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getPointSize()F

    move-result v0

    iput v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    .line 47
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    return-void
.end method

.method private drawDiamond(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 216
    const/4 v0, 0x0

    aput p4, p3, v0

    .line 217
    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    sub-float v0, p5, v0

    aput v0, p3, v2

    .line 218
    const/4 v0, 0x2

    iget v1, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    sub-float v1, p4, v1

    aput v1, p3, v0

    .line 219
    const/4 v0, 0x3

    aput p5, p3, v0

    .line 220
    const/4 v0, 0x4

    aput p4, p3, v0

    .line 221
    const/4 v0, 0x5

    iget v1, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    add-float/2addr v1, p5

    aput v1, p3, v0

    .line 222
    const/4 v0, 0x6

    iget v1, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    add-float/2addr v1, p4

    aput v1, p3, v0

    .line 223
    const/4 v0, 0x7

    aput p5, p3, v0

    .line 224
    invoke-virtual {p0, p1, p3, p2, v2}, Lorg/achartengine/chart/ScatterChart;->drawPath(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V

    .line 225
    return-void
.end method

.method private drawSquare(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    sub-float v1, p3, v0

    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    sub-float v2, p4, v0

    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    add-float v3, p3, v0

    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    add-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 204
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 185
    const/4 v0, 0x0

    aput p4, p3, v0

    .line 186
    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    sub-float v0, p5, v0

    iget v1, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p3, v3

    .line 187
    const/4 v0, 0x2

    iget v1, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    sub-float v1, p4, v1

    aput v1, p3, v0

    .line 188
    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    add-float/2addr v0, p5

    aput v0, p3, v4

    .line 189
    const/4 v0, 0x4

    iget v1, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    add-float/2addr v1, p4

    aput v1, p3, v0

    .line 190
    const/4 v0, 0x5

    aget v1, p3, v4

    aput v1, p3, v0

    .line 191
    invoke-virtual {p0, p1, p3, p2, v3}, Lorg/achartengine/chart/ScatterChart;->drawPath(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V

    .line 192
    return-void
.end method

.method private drawX(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    sub-float v1, p3, v0

    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    sub-float v2, p4, v0

    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    add-float v3, p3, v0

    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    add-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    add-float v1, p3, v0

    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    sub-float v2, p4, v0

    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    sub-float v3, p3, v0

    iget v0, p0, Lorg/achartengine/chart/ScatterChart;->size:F

    add-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 161
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
    const/high16 v2, 0x4120

    .line 123
    move-object v0, p2

    check-cast v0, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYSeriesRenderer;->isFillPoints()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    :goto_0
    sget-object v0, Lorg/achartengine/chart/ScatterChart$1;->$SwitchMap$org$achartengine$chart$PointStyle:[I

    check-cast p2, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-virtual {p2}, Lorg/achartengine/renderer/XYSeriesRenderer;->getPointStyle()Lorg/achartengine/chart/PointStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/achartengine/chart/PointStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_1
    return-void

    .line 126
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 130
    :pswitch_0
    add-float v0, p3, v2

    invoke-direct {p0, p1, p5, v0, p4}, Lorg/achartengine/chart/ScatterChart;->drawX(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_1

    .line 133
    :pswitch_1
    add-float v0, p3, v2

    invoke-direct {p0, p1, p5, v0, p4}, Lorg/achartengine/chart/ScatterChart;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_1

    .line 136
    :pswitch_2
    const/4 v0, 0x6

    new-array v3, v0, [F

    add-float v4, p3, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/achartengine/chart/ScatterChart;->drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    goto :goto_1

    .line 139
    :pswitch_3
    add-float v0, p3, v2

    invoke-direct {p0, p1, p5, v0, p4}, Lorg/achartengine/chart/ScatterChart;->drawSquare(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_1

    .line 142
    :pswitch_4
    const/16 v0, 0x8

    new-array v3, v0, [F

    add-float v4, p3, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/achartengine/chart/ScatterChart;->drawDiamond(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    goto :goto_1

    .line 145
    :pswitch_5
    add-float v0, p3, v2

    invoke-virtual {p1, v0, p4, p5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 61
    check-cast p4, Lorg/achartengine/renderer/XYSeriesRenderer;

    .line 62
    invoke-virtual {p4}, Lorg/achartengine/renderer/XYSeriesRenderer;->getColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    invoke-virtual {p4}, Lorg/achartengine/renderer/XYSeriesRenderer;->isFillPoints()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    :goto_0
    array-length v7, p3

    .line 69
    sget-object v1, Lorg/achartengine/chart/ScatterChart$1;->$SwitchMap$org$achartengine$chart$PointStyle:[I

    invoke-virtual {p4}, Lorg/achartengine/renderer/XYSeriesRenderer;->getPointStyle()Lorg/achartengine/chart/PointStyle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/achartengine/chart/PointStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 101
    :cond_0
    :goto_1
    return-void

    .line 66
    :cond_1
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 71
    :goto_2
    :pswitch_0
    if-ge v0, v7, :cond_0

    .line 72
    aget v1, p3, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p3, v2

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/achartengine/chart/ScatterChart;->drawX(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 71
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 76
    :goto_3
    :pswitch_1
    if-ge v0, v7, :cond_0

    .line 77
    aget v1, p3, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p3, v2

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/achartengine/chart/ScatterChart;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 76
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 81
    :pswitch_2
    const/4 v1, 0x6

    new-array v3, v1, [F

    move v6, v0

    .line 82
    :goto_4
    if-ge v6, v7, :cond_0

    .line 83
    aget v4, p3, v6

    add-int/lit8 v0, v6, 0x1

    aget v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/achartengine/chart/ScatterChart;->drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    .line 82
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_4

    .line 87
    :goto_5
    :pswitch_3
    if-ge v0, v7, :cond_0

    .line 88
    aget v1, p3, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p3, v2

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/achartengine/chart/ScatterChart;->drawSquare(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 87
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 92
    :pswitch_4
    const/16 v1, 0x8

    new-array v3, v1, [F

    move v6, v0

    .line 93
    :goto_6
    if-ge v6, v7, :cond_0

    .line 94
    aget v4, p3, v6

    add-int/lit8 v0, v6, 0x1

    aget v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/achartengine/chart/ScatterChart;->drawDiamond(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    .line 93
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_6

    .line 98
    :pswitch_5
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    goto :goto_1

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getLegendShapeWidth()I
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0xa

    return v0
.end method
