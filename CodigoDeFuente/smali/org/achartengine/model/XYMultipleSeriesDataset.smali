.class public Lorg/achartengine/model/XYMultipleSeriesDataset;
.super Ljava/lang/Object;
.source "XYMultipleSeriesDataset.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mSeries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/model/XYSeries;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/model/XYMultipleSeriesDataset;->mSeries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized addSeries(Lorg/achartengine/model/XYSeries;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYMultipleSeriesDataset;->mSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSeries()[Lorg/achartengine/model/XYSeries;
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYMultipleSeriesDataset;->mSeries:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/achartengine/model/XYSeries;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/achartengine/model/XYSeries;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSeriesAt(I)Lorg/achartengine/model/XYSeries;
    .locals 1
    .parameter

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYMultipleSeriesDataset;->mSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/achartengine/model/XYSeries;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSeriesCount()I
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYMultipleSeriesDataset;->mSeries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSeries(I)V
    .locals 1
    .parameter

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYMultipleSeriesDataset;->mSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSeries(Lorg/achartengine/model/XYSeries;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYMultipleSeriesDataset;->mSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
