.class public Lorg/achartengine/chart/DoughnutChart;
.super Lorg/achartengine/chart/AbstractChart;
.source "DoughnutChart.java"


# static fields
.field private static final SHAPE_WIDTH:I = 0xa


# instance fields
.field private mDataset:Lorg/achartengine/model/MultipleCategorySeries;

.field private mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

.field private mStep:I


# direct methods
.method public constructor <init>(Lorg/achartengine/model/MultipleCategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/achartengine/chart/AbstractChart;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    .line 50
    iput-object p2, p0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    .line 51
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 39
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->isAntialiasing()Z

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendHeight()I

    move-result v2

    .line 69
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v2, :cond_7

    .line 70
    div-int/lit8 v2, p5, 0x5

    move v12, v2

    .line 72
    :goto_0
    add-int/lit8 v22, p2, 0xf

    .line 73
    add-int/lit8 v13, p3, 0x5

    .line 74
    add-int v2, p2, p4

    add-int/lit8 v23, v2, -0x5

    .line 75
    add-int v2, p3, p5

    sub-int v14, v2, v12

    .line 76
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v11}, Lorg/achartengine/chart/DoughnutChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 77
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lorg/achartengine/chart/DoughnutChart;->mStep:I

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    invoke-virtual {v2}, Lorg/achartengine/model/MultipleCategorySeries;->getCategoriesCount()I

    move-result v24

    .line 80
    sub-int v2, v23, v22

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, v14, v13

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 81
    const-wide v2, 0x3fd6666666666666L

    .line 82
    const-wide v4, 0x3fc999999999999aL

    move/from16 v0, v24

    int-to-double v6, v0

    div-double v26, v4, v6

    .line 83
    move/from16 v0, v25

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v4, v2

    .line 84
    add-int v2, v22, v23

    div-int/lit8 v28, v2, 0x2

    .line 85
    add-int v2, v14, v13

    div-int/lit8 v29, v2, 0x2

    .line 86
    int-to-float v2, v4

    const v3, 0x3f666666

    mul-float/2addr v3, v2

    .line 87
    int-to-float v2, v4

    const v5, 0x3f8ccccd

    mul-float v30, v2, v5

    .line 88
    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    .line 89
    const/4 v2, 0x0

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/achartengine/model/MultipleCategorySeries;->getItemCount(I)I

    move-result v32

    .line 91
    const-wide/16 v3, 0x0

    .line 92
    move/from16 v0, v32

    new-array v5, v0, [Ljava/lang/String;

    .line 93
    const/4 v2, 0x0

    move-wide/from16 v17, v3

    :goto_2
    move/from16 v0, v32

    if-ge v2, v0, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/achartengine/model/MultipleCategorySeries;->getValues(I)[D

    move-result-object v3

    aget-wide v3, v3, v2

    add-double v3, v3, v17

    .line 95
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/achartengine/model/MultipleCategorySeries;->getTitles(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 93
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v17, v3

    goto :goto_2

    .line 97
    :cond_0
    const/4 v4, 0x0

    .line 98
    new-instance v3, Landroid/graphics/RectF;

    sub-int v2, v28, v21

    int-to-float v2, v2

    sub-int v5, v29, v21

    int-to-float v5, v5

    add-int v6, v28, v21

    int-to-float v6, v6

    add-int v7, v29, v21

    int-to-float v7, v7

    invoke-direct {v3, v2, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 99
    const/4 v9, 0x0

    .line 100
    const/4 v8, 0x0

    .line 101
    const/high16 v33, 0x41a0

    .line 102
    const/high16 v14, 0x3f80

    .line 103
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/achartengine/model/MultipleCategorySeries;->getValues(I)[D

    move-result-object v2

    aget-wide v5, v2, v16

    double-to-float v2, v5

    .line 106
    float-to-double v5, v2

    div-double v5, v5, v17

    const-wide v10, 0x4076800000000000L

    mul-double/2addr v5, v10

    double-to-float v5, v5

    .line 107
    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLabels()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsColor()I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    const/high16 v2, 0x42b4

    const/high16 v6, 0x4000

    div-float v6, v5, v6

    add-float/2addr v6, v4

    sub-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 111
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 112
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    .line 113
    move/from16 v0, v28

    int-to-float v2, v0

    move/from16 v0, v20

    float-to-double v6, v0

    mul-double/2addr v6, v10

    double-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 114
    move/from16 v0, v29

    int-to-float v2, v0

    move/from16 v0, v20

    float-to-double v6, v0

    mul-double v6, v6, v34

    double-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v36

    .line 115
    move/from16 v0, v28

    int-to-float v2, v0

    move/from16 v0, v30

    float-to-double v6, v0

    mul-double/2addr v6, v10

    double-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 116
    move/from16 v0, v29

    int-to-float v2, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v37, v0

    mul-double v37, v37, v34

    move-wide/from16 v0, v37

    double-to-float v7, v0

    add-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 117
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

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v37, v0

    cmpg-double v7, v7, v37

    if-gtz v7, :cond_2

    .line 118
    float-to-double v6, v14

    const-wide v8, 0x3ff199999999999aL

    mul-double/2addr v6, v8

    double-to-float v7, v6

    .line 119
    move/from16 v0, v28

    int-to-float v2, v0

    mul-float v6, v30, v7

    float-to-double v8, v6

    mul-double/2addr v8, v10

    double-to-float v6, v8

    add-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 120
    move/from16 v0, v29

    int-to-float v2, v0

    mul-float v8, v30, v7

    float-to-double v8, v8

    mul-double v8, v8, v34

    double-to-float v8, v8

    add-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v13, v6

    move v14, v7

    .line 124
    :goto_4
    int-to-float v7, v15

    move/from16 v0, v36

    int-to-float v8, v0

    int-to-float v9, v13

    int-to-float v10, v2

    move-object/from16 v6, p1

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 125
    const/16 v6, 0xa

    .line 126
    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 127
    if-le v15, v13, :cond_1

    .line 128
    neg-int v6, v6

    .line 129
    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_1
    move v15, v6

    .line 131
    int-to-float v7, v13

    int-to-float v8, v2

    add-int v6, v13, v15

    int-to-float v9, v6

    int-to-float v10, v2

    move-object/from16 v6, p1

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/achartengine/model/MultipleCategorySeries;->getTitles(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v16

    add-int v7, v13, v15

    int-to-float v7, v7

    add-int/lit8 v8, v2, 0x5

    int-to-float v8, v8

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v6, v7, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    int-to-float v6, v13

    .line 134
    int-to-float v2, v2

    .line 136
    :goto_5
    add-float/2addr v5, v4

    .line 103
    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    move v8, v2

    move v9, v6

    move v4, v5

    goto/16 :goto_3

    .line 122
    :cond_2
    const/high16 v7, 0x3f80

    move v13, v6

    move v14, v7

    goto :goto_4

    .line 138
    :cond_3
    move/from16 v0, v21

    int-to-double v2, v0

    move/from16 v0, v25

    int-to-double v4, v0

    mul-double v4, v4, v26

    sub-double/2addr v2, v4

    double-to-int v9, v2

    .line 139
    move/from16 v0, v20

    float-to-double v2, v0

    move/from16 v0, v25

    int-to-double v4, v0

    mul-double v4, v4, v26

    const-wide/high16 v6, 0x4000

    sub-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v8, v2

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->getBackgroundColor()I

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->getBackgroundColor()I

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    :goto_6
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    new-instance v3, Landroid/graphics/RectF;

    sub-int v2, v28, v9

    int-to-float v2, v2

    sub-int v4, v29, v9

    int-to-float v4, v4

    add-int v5, v28, v9

    int-to-float v5, v5

    add-int v6, v29, v9

    int-to-float v6, v6

    invoke-direct {v3, v2, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 147
    const/4 v4, 0x0

    const/high16 v5, 0x43b4

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 148
    add-int/lit8 v3, v9, -0x1

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mDataset:Lorg/achartengine/model/MultipleCategorySeries;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/achartengine/model/MultipleCategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v31, v19

    .line 89
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    move/from16 v20, v8

    move/from16 v21, v3

    goto/16 :goto_1

    .line 143
    :cond_4
    const/4 v2, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 151
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, v31

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move v11, v12

    move-object/from16 v12, p6

    invoke-virtual/range {v2 .. v12}, Lorg/achartengine/chart/DoughnutChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;)V

    .line 152
    return-void

    :cond_6
    move v2, v8

    move v6, v9

    goto/16 :goto_5

    :cond_7
    move v12, v2

    goto/16 :goto_0
.end method

.method public drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFLandroid/graphics/Paint;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iget v0, p0, Lorg/achartengine/chart/DoughnutChart;->mStep:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/achartengine/chart/DoughnutChart;->mStep:I

    .line 175
    const/high16 v0, 0x4120

    add-float/2addr v0, p3

    iget v1, p0, Lorg/achartengine/chart/DoughnutChart;->mStep:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/achartengine/chart/DoughnutChart;->mStep:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, p4, v1, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 176
    return-void
.end method

.method public getLegendShapeWidth()I
    .locals 1

    .prologue
    .line 160
    const/16 v0, 0xa

    return v0
.end method
