.class public abstract Lorg/achartengine/tools/AbstractTool;
.super Ljava/lang/Object;
.source "AbstractTool.java"


# instance fields
.field protected mChart:Lorg/achartengine/chart/XYChart;

.field protected mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;


# direct methods
.method public constructor <init>(Lorg/achartengine/chart/XYChart;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/achartengine/tools/AbstractTool;->mChart:Lorg/achartengine/chart/XYChart;

    .line 36
    invoke-virtual {p1}, Lorg/achartengine/chart/XYChart;->getRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 37
    return-void
.end method


# virtual methods
.method public checkRange([D)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    iget-object v0, p0, Lorg/achartengine/tools/AbstractTool;->mChart:Lorg/achartengine/chart/XYChart;

    invoke-virtual {v0}, Lorg/achartengine/chart/XYChart;->getCalcRange()[D

    move-result-object v0

    .line 49
    iget-object v1, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    aget-wide v1, v0, v3

    aput-wide v1, p1, v3

    .line 51
    iget-object v1, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    aget-wide v2, p1, v3

    invoke-virtual {v1, v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 53
    :cond_0
    iget-object v1, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    aget-wide v1, v0, v4

    aput-wide v1, p1, v4

    .line 55
    iget-object v1, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    aget-wide v2, p1, v4

    invoke-virtual {v1, v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 57
    :cond_1
    iget-object v1, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinYSet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    aget-wide v1, v0, v5

    aput-wide v1, p1, v5

    .line 59
    iget-object v1, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    aget-wide v2, p1, v5

    invoke-virtual {v1, v2, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 61
    :cond_2
    iget-object v1, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet()Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    aget-wide v0, v0, v6

    aput-wide v0, p1, v6

    .line 63
    iget-object v0, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    aget-wide v1, p1, v6

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 65
    :cond_3
    return-void
.end method

.method public getRange()[D
    .locals 10

    .prologue
    .line 40
    iget-object v0, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin()D

    move-result-wide v0

    .line 41
    iget-object v2, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax()D

    move-result-wide v2

    .line 42
    iget-object v4, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin()D

    move-result-wide v4

    .line 43
    iget-object v6, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax()D

    move-result-wide v6

    .line 44
    const/4 v8, 0x4

    new-array v8, v8, [D

    const/4 v9, 0x0

    aput-wide v0, v8, v9

    const/4 v0, 0x1

    aput-wide v2, v8, v0

    const/4 v0, 0x2

    aput-wide v4, v8, v0

    const/4 v0, 0x3

    aput-wide v6, v8, v0

    return-object v8
.end method

.method protected setXRange(DD)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, p1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 69
    iget-object v0, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, p3, p4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 70
    return-void
.end method

.method protected setYRange(DD)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, p1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 74
    iget-object v0, p0, Lorg/achartengine/tools/AbstractTool;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, p3, p4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 75
    return-void
.end method
