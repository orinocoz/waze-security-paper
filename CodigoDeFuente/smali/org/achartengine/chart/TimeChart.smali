.class public Lorg/achartengine/chart/TimeChart;
.super Lorg/achartengine/chart/LineChart;
.source "TimeChart.java"


# static fields
.field public static final DAY:J = 0x5265c00L


# instance fields
.field private mDateFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/LineChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 46
    return-void
.end method

.method private getDateFormat(DD)Ljava/text/DateFormat;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const-wide v5, 0x4194997000000000L

    .line 106
    iget-object v0, p0, Lorg/achartengine/chart/TimeChart;->mDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 109
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/achartengine/chart/TimeChart;->mDateFormat:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 115
    :cond_1
    invoke-static {v7}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 116
    sub-double v1, p3, p1

    .line 117
    cmpl-double v3, v1, v5

    if-lez v3, :cond_2

    const-wide v3, 0x41b9bfcc00000000L

    cmpg-double v3, v1, v3

    if-gez v3, :cond_2

    .line 118
    invoke-static {v8, v8}, Ljava/text/SimpleDateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    cmpg-double v1, v1, v5

    if-gez v1, :cond_0

    .line 120
    invoke-static {v7}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDD)V
    .locals 15
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
    .line 80
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 81
    iget-object v1, p0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v12

    .line 82
    iget-object v1, p0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGrid()Z

    move-result v13

    .line 83
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-int/lit8 v1, v11, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/achartengine/chart/TimeChart;->getDateFormat(DD)Ljava/text/DateFormat;

    move-result-object v14

    .line 84
    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_2

    .line 85
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    .line 86
    move/from16 v0, p5

    int-to-double v1, v0

    long-to-double v3, v7

    sub-double v3, v3, p10

    mul-double v3, v3, p8

    add-double/2addr v1, v3

    double-to-float v2, v1

    .line 87
    if-eqz v12, :cond_0

    .line 88
    iget-object v1, p0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v4, p0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v4

    const/high16 v5, 0x4040

    div-float/2addr v4, v5

    add-float v5, v1, v4

    move-object/from16 v1, p3

    move v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v3, p0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v3

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    add-float v7, v1, v3

    iget-object v1, p0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v9

    move-object v3, p0

    move-object/from16 v4, p3

    move v6, v2

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lorg/achartengine/chart/TimeChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 92
    :cond_0
    if-eqz v13, :cond_1

    .line 93
    iget-object v1, p0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v1, p3

    move v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 84
    :cond_1
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_0

    .line 97
    :cond_2
    return-void
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/achartengine/chart/TimeChart;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lorg/achartengine/chart/TimeChart;->mDateFormat:Ljava/lang/String;

    .line 63
    return-void
.end method
