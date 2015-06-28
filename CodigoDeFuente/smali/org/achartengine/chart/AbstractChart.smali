.class public abstract Lorg/achartengine/chart/AbstractChart;
.super Ljava/lang/Object;
.source "AbstractChart.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getExceed(FLorg/achartengine/renderer/DefaultRenderer;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    int-to-float v0, p3

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 136
    :goto_0
    invoke-direct {p0, p2}, Lorg/achartengine/chart/AbstractChart;->isVertical(Lorg/achartengine/renderer/DefaultRenderer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    int-to-float v0, p4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 139
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0

    :cond_1
    move v1, v2

    .line 137
    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private isVertical(Lorg/achartengine/renderer/DefaultRenderer;)Z
    .locals 2
    .parameter

    .prologue
    .line 149
    instance-of v0, p1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v0

    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
.end method

.method protected drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->isApplyBackgroundColor()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p8, :cond_1

    .line 65
    :cond_0
    if-eqz p8, :cond_2

    .line 66
    invoke-virtual {p7, p9}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, p5

    int-to-float v3, v0

    add-int v0, p4, p6

    int-to-float v4, v0

    move-object v0, p2

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    :cond_1
    return-void

    .line 68
    :cond_2
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method protected drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p2}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    move/from16 v0, p4

    int-to-float v5, v0

    .line 93
    add-int v2, p6, p8

    sub-int v2, v2, p9

    add-int/lit8 v2, v2, 0x20

    int-to-float v6, v2

    .line 94
    invoke-virtual {p0}, Lorg/achartengine/chart/AbstractChart;->getLegendShapeWidth()I

    move-result v2

    int-to-float v10, v2

    .line 95
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    invoke-virtual {p2}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v2

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    move-object/from16 v0, p3

    array-length v2, v0

    invoke-virtual {p2}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 98
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v11, :cond_4

    .line 99
    aget-object v3, p3, v9

    .line 100
    move-object/from16 v0, p3

    array-length v2, v0

    invoke-virtual {p2}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererCount()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 101
    invoke-virtual {p2, v9}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v2

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    new-array v7, v2, [F

    .line 106
    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v7}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 107
    const/4 v4, 0x0

    .line 108
    array-length v8, v7

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_1

    aget v12, v7, v2

    .line 109
    add-float/2addr v4, v12

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 103
    :cond_0
    const v2, -0x333334

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 111
    :cond_1
    const/high16 v2, 0x4120

    add-float/2addr v2, v10

    add-float v12, v2, v4

    .line 112
    add-float v2, v5, v12

    .line 114
    if-lez v9, :cond_2

    move/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v2, p2, v0, v1}, Lorg/achartengine/chart/AbstractChart;->getExceed(FLorg/achartengine/renderer/DefaultRenderer;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    move/from16 v0, p4

    int-to-float v5, v0

    .line 116
    invoke-virtual {p2}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v2

    add-float/2addr v6, v2

    .line 117
    add-float v2, v5, v12

    .line 119
    :cond_2
    move/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v2, p2, v0, v1}, Lorg/achartengine/chart/AbstractChart;->getExceed(FLorg/achartengine/renderer/DefaultRenderer;II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    move/from16 v0, p5

    int-to-float v2, v0

    sub-float/2addr v2, v5

    sub-float/2addr v2, v10

    const/high16 v4, 0x4120

    sub-float/2addr v2, v4

    .line 121
    invoke-direct {p0, p2}, Lorg/achartengine/chart/AbstractChart;->isVertical(Lorg/achartengine/renderer/DefaultRenderer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    move/from16 v0, p7

    int-to-float v2, v0

    sub-float/2addr v2, v5

    sub-float/2addr v2, v10

    const/high16 v4, 0x4120

    sub-float/2addr v2, v4

    .line 124
    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v4, v2, v7}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v2

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 127
    :goto_3
    invoke-virtual {p2, v9}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v7, p10

    invoke-virtual/range {v2 .. v7}, Lorg/achartengine/chart/AbstractChart;->drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFLandroid/graphics/Paint;)V

    .line 128
    add-float v2, v5, v10

    const/high16 v3, 0x40a0

    add-float/2addr v2, v3

    const/high16 v3, 0x40a0

    add-float/2addr v3, v6

    move-object/from16 v0, p10

    invoke-virtual {p1, v8, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    add-float/2addr v5, v12

    .line 98
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_0

    .line 132
    :cond_4
    return-void

    :cond_5
    move-object v8, v3

    goto :goto_3
.end method

.method public abstract drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFLandroid/graphics/Paint;)V
.end method

.method protected drawPath(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 163
    aget v0, p2, v4

    aget v2, p2, v5

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 164
    const/4 v0, 0x2

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 165
    aget v2, p2, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, p2, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 167
    :cond_0
    if-eqz p4, :cond_1

    .line 168
    aget v0, p2, v4

    aget v2, p2, v5

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    :cond_1
    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 171
    return-void
.end method

.method public abstract getLegendShapeWidth()I
.end method
