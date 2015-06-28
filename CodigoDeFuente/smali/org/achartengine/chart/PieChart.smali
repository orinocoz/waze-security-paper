.class public Lorg/achartengine/chart/PieChart;
.super Lorg/achartengine/chart/AbstractChart;
.source "PieChart.java"


# static fields
.field private static final SHAPE_WIDTH:I = 0xa


# instance fields
.field private mDataset:Lorg/achartengine/model/CategorySeries;

.field private mRenderer:Lorg/achartengine/renderer/DefaultRenderer;


# direct methods
.method public constructor <init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/achartengine/chart/AbstractChart;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    .line 47
    iput-object p2, p0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    .line 48
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 33
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->isAntialiasing()Z

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendHeight()I

    move-result v2

    .line 66
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 67
    div-int/lit8 v2, p5, 0x5

    move v12, v2

    .line 69
    :goto_0
    add-int/lit8 v19, p2, 0xf

    .line 70
    add-int/lit8 v13, p3, 0x5

    .line 71
    add-int v2, p2, p4

    add-int/lit8 v20, v2, -0x5

    .line 72
    add-int v2, p3, p5

    sub-int v14, v2, v12

    .line 73
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v11}, Lorg/achartengine/chart/PieChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v2}, Lorg/achartengine/model/CategorySeries;->getItemCount()I

    move-result v21

    .line 76
    const-wide/16 v3, 0x0

    .line 77
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 78
    const/4 v2, 0x0

    move-wide/from16 v17, v3

    :goto_1
    move/from16 v0, v21

    if-ge v2, v0, :cond_0

    .line 79
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v3, v2}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v3

    add-double v3, v3, v17

    .line 80
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v5, v2}, Lorg/achartengine/model/CategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v22, v2

    .line 78
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v17, v3

    goto :goto_1

    .line 82
    :cond_0
    const/4 v4, 0x0

    .line 83
    sub-int v2, v20, v19

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, v14, v13

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 84
    int-to-double v2, v2

    const-wide v5, 0x3fd6666666666666L

    mul-double/2addr v2, v5

    double-to-int v2, v2

    .line 85
    add-int v3, v19, v20

    div-int/lit8 v23, v3, 0x2

    .line 86
    add-int v3, v14, v13

    div-int/lit8 v24, v3, 0x2

    .line 87
    int-to-float v3, v2

    const v5, 0x3f666666

    mul-float v25, v3, v5

    .line 88
    int-to-float v3, v2

    const v5, 0x3f8ccccd

    mul-float v26, v3, v5

    .line 89
    const/4 v9, 0x0

    .line 90
    const/4 v8, 0x0

    .line 91
    const/high16 v27, 0x41a0

    .line 92
    const/high16 v14, 0x3f80

    .line 93
    new-instance v3, Landroid/graphics/RectF;

    sub-int v5, v23, v2

    int-to-float v5, v5

    sub-int v6, v24, v2

    int-to-float v6, v6

    add-int v7, v23, v2

    int-to-float v7, v7

    add-int v2, v2, v24

    int-to-float v2, v2

    invoke-direct {v3, v5, v6, v7, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 94
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v5

    double-to-float v2, v5

    .line 97
    float-to-double v5, v2

    div-double v5, v5, v17

    const-wide v10, 0x4076800000000000L

    mul-double/2addr v5, v10

    double-to-float v5, v5

    .line 98
    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLabels()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsColor()I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    const/high16 v2, 0x42b4

    const/high16 v6, 0x4000

    div-float v6, v5, v6

    add-float/2addr v6, v4

    sub-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 102
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 103
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    .line 104
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v25

    float-to-double v6, v0

    mul-double/2addr v6, v10

    double-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 105
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v25

    float-to-double v6, v0

    mul-double v6, v6, v28

    double-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v30

    .line 106
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v26

    float-to-double v6, v0

    mul-double/2addr v6, v10

    double-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 107
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v31, v31, v28

    move-wide/from16 v0, v31

    double-to-float v7, v0

    add-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 108
    int-to-float v7, v6

    sub-float/2addr v7, v9

    int-to-float v13, v6

    sub-float v9, v13, v9

    mul-float/2addr v7, v9

    int-to-float v9, v2

    sub-float/2addr v9, v8

    int-to-float v13, v2

    sub-float v8, v13, v8

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v31, v0

    cmpg-double v7, v7, v31

    if-gtz v7, :cond_2

    .line 109
    float-to-double v6, v14

    const-wide v8, 0x3ff199999999999aL

    mul-double/2addr v6, v8

    double-to-float v7, v6

    .line 110
    move/from16 v0, v23

    int-to-float v2, v0

    mul-float v6, v26, v7

    float-to-double v8, v6

    mul-double/2addr v8, v10

    double-to-float v6, v8

    add-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 111
    move/from16 v0, v24

    int-to-float v2, v0

    mul-float v8, v26, v7

    float-to-double v8, v8

    mul-double v8, v8, v28

    double-to-float v8, v8

    add-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v13, v6

    move v14, v7

    .line 115
    :goto_3
    int-to-float v7, v15

    move/from16 v0, v30

    int-to-float v8, v0

    int-to-float v9, v13

    int-to-float v10, v2

    move-object/from16 v6, p1

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 116
    const/16 v6, 0xa

    .line 117
    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 118
    if-le v15, v13, :cond_1

    .line 119
    neg-int v6, v6

    .line 120
    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_1
    move v15, v6

    .line 122
    int-to-float v7, v13

    int-to-float v8, v2

    add-int v6, v13, v15

    int-to-float v9, v6

    int-to-float v10, v2

    move-object/from16 v6, p1

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/achartengine/model/CategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v6

    add-int v7, v13, v15

    int-to-float v7, v7

    add-int/lit8 v8, v2, 0x5

    int-to-float v8, v8

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v6, v7, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    int-to-float v6, v13

    .line 125
    int-to-float v2, v2

    .line 127
    :goto_4
    add-float/2addr v5, v4

    .line 94
    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    move v8, v2

    move v9, v6

    move v4, v5

    goto/16 :goto_2

    .line 113
    :cond_2
    const/high16 v7, 0x3f80

    move v13, v6

    move v14, v7

    goto :goto_3

    .line 129
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, v22

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move v11, v12

    move-object/from16 v12, p6

    invoke-virtual/range {v2 .. v12}, Lorg/achartengine/chart/PieChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;)V

    .line 130
    return-void

    :cond_4
    move v2, v8

    move v6, v9

    goto :goto_4

    :cond_5
    move v12, v2

    goto/16 :goto_0
.end method

.method public drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFLandroid/graphics/Paint;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x40a0

    .line 152
    sub-float v2, p4, v1

    const/high16 v0, 0x4120

    add-float v3, p3, v0

    add-float v4, p4, v1

    move-object v0, p1

    move v1, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    return-void
.end method

.method public getLegendShapeWidth()I
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0xa

    return v0
.end method
