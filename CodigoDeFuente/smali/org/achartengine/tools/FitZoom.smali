.class public Lorg/achartengine/tools/FitZoom;
.super Lorg/achartengine/tools/AbstractTool;
.source "FitZoom.java"


# direct methods
.method public constructor <init>(Lorg/achartengine/chart/XYChart;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/achartengine/tools/AbstractTool;-><init>(Lorg/achartengine/chart/XYChart;)V

    .line 30
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 15

    .prologue
    const-wide/high16 v13, 0x4044

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 36
    iget-object v0, p0, Lorg/achartengine/tools/FitZoom;->mChart:Lorg/achartengine/chart/XYChart;

    invoke-virtual {v0}, Lorg/achartengine/chart/XYChart;->getDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isInitialRangeSet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    iget-object v1, p0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getInitialRange()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setRange([D)V

    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lorg/achartengine/tools/FitZoom;->mChart:Lorg/achartengine/chart/XYChart;

    invoke-virtual {v0}, Lorg/achartengine/chart/XYChart;->getDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeries()[Lorg/achartengine/model/XYSeries;

    move-result-object v2

    .line 44
    array-length v3, v2

    .line 45
    if-lez v3, :cond_0

    .line 46
    const/4 v0, 0x4

    new-array v4, v0, [D

    aget-object v0, v2, v10

    invoke-virtual {v0}, Lorg/achartengine/model/XYSeries;->getMinX()D

    move-result-wide v5

    aput-wide v5, v4, v10

    aget-object v0, v2, v10

    invoke-virtual {v0}, Lorg/achartengine/model/XYSeries;->getMaxX()D

    move-result-wide v5

    aput-wide v5, v4, v1

    iget-object v0, p0, Lorg/achartengine/tools/FitZoom;->mChart:Lorg/achartengine/chart/XYChart;

    invoke-virtual {v0}, Lorg/achartengine/chart/XYChart;->getDefaultMinimum()D

    move-result-wide v5

    aget-object v0, v2, v10

    invoke-virtual {v0}, Lorg/achartengine/model/XYSeries;->getMinY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    aput-wide v5, v4, v11

    aget-object v0, v2, v10

    invoke-virtual {v0}, Lorg/achartengine/model/XYSeries;->getMaxY()D

    move-result-wide v5

    aput-wide v5, v4, v12

    move v0, v1

    .line 48
    :goto_1
    if-ge v0, v3, :cond_3

    .line 49
    aget-wide v5, v4, v10

    aget-object v7, v2, v0

    invoke-virtual {v7}, Lorg/achartengine/model/XYSeries;->getMinX()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    aput-wide v5, v4, v10

    .line 50
    aget-wide v5, v4, v1

    aget-object v7, v2, v0

    invoke-virtual {v7}, Lorg/achartengine/model/XYSeries;->getMaxX()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    aput-wide v5, v4, v1

    .line 51
    aget-wide v5, v4, v11

    aget-object v7, v2, v0

    invoke-virtual {v7}, Lorg/achartengine/model/XYSeries;->getMinY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    aput-wide v5, v4, v11

    .line 52
    aget-wide v5, v4, v12

    aget-object v7, v2, v0

    invoke-virtual {v7}, Lorg/achartengine/model/XYSeries;->getMaxY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    aput-wide v5, v4, v12

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_3
    aget-wide v2, v4, v1

    aget-wide v5, v4, v10

    sub-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v2, v13

    .line 55
    aget-wide v5, v4, v12

    aget-wide v7, v4, v11

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    div-double/2addr v5, v13

    .line 56
    iget-object v0, p0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/4 v7, 0x4

    new-array v7, v7, [D

    aget-wide v8, v4, v10

    sub-double/2addr v8, v2

    aput-wide v8, v7, v10

    aget-wide v8, v4, v1

    add-double/2addr v2, v8

    aput-wide v2, v7, v1

    aget-wide v1, v4, v11

    sub-double/2addr v1, v5

    aput-wide v1, v7, v11

    aget-wide v1, v4, v12

    add-double/2addr v1, v5

    aput-wide v1, v7, v12

    invoke-virtual {v0, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setRange([D)V

    goto/16 :goto_0
.end method
