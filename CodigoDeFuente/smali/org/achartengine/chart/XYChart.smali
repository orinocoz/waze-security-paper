.class public abstract Lorg/achartengine/chart/XYChart;
.super Lorg/achartengine/chart/AbstractChart;
.source "XYChart.java"


# instance fields
.field private calcRange:[D

.field private mCenter:Landroid/graphics/PointF;

.field protected mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

.field protected mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

.field private mScale:F

.field private mTranslate:F

.field private screenR:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/achartengine/chart/AbstractChart;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->calcRange:[D

    .line 62
    iput-object p1, p0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 63
    iput-object p2, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 64
    return-void
.end method

.method private drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/achartengine/model/XYSeries;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lorg/achartengine/renderer/SimpleSeriesRenderer;",
            "FI",
            "Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {p4}, Lorg/achartengine/util/MathHelper;->getFloats(Ljava/util/List;)[F

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 311
    invoke-virtual/range {v1 .. v7}, Lorg/achartengine/chart/XYChart;->drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FI)V

    .line 312
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lorg/achartengine/chart/XYChart;->isRenderPoints(Lorg/achartengine/renderer/SimpleSeriesRenderer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lorg/achartengine/chart/XYChart;->getPointsChart()Lorg/achartengine/chart/ScatterChart;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_0

    .line 315
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lorg/achartengine/chart/ScatterChart;->drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FI)V

    .line 318
    :cond_0
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartValuesTextSize()F

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 319
    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, p8

    if-ne v0, v1, :cond_2

    .line 320
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 324
    :goto_0
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isDisplayChartValues()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v5, p0

    move-object v6, p2

    move-object v7, p1

    move-object v8, p3

    move-object v9, v4

    move/from16 v10, p7

    .line 325
    invoke-virtual/range {v5 .. v10}, Lorg/achartengine/chart/XYChart;->drawChartValuesText(Landroid/graphics/Canvas;Lorg/achartengine/model/XYSeries;Landroid/graphics/Paint;[FI)V

    .line 327
    :cond_1
    return-void

    .line 322
    :cond_2
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0
.end method

.method private getValidLabels(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 301
    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_1
    return-object v1
.end method

.method private transform(Landroid/graphics/Canvas;FZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 379
    if-eqz p3, :cond_0

    .line 380
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    div-float v0, v2, v0

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 381
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 382
    neg-float v0, p2

    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/achartengine/chart/XYChart;->mCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 388
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 385
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    neg-float v0, v0

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 386
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    div-float v1, v2, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 48
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isAntialiasing()Z

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLegendHeight()I

    move-result v4

    .line 80
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLegend()Z

    move-result v5

    if-eqz v5, :cond_26

    if-nez v4, :cond_26

    .line 81
    div-int/lit8 v4, p5, 0x5

    move/from16 v30, v4

    .line 83
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMargins()[I

    move-result-object v44

    .line 84
    const/4 v4, 0x1

    aget v4, v44, v4

    add-int v41, p2, v4

    .line 85
    const/4 v4, 0x0

    aget v4, v44, v4

    add-int v45, p3, v4

    .line 86
    add-int v4, p2, p4

    const/4 v5, 0x3

    aget v5, v44, v5

    sub-int v14, v4, v5

    .line 87
    add-int v4, p3, p5

    const/4 v5, 0x2

    aget v5, v44, v5

    sub-int/2addr v4, v5

    sub-int v17, v4, v30

    .line 88
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->screenR:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 89
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/achartengine/chart/XYChart;->screenR:Landroid/graphics/Rect;

    .line 91
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->screenR:Landroid/graphics/Rect;

    move/from16 v0, v41

    move/from16 v1, v45

    move/from16 v2, v17

    invoke-virtual {v4, v0, v1, v14, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v4 .. v13}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 94
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceStyle()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 97
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceStyle()I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 100
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v12

    .line 101
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v12, v4, :cond_25

    .line 102
    sub-int v4, v14, v30

    .line 103
    add-int/lit8 v5, v30, -0x14

    add-int v17, v17, v5

    move/from16 v31, v4

    .line 105
    :goto_1
    invoke-virtual {v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->getAngle()I

    move-result v46

    .line 106
    const/16 v4, 0x5a

    move/from16 v0, v46

    if-ne v0, v4, :cond_5

    const/4 v4, 0x1

    move/from16 v32, v4

    .line 107
    :goto_2
    move/from16 v0, p5

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/XYChart;->mScale:F

    .line 108
    sub-int v4, p4, p5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    .line 109
    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/XYChart;->mScale:F

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 110
    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    const/high16 v5, -0x4080

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    .line 112
    :cond_3
    new-instance v4, Landroid/graphics/PointF;

    add-int v5, p2, p4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int v6, p3, p5

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/achartengine/chart/XYChart;->mCenter:Landroid/graphics/PointF;

    .line 113
    if-eqz v32, :cond_4

    .line 114
    move/from16 v0, v46

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    .line 116
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin()D

    move-result-wide v28

    .line 117
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax()D

    move-result-wide v37

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin()D

    move-result-wide v35

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax()D

    move-result-wide v33

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet()Z

    move-result v16

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet()Z

    move-result v18

    .line 122
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinYSet()Z

    move-result v19

    .line 123
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet()Z

    move-result v20

    .line 124
    const-wide/16 v13, 0x0

    .line 125
    const-wide/16 v10, 0x0

    .line 126
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v4}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v21

    .line 127
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    .line 128
    const/4 v4, 0x0

    move v15, v4

    :goto_3
    move/from16 v0, v21

    if-ge v15, v0, :cond_8

    .line 129
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v4, v15}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v4

    .line 130
    invoke-virtual {v4}, Lorg/achartengine/model/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v47, v15

    .line 131
    invoke-virtual {v4}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v5

    if-nez v5, :cond_6

    move-wide/from16 v4, v33

    move-wide/from16 v6, v35

    move-wide/from16 v8, v37

    .line 128
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v33, v4

    move-wide/from16 v35, v6

    move-wide/from16 v37, v8

    goto :goto_3

    .line 106
    :cond_5
    const/4 v4, 0x0

    move/from16 v32, v4

    goto/16 :goto_2

    .line 134
    :cond_6
    if-nez v16, :cond_7

    .line 135
    invoke-virtual {v4}, Lorg/achartengine/model/XYSeries;->getMinX()D

    move-result-wide v5

    .line 136
    move-wide/from16 v0, v28

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    .line 137
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->calcRange:[D

    const/4 v6, 0x0

    aput-wide v28, v5, v6

    .line 139
    :cond_7
    if-nez v18, :cond_24

    .line 140
    invoke-virtual {v4}, Lorg/achartengine/model/XYSeries;->getMaxX()D

    move-result-wide v5

    .line 141
    move-wide/from16 v0, v37

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->calcRange:[D

    const/4 v6, 0x1

    aput-wide v8, v5, v6

    .line 144
    :goto_5
    if-nez v19, :cond_23

    .line 145
    invoke-virtual {v4}, Lorg/achartengine/model/XYSeries;->getMinY()D

    move-result-wide v5

    .line 146
    double-to-float v5, v5

    float-to-double v5, v5

    move-wide/from16 v0, v35

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 147
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->calcRange:[D

    const/16 v22, 0x2

    aput-wide v6, v5, v22

    .line 149
    :goto_6
    if-nez v20, :cond_22

    .line 150
    invoke-virtual {v4}, Lorg/achartengine/model/XYSeries;->getMaxY()D

    move-result-wide v4

    .line 151
    double-to-float v4, v4

    float-to-double v4, v4

    move-wide/from16 v0, v33

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->calcRange:[D

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aput-wide v4, v22, v23

    goto :goto_4

    .line 155
    :cond_8
    sub-double v4, v37, v28

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_21

    .line 156
    sub-int v4, v31, v41

    int-to-double v4, v4

    sub-double v6, v37, v28

    div-double/2addr v4, v6

    move-wide/from16 v42, v4

    .line 158
    :goto_7
    sub-double v4, v33, v35

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_20

    .line 159
    sub-int v4, v17, v45

    int-to-double v4, v4

    sub-double v6, v33, v35

    div-double/2addr v4, v6

    double-to-float v4, v4

    float-to-double v4, v4

    move-wide/from16 v39, v4

    .line 162
    :goto_8
    const/4 v4, 0x0

    .line 163
    const/4 v11, 0x0

    :goto_9
    move/from16 v0, v21

    if-ge v11, v0, :cond_e

    .line 164
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v5, v11}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v5

    .line 165
    invoke-virtual {v5}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v6

    if-nez v6, :cond_9

    .line 163
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 168
    :cond_9
    const/4 v13, 0x1

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v9

    .line 170
    invoke-virtual {v5}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v4

    .line 172
    mul-int/lit8 v15, v4, 0x2

    .line 173
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 174
    const/4 v4, 0x0

    move v14, v4

    :goto_b
    if-ge v14, v15, :cond_c

    .line 175
    div-int/lit8 v4, v14, 0x2

    .line 176
    invoke-virtual {v5, v4}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v6

    .line 177
    const-wide v18, 0x7fefffffffffffffL

    cmpl-double v10, v6, v18

    if-eqz v10, :cond_b

    .line 178
    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual {v5, v4}, Lorg/achartengine/model/XYSeries;->getX(I)D

    move-result-wide v22

    sub-double v22, v22, v28

    mul-double v22, v22, v42

    add-double v18, v18, v22

    move-wide/from16 v0, v18

    double-to-float v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-double v6, v6, v35

    mul-double v6, v6, v39

    sub-double v6, v18, v6

    double-to-float v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_a
    :goto_c
    add-int/lit8 v4, v14, 0x2

    move v14, v4

    goto :goto_b

    .line 181
    :cond_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 182
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v17

    int-to-double v6, v0

    mul-double v18, v39, v35

    add-double v6, v6, v18

    double-to-float v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p6

    invoke-direct/range {v4 .. v12}, Lorg/achartengine/chart/XYChart;->drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;)V

    .line 184
    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto :goto_c

    .line 188
    :cond_c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 189
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v17

    int-to-double v6, v0

    mul-double v14, v39, v35

    add-double/2addr v6, v14

    double-to-float v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p6

    invoke-direct/range {v4 .. v12}, Lorg/achartengine/chart/XYChart;->drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;)V

    :cond_d
    move v4, v13

    goto/16 :goto_a

    .line 195
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    sub-int v19, p5, v17

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v22

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v18, p4

    move-object/from16 v20, p6

    invoke-virtual/range {v13 .. v22}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    aget v24, v44, v5

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v27

    move-object/from16 v18, p0

    move-object/from16 v20, p1

    move/from16 v21, p2

    move/from16 v22, p3

    move/from16 v23, p4

    move-object/from16 v25, p6

    invoke-virtual/range {v18 .. v27}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 199
    sget-object v5, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v12, v5, :cond_13

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v19, v0

    sub-int v23, v41, p2

    sub-int v24, p5, p3

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v27

    move-object/from16 v18, p0

    move-object/from16 v20, p1

    move/from16 v21, p2

    move/from16 v22, p3

    move-object/from16 v25, p6

    invoke-virtual/range {v18 .. v27}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v19, v0

    const/4 v5, 0x3

    aget v23, v44, v5

    sub-int v24, p5, p3

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v27

    move-object/from16 v18, p0

    move-object/from16 v20, p1

    move/from16 v21, v31

    move/from16 v22, p3

    move-object/from16 v25, p6

    invoke-virtual/range {v18 .. v27}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 211
    :cond_f
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    move v10, v4

    .line 212
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGrid()Z

    move-result v13

    .line 213
    if-nez v10, :cond_10

    if-eqz v13, :cond_18

    .line 214
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabels()I

    move-result v4

    move-wide/from16 v0, v28

    move-wide/from16 v2, v37

    invoke-static {v0, v1, v2, v3, v4}, Lorg/achartengine/util/MathHelper;->getLabels(DDI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/achartengine/chart/XYChart;->getValidLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 215
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabels()I

    move-result v4

    move-wide/from16 v0, v35

    move-wide/from16 v2, v33

    invoke-static {v0, v1, v2, v3, v4}, Lorg/achartengine/util/MathHelper;->getLabels(DDI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/achartengine/chart/XYChart;->getValidLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 217
    if-eqz v10, :cond_1f

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v4, v5, :cond_1f

    .line 222
    move/from16 v0, v41

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    const/high16 v6, 0x4080

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v23, v0

    .line 225
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabelLocations()[Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v18, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p6

    move/from16 v24, v45

    move/from16 v25, v17

    move-wide/from16 v26, v42

    invoke-virtual/range {v18 .. v29}, Lorg/achartengine/chart/XYChart;->drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDD)V

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 228
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 229
    const/4 v4, 0x0

    move v11, v4

    :goto_10
    if-ge v11, v15, :cond_17

    .line 230
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 231
    move/from16 v0, v17

    int-to-double v4, v0

    sub-double v6, v18, v35

    mul-double v6, v6, v39

    sub-double/2addr v4, v6

    double-to-float v6, v4

    .line 232
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v12, v4, :cond_15

    .line 233
    if-eqz v10, :cond_11

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    add-int/lit8 v4, v41, -0x4

    int-to-float v5, v4

    move/from16 v0, v41

    int-to-float v7, v0

    move-object/from16 v4, p1

    move v8, v6

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 236
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/chart/XYChart;->getLabel(D)Ljava/lang/String;

    move-result-object v20

    add-int/lit8 v4, v41, -0x2

    int-to-float v0, v4

    move/from16 v21, v0

    const/high16 v4, 0x4000

    sub-float v22, v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v24

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v23, p6

    invoke-virtual/range {v18 .. v24}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 239
    :cond_11
    if-eqz v13, :cond_12

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    move/from16 v0, v41

    int-to-float v5, v0

    move/from16 v0, v31

    int-to-float v7, v0

    move-object/from16 v4, p1

    move v8, v6

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 229
    :cond_12
    :goto_11
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_10

    .line 204
    :cond_13
    sget-object v5, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v12, v5, :cond_f

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v19, v0

    sub-int v23, p4, v31

    sub-int v24, p5, p3

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v27

    move-object/from16 v18, p0

    move-object/from16 v20, p1

    move/from16 v21, v31

    move/from16 v22, p3

    move-object/from16 v25, p6

    invoke-virtual/range {v18 .. v27}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v19, v0

    sub-int v23, v41, p2

    sub-int v24, p5, p3

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v27

    move-object/from16 v18, p0

    move-object/from16 v20, p1

    move/from16 v21, p2

    move/from16 v22, p3

    move-object/from16 v25, p6

    invoke-virtual/range {v18 .. v27}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    goto/16 :goto_d

    .line 211
    :cond_14
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_e

    .line 243
    :cond_15
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v12, v4, :cond_12

    .line 244
    if-eqz v10, :cond_16

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    add-int/lit8 v4, v31, 0x4

    int-to-float v5, v4

    move/from16 v0, v31

    int-to-float v7, v0

    move-object/from16 v4, p1

    move v8, v6

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 247
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/chart/XYChart;->getLabel(D)Ljava/lang/String;

    move-result-object v20

    add-int/lit8 v4, v31, 0xa

    int-to-float v0, v4

    move/from16 v21, v0

    const/high16 v4, 0x4000

    sub-float v22, v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v24

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v23, p6

    invoke-virtual/range {v18 .. v24}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 250
    :cond_16
    if-eqz v13, :cond_12

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    move/from16 v0, v31

    int-to-float v5, v0

    move/from16 v0, v41

    int-to-float v7, v0

    move-object/from16 v4, p1

    move v8, v6

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 257
    :cond_17
    if-eqz v10, :cond_18

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxisTitleTextSize()F

    move-result v11

    .line 260
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 262
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v12, v4, :cond_1c

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTitle()Ljava/lang/String;

    move-result-object v6

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v7, v4

    move/from16 v0, v17

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    const/high16 v8, 0x4080

    mul-float/2addr v5, v8

    const/high16 v8, 0x4040

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    add-float v8, v4, v11

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 264
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p2

    int-to-float v4, v0

    add-float v7, v4, v11

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, p3

    int-to-float v8, v4

    const/high16 v10, -0x3d4c

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitle()Ljava/lang/String;

    move-result-object v6

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v7, v4

    move/from16 v0, p3

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v5

    add-float v8, v4, v5

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 277
    :cond_18
    :goto_12
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v12, v4, :cond_1d

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v20, v0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v21, v47

    move/from16 v22, v41

    move/from16 v23, v31

    move/from16 v24, p3

    move/from16 v25, p4

    move/from16 v26, p5

    move/from16 v27, v30

    move-object/from16 v28, p6

    invoke-virtual/range {v18 .. v28}, Lorg/achartengine/chart/XYChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;)V

    .line 284
    :cond_19
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowAxes()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxesColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    move/from16 v0, v41

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move/from16 v0, v31

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    move-object/from16 v4, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 287
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v12, v4, :cond_1e

    .line 288
    move/from16 v0, v41

    int-to-float v5, v0

    move/from16 v0, v45

    int-to-float v6, v0

    move/from16 v0, v41

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    move-object/from16 v4, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 293
    :cond_1a
    :goto_14
    if-eqz v32, :cond_1b

    .line 294
    move/from16 v0, v46

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    .line 296
    :cond_1b
    return-void

    .line 268
    :cond_1c
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v12, v4, :cond_18

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTitle()Ljava/lang/String;

    move-result-object v6

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v7, v4

    add-int v4, p3, p5

    int-to-float v4, v4

    sub-float v8, v4, v11

    const/high16 v10, -0x3d4c

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v31, 0x14

    int-to-float v7, v4

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, p3

    int-to-float v8, v4

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitle()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p2

    int-to-float v4, v0

    add-float v7, v4, v11

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, v45

    int-to-float v8, v4

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_12

    .line 279
    :cond_1d
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v12, v4, :cond_19

    .line 280
    move/from16 v0, v46

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v20, v0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v21, v47

    move/from16 v22, v41

    move/from16 v23, v31

    move/from16 v24, p3

    move/from16 v25, p4

    move/from16 v26, p5

    move/from16 v27, v30

    move-object/from16 v28, p6

    invoke-virtual/range {v18 .. v28}, Lorg/achartengine/chart/XYChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;)V

    .line 282
    move/from16 v0, v46

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_13

    .line 289
    :cond_1e
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v12, v4, :cond_1a

    .line 290
    move/from16 v0, v31

    int-to-float v5, v0

    move/from16 v0, v45

    int-to-float v6, v0

    move/from16 v0, v31

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    move-object/from16 v4, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_14

    :cond_1f
    move/from16 v23, v41

    goto/16 :goto_f

    :cond_20
    move-wide/from16 v39, v10

    goto/16 :goto_8

    :cond_21
    move-wide/from16 v42, v13

    goto/16 :goto_7

    :cond_22
    move-wide/from16 v4, v33

    goto/16 :goto_4

    :cond_23
    move-wide/from16 v6, v35

    goto/16 :goto_6

    :cond_24
    move-wide/from16 v8, v37

    goto/16 :goto_5

    :cond_25
    move/from16 v31, v14

    goto/16 :goto_1

    :cond_26
    move/from16 v30, v4

    goto/16 :goto_0
.end method

.method protected drawChartValuesText(Landroid/graphics/Canvas;Lorg/achartengine/model/XYSeries;Landroid/graphics/Paint;[FI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    array-length v0, p4

    if-ge v7, v0, :cond_0

    .line 341
    div-int/lit8 v0, v7, 0x2

    invoke-virtual {p2, v0}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/achartengine/chart/XYChart;->getLabel(D)Ljava/lang/String;

    move-result-object v2

    aget v3, p4, v7

    add-int/lit8 v0, v7, 0x1

    aget v0, p4, v0

    const/high16 v1, 0x4060

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 340
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto :goto_0

    .line 343
    :cond_0
    return-void
.end method

.method public abstract drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/SimpleSeriesRenderer;FI)V
.end method

.method protected drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->getAngle()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, p6

    .line 359
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 363
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 364
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    .line 365
    neg-float v0, v0

    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 368
    :cond_1
    return-void
.end method

.method protected drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDD)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;[",
            "Ljava/lang/Double;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "IIIDD)V"
        }
    .end annotation

    .prologue
    .line 421
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    .line 422
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v12

    .line 423
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGrid()Z

    move-result v13

    .line 424
    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_2

    .line 425
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 426
    move/from16 v0, p5

    int-to-double v1, v0

    sub-double v3, v7, p10

    mul-double v3, v3, p8

    add-double/2addr v1, v3

    double-to-float v2, v1

    .line 427
    if-eqz v12, :cond_0

    .line 428
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v4, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v4

    const/high16 v5, 0x4040

    div-float/2addr v4, v5

    add-float v5, v1, v4

    move-object/from16 v1, p3

    move v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 430
    invoke-virtual {p0, v7, v8}, Lorg/achartengine/chart/XYChart;->getLabel(D)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v3, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v3

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    add-float v7, v1, v3

    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v9

    move-object v3, p0

    move-object/from16 v4, p3

    move v6, v2

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 432
    :cond_0
    if-eqz v13, :cond_1

    .line 433
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v1, p3

    move v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 424
    :cond_1
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    .line 437
    :cond_2
    if-eqz v12, :cond_3

    .line 438
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    move-object/from16 v0, p2

    array-length v11, v0

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v11, :cond_3

    aget-object v7, p2, v10

    .line 440
    move/from16 v0, p5

    int-to-double v1, v0

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double v3, v3, p10

    mul-double v3, v3, p8

    add-double/2addr v1, v3

    double-to-float v2, v1

    .line 441
    move/from16 v0, p7

    int-to-float v3, v0

    add-int/lit8 v1, p7, 0x4

    int-to-float v5, v1

    move-object/from16 v1, p3

    move v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 442
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v3, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v3

    add-float v7, v1, v3

    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v9

    move-object v3, p0

    move-object/from16 v4, p3

    move v6, v2

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 439
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    .line 446
    :cond_3
    return-void
.end method

.method public getCalcRange()[D
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->calcRange:[D

    return-object v0
.end method

.method public getDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-object v0
.end method

.method public getDefaultMinimum()D
    .locals 2

    .prologue
    .line 510
    const-wide v0, 0x7fefffffffffffffL

    return-wide v0
.end method

.method protected getLabel(D)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 397
    const-string v0, ""

    .line 398
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPointsChart()Lorg/achartengine/chart/ScatterChart;
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-object v0
.end method

.method public isRenderPoints(Lorg/achartengine/renderer/SimpleSeriesRenderer;)Z
    .locals 1
    .parameter

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public toRealPoint(FF)Landroid/graphics/PointF;
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin()D

    move-result-wide v0

    .line 463
    iget-object v2, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax()D

    move-result-wide v2

    .line 464
    iget-object v4, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin()D

    move-result-wide v4

    .line 465
    iget-object v6, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax()D

    move-result-wide v6

    .line 466
    new-instance v8, Landroid/graphics/PointF;

    iget-object v9, p0, Lorg/achartengine/chart/XYChart;->screenR:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v9, p1, v9

    float-to-double v9, v9

    sub-double/2addr v2, v0

    mul-double/2addr v2, v9

    iget-object v9, p0, Lorg/achartengine/chart/XYChart;->screenR:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v2, v9

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->screenR:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/achartengine/chart/XYChart;->screenR:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    float-to-double v1, v1

    sub-double/2addr v6, v4

    mul-double/2addr v1, v6

    iget-object v3, p0, Lorg/achartengine/chart/XYChart;->screenR:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v1, v6

    add-double/2addr v1, v4

    double-to-float v1, v1

    invoke-direct {v8, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v8
.end method

.method public toScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 13
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin()D

    move-result-wide v0

    .line 474
    iget-object v2, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax()D

    move-result-wide v2

    .line 475
    iget-object v4, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin()D

    move-result-wide v4

    .line 476
    iget-object v6, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax()D

    move-result-wide v6

    .line 477
    new-instance v8, Landroid/graphics/PointF;

    iget v9, p1, Landroid/graphics/PointF;->x:F

    float-to-double v9, v9

    sub-double/2addr v9, v0

    iget-object v11, p0, Lorg/achartengine/chart/XYChart;->screenR:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-double v11, v11

    mul-double/2addr v9, v11

    sub-double v0, v2, v0

    div-double v0, v9, v0

    iget-object v2, p0, Lorg/achartengine/chart/XYChart;->screenR:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v1, v1

    sub-double v1, v6, v1

    iget-object v3, p0, Lorg/achartengine/chart/XYChart;->screenR:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v9, v3

    mul-double/2addr v1, v9

    sub-double v3, v6, v4

    div-double/2addr v1, v3

    iget-object v3, p0, Lorg/achartengine/chart/XYChart;->screenR:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    invoke-direct {v8, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v8
.end method
