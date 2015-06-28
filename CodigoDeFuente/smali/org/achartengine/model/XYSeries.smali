.class public Lorg/achartengine/model/XYSeries;
.super Ljava/lang/Object;
.source "XYSeries.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mMaxX:D

.field private mMaxY:D

.field private mMinX:D

.field private mMinY:D

.field private mTitle:Ljava/lang/String;

.field private mX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const-wide v3, 0x7fefffffffffffffL

    const-wide v1, -0x10000000000001L

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/model/XYSeries;->mX:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/model/XYSeries;->mY:Ljava/util/List;

    .line 36
    iput-wide v3, p0, Lorg/achartengine/model/XYSeries;->mMinX:D

    .line 38
    iput-wide v1, p0, Lorg/achartengine/model/XYSeries;->mMaxX:D

    .line 40
    iput-wide v3, p0, Lorg/achartengine/model/XYSeries;->mMinY:D

    .line 42
    iput-wide v1, p0, Lorg/achartengine/model/XYSeries;->mMaxY:D

    .line 50
    iput-object p1, p0, Lorg/achartengine/model/XYSeries;->mTitle:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lorg/achartengine/model/XYSeries;->initRange()V

    .line 52
    return-void
.end method

.method private initRange()V
    .locals 6

    .prologue
    const-wide v2, 0x7fefffffffffffffL

    const-wide v0, -0x10000000000001L

    .line 58
    iput-wide v2, p0, Lorg/achartengine/model/XYSeries;->mMinX:D

    .line 59
    iput-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxX:D

    .line 60
    iput-wide v2, p0, Lorg/achartengine/model/XYSeries;->mMinY:D

    .line 61
    iput-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxY:D

    .line 62
    invoke-virtual {p0}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v1

    .line 63
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Lorg/achartengine/model/XYSeries;->getX(I)D

    move-result-wide v2

    .line 65
    invoke-virtual {p0, v0}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v4

    .line 66
    invoke-direct {p0, v2, v3, v4, v5}, Lorg/achartengine/model/XYSeries;->updateRange(DD)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method private updateRange(DD)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinX:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinX:D

    .line 78
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxX:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxX:D

    .line 79
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinY:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinY:D

    .line 80
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxY:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxY:D

    .line 81
    return-void
.end method


# virtual methods
.method public declared-synchronized add(DD)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mX:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mY:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/achartengine/model/XYSeries;->updateRange(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    invoke-direct {p0}, Lorg/achartengine/model/XYSeries;->initRange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItemCount()I
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mX:Ljava/util/List;

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

.method public getMaxX()D
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxX:D

    return-wide v0
.end method

.method public getMaxY()D
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxY:D

    return-wide v0
.end method

.method public getMinX()D
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinX:D

    return-wide v0
.end method

.method public getMinY()D
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinY:D

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getX(I)D
    .locals 2
    .parameter

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getY(I)D
    .locals 2
    .parameter

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(I)V
    .locals 7
    .parameter

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 120
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 121
    iget-wide v5, p0, Lorg/achartengine/model/XYSeries;->mMinX:D

    cmpl-double v0, v1, v5

    if-eqz v0, :cond_0

    iget-wide v5, p0, Lorg/achartengine/model/XYSeries;->mMaxX:D

    cmpl-double v0, v1, v5

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinY:D

    cmpl-double v0, v3, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxY:D

    cmpl-double v0, v3, v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    invoke-direct {p0}, Lorg/achartengine/model/XYSeries;->initRange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_1
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lorg/achartengine/model/XYSeries;->mTitle:Ljava/lang/String;

    .line 99
    return-void
.end method
