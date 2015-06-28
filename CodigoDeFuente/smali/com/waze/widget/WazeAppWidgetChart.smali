.class public Lcom/waze/widget/WazeAppWidgetChart;
.super Ljava/lang/Object;
.source "WazeAppWidgetChart.java"


# static fields
.field private static final MINUTE:J = 0xea60L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildDateDataset([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 11
    .parameter "titles"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/List",
            "<[D>;)",
            "Lorg/achartengine/model/XYMultipleSeriesDataset;"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, xValues:Ljava/util/List;,"Ljava/util/List<[Ljava/util/Date;>;"
    .local p3, yValues:Ljava/util/List;,"Ljava/util/List<[D>;"
    new-instance v0, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    .line 95
    .local v0, dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    array-length v3, p1

    .line 96
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 107
    return-object v0

    .line 97
    :cond_0
    new-instance v4, Lorg/achartengine/model/TimeSeries;

    aget-object v8, p1, v1

    invoke-direct {v4, v8}, Lorg/achartengine/model/TimeSeries;-><init>(Ljava/lang/String;)V

    .line 98
    .local v4, series:Lorg/achartengine/model/TimeSeries;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Date;

    .line 99
    .local v6, xV:[Ljava/util/Date;
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    .line 100
    .local v7, yV:[D
    array-length v5, v6

    .line 101
    .local v5, seriesLength:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    if-lt v2, v5, :cond_1

    .line 105
    invoke-virtual {v0, v4}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    aget-object v8, v6, v2

    aget-wide v9, v7, v2

    invoke-virtual {v4, v8, v9, v10}, Lorg/achartengine/model/TimeSeries;->add(Ljava/util/Date;D)V

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected buildRenderer([I[Lorg/achartengine/chart/PointStyle;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 7
    .parameter "colors"
    .parameter "styles"

    .prologue
    const/high16 v4, 0x41a0

    .line 38
    new-instance v3, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 39
    .local v3, renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    invoke-virtual {v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxisTitleTextSize(F)V

    .line 40
    invoke-virtual {v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitleTextSize(F)V

    .line 41
    invoke-virtual {v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 42
    const/high16 v4, 0x44be

    invoke-virtual {v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLegendTextSize(F)V

    .line 43
    const/high16 v4, 0x40a0

    invoke-virtual {v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPointSize(F)V

    .line 44
    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x14

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0xf

    aput v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 45
    array-length v1, p1

    .line 46
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 52
    return-object v3

    .line 47
    :cond_0
    new-instance v2, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-direct {v2}, Lorg/achartengine/renderer/XYSeriesRenderer;-><init>()V

    .line 48
    .local v2, r:Lorg/achartengine/renderer/XYSeriesRenderer;
    aget v4, p1, v0

    invoke-virtual {v2, v4}, Lorg/achartengine/renderer/XYSeriesRenderer;->setColor(I)V

    .line 49
    aget-object v4, p2, v0

    invoke-virtual {v2, v4}, Lorg/achartengine/renderer/XYSeriesRenderer;->setPointStyle(Lorg/achartengine/chart/PointStyle;)V

    .line 50
    invoke-virtual {v3, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public execute(Landroid/content/Context;Lcom/waze/widget/routing/RoutingResponse;J)Landroid/content/Intent;
    .locals 50
    .parameter "context"
    .parameter "rsp"
    .parameter "timeStamp"

    .prologue
    .line 115
    const/4 v4, 0x6

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/4 v4, 0x0

    const-string v6, "Now"

    aput-object v6, v47, v4

    const/4 v4, 0x1

    const-string v6, "NowTraingle"

    aput-object v6, v47, v4

    const/4 v4, 0x2

    const-string v6, "ALL"

    aput-object v6, v47, v4

    const/4 v4, 0x3

    const-string v6, "Red"

    aput-object v6, v47, v4

    const/4 v4, 0x4

    const-string v6, "Orange"

    aput-object v6, v47, v4

    const/4 v4, 0x5

    const-string v6, "Green"

    aput-object v6, v47, v4

    .line 116
    .local v47, titles:[Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v41

    .line 118
    .local v41, now:J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "WidgetChart execute timeStamp=: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 121
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v49, x:Ljava/util/List;,"Ljava/util/List<[Ljava/util/Date;>;"
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/util/Date;

    move-object/from16 v43, v0

    .line 124
    .local v43, now_dates:[Ljava/util/Date;
    const/4 v4, 0x0

    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, v41

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    aput-object v6, v43, v4

    .line 125
    const/4 v4, 0x1

    new-instance v6, Ljava/util/Date;

    const-wide/16 v7, 0x1

    add-long v7, v7, v41

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    aput-object v6, v43, v4

    .line 126
    move-object/from16 v0, v49

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/util/Date;

    move-object/from16 v23, v0

    .line 130
    .local v23, NowTraingle:[Ljava/util/Date;
    const/4 v4, 0x0

    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, v41

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    aput-object v6, v23, v4

    .line 131
    move-object/from16 v0, v49

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    const/16 v28, 0x1

    .local v28, i:I
    :goto_0
    move-object/from16 v0, v47

    array-length v4, v0

    move/from16 v0, v28

    if-lt v0, v4, :cond_0

    .line 143
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v48, values:Ljava/util/List;,"Ljava/util/List<[D>;"
    invoke-virtual/range {p2 .. p2}, Lcom/waze/widget/routing/RoutingResponse;->getList()[D

    move-result-object v19

    .line 147
    .local v19, AllArray:[D
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v45, v0

    .line 148
    .local v45, seriesLength:I
    move/from16 v0, v45

    new-array v0, v0, [D

    move-object/from16 v25, v0

    .line 149
    .local v25, RedArray:[D
    const/4 v4, 0x2

    new-array v0, v4, [D

    move-object/from16 v21, v0

    .line 150
    .local v21, NowArray:[D
    const/4 v4, 0x1

    new-array v0, v4, [D

    move-object/from16 v22, v0

    .line 151
    .local v22, NowTraiangleArray:[D
    move/from16 v0, v45

    new-array v0, v0, [D

    move-object/from16 v24, v0

    .line 152
    .local v24, OrangeArray:[D
    move/from16 v0, v45

    new-array v0, v0, [D

    move-object/from16 v20, v0

    .line 153
    .local v20, GreenArray:[D
    const/16 v31, 0x0

    .local v31, k:I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v45

    if-lt v0, v1, :cond_2

    .line 169
    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/waze/widget/routing/RoutingResponse;->getMaxValue()I

    move-result v6

    div-int/lit8 v6, v6, 0x3c

    add-int/lit8 v6, v6, 0x64

    int-to-double v6, v6

    aput-wide v6, v21, v4

    .line 170
    const/4 v4, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/waze/widget/routing/RoutingResponse;->getMinValue()I

    move-result v6

    div-int/lit8 v6, v6, 0x3c

    add-int/lit8 v6, v6, -0x64

    int-to-double v6, v6

    aput-wide v6, v21, v4

    .line 171
    move-object/from16 v0, v48

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/waze/widget/routing/RoutingResponse;->getMinValue()I

    move-result v6

    div-int/lit8 v6, v6, 0x3c

    add-int/lit8 v6, v6, -0x9

    int-to-double v6, v6

    aput-wide v6, v22, v4

    .line 174
    move-object/from16 v0, v48

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    move-object/from16 v0, v48

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    move-object/from16 v0, v48

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    move-object/from16 v0, v48

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    move-object/from16 v0, v48

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    const/4 v4, 0x6

    new-array v0, v4, [I

    move-object/from16 v26, v0

    const/4 v4, 0x0

    const-string v6, "#77676767"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v26, v4

    const/4 v4, 0x1

    const/high16 v6, -0x1

    aput v6, v26, v4

    const/4 v4, 0x2

    const/4 v6, -0x1

    aput v6, v26, v4

    const/4 v4, 0x3

    const-string v6, "#d62525"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v26, v4

    const/4 v4, 0x4

    const-string v6, "#ea8124"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v26, v4

    const/4 v4, 0x5

    const-string v6, "#5f8e44"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v26, v4

    .line 182
    .local v26, colors:[I
    const/4 v4, 0x6

    new-array v0, v4, [Lorg/achartengine/chart/PointStyle;

    move-object/from16 v46, v0

    const/4 v4, 0x0

    sget-object v6, Lorg/achartengine/chart/PointStyle;->DIAMOND:Lorg/achartengine/chart/PointStyle;

    aput-object v6, v46, v4

    const/4 v4, 0x1

    sget-object v6, Lorg/achartengine/chart/PointStyle;->TRIANGLE:Lorg/achartengine/chart/PointStyle;

    aput-object v6, v46, v4

    const/4 v4, 0x2

    sget-object v6, Lorg/achartengine/chart/PointStyle;->CIRCLE:Lorg/achartengine/chart/PointStyle;

    aput-object v6, v46, v4

    const/4 v4, 0x3

    sget-object v6, Lorg/achartengine/chart/PointStyle;->CIRCLE:Lorg/achartengine/chart/PointStyle;

    aput-object v6, v46, v4

    const/4 v4, 0x4

    sget-object v6, Lorg/achartengine/chart/PointStyle;->CIRCLE:Lorg/achartengine/chart/PointStyle;

    aput-object v6, v46, v4

    const/4 v4, 0x5

    sget-object v6, Lorg/achartengine/chart/PointStyle;->CIRCLE:Lorg/achartengine/chart/PointStyle;

    aput-object v6, v46, v4

    .line 183
    .local v46, styles:[Lorg/achartengine/chart/PointStyle;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/waze/widget/WazeAppWidgetChart;->buildRenderer([I[Lorg/achartengine/chart/PointStyle;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v5

    .line 184
    .local v5, renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererCount()I

    move-result v32

    .line 185
    .local v32, length:I
    const/16 v28, 0x0

    :goto_2
    move/from16 v0, v28

    move/from16 v1, v32

    if-lt v0, v1, :cond_6

    .line 189
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v4

    check-cast v4, Lorg/achartengine/renderer/XYSeriesRenderer;

    const/high16 v6, 0x41f0

    invoke-virtual {v4, v6}, Lorg/achartengine/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 190
    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v4

    check-cast v4, Lorg/achartengine/renderer/XYSeriesRenderer;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/achartengine/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 192
    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v4

    check-cast v4, Lorg/achartengine/renderer/XYSeriesRenderer;

    const/high16 v6, 0x40e0

    invoke-virtual {v4, v6}, Lorg/achartengine/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 193
    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v4

    check-cast v4, Lorg/achartengine/renderer/XYSeriesRenderer;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/achartengine/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 194
    const/4 v4, 0x4

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v4

    check-cast v4, Lorg/achartengine/renderer/XYSeriesRenderer;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/achartengine/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 195
    const/4 v4, 0x5

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v4

    check-cast v4, Lorg/achartengine/renderer/XYSeriesRenderer;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/achartengine/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 197
    const/4 v4, 0x2

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/Date;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    sub-long v37, v6, v8

    .line 198
    .local v37, minX:J
    const/4 v4, 0x2

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Lcom/waze/widget/routing/RoutingResponse;->getNumResults()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    add-long v33, v6, v8

    .line 199
    .local v33, maxX:J
    invoke-virtual/range {p2 .. p2}, Lcom/waze/widget/routing/RoutingResponse;->getMinValue()I

    move-result v4

    int-to-double v6, v4

    const-wide/high16 v8, 0x404e

    div-double/2addr v6, v8

    const-wide v8, 0x3feccccccccccccdL

    mul-double/2addr v6, v8

    double-to-long v0, v6

    move-wide/from16 v39, v0

    .line 200
    .local v39, minY:J
    invoke-virtual/range {p2 .. p2}, Lcom/waze/widget/routing/RoutingResponse;->getMaxValue()I

    move-result v4

    int-to-double v6, v4

    const-wide/high16 v8, 0x404e

    div-double/2addr v6, v8

    const-wide v8, 0x3ff199999999999aL

    mul-double/2addr v6, v8

    double-to-long v0, v6

    move-wide/from16 v35, v0

    .line 201
    .local v35, maxY:J
    const-string v4, "Your Commute-O-Meter"

    invoke-static {v4}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Time"

    const-string v8, "Min"

    move-wide/from16 v0, v37

    long-to-double v9, v0

    move-wide/from16 v0, v33

    long-to-double v11, v0

    move-wide/from16 v0, v39

    long-to-double v13, v0

    move-wide/from16 v0, v35

    long-to-double v15, v0

    const v17, -0x333334

    const v18, -0x333334

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v18}, Lcom/waze/widget/WazeAppWidgetChart;->setChartSettings(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDDII)V

    .line 203
    const/4 v4, 0x7

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 204
    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabels(I)V

    .line 205
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAntialiasing(Z)V

    .line 206
    const/high16 v4, 0x4130

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPointSize(F)V

    .line 207
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowGrid(Z)V

    .line 208
    const/high16 v4, 0x41d0

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitleTextSize(F)V

    .line 209
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLegend(Z)V

    .line 210
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 211
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 212
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v49

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/widget/WazeAppWidgetChart;->buildDateDataset([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v4

    .line 214
    const-string v6, "h:mm"

    .line 213
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v6}, Lorg/achartengine/ChartFactory;->getTimeChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v29

    .line 215
    .local v29, intent:Landroid/content/Intent;
    return-object v29

    .line 135
    .end local v5           #renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .end local v19           #AllArray:[D
    .end local v20           #GreenArray:[D
    .end local v21           #NowArray:[D
    .end local v22           #NowTraiangleArray:[D
    .end local v24           #OrangeArray:[D
    .end local v25           #RedArray:[D
    .end local v26           #colors:[I
    .end local v29           #intent:Landroid/content/Intent;
    .end local v31           #k:I
    .end local v32           #length:I
    .end local v33           #maxX:J
    .end local v35           #maxY:J
    .end local v37           #minX:J
    .end local v39           #minY:J
    .end local v45           #seriesLength:I
    .end local v46           #styles:[Lorg/achartengine/chart/PointStyle;
    .end local v48           #values:Ljava/util/List;,"Ljava/util/List<[D>;"
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/waze/widget/routing/RoutingResponse;->getNumResults()I

    move-result v4

    new-array v0, v4, [Ljava/util/Date;

    move-object/from16 v27, v0

    .line 136
    .local v27, dates:[Ljava/util/Date;
    const/16 v30, 0x0

    .local v30, j:I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/waze/widget/routing/RoutingResponse;->getNumResults()I

    move-result v4

    move/from16 v0, v30

    if-lt v0, v4, :cond_1

    .line 139
    move-object/from16 v0, v49

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .line 137
    :cond_1
    new-instance v4, Ljava/util/Date;

    mul-int/lit8 v6, v30, 0xa

    int-to-long v6, v6

    const-wide/32 v8, 0xea60

    mul-long/2addr v6, v8

    add-long v6, v6, p3

    const-wide/32 v8, 0x927c0

    invoke-static {}, Lcom/waze/widget/routing/RoutingRequest;->getNowLocation()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v27, v30

    .line 136
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 154
    .end local v27           #dates:[Ljava/util/Date;
    .end local v30           #j:I
    .restart local v19       #AllArray:[D
    .restart local v20       #GreenArray:[D
    .restart local v21       #NowArray:[D
    .restart local v22       #NowTraiangleArray:[D
    .restart local v24       #OrangeArray:[D
    .restart local v25       #RedArray:[D
    .restart local v31       #k:I
    .restart local v45       #seriesLength:I
    .restart local v48       #values:Ljava/util/List;,"Ljava/util/List<[D>;"
    :cond_2
    const-wide v6, 0x7fefffffffffffffL

    aput-wide v6, v25, v31

    .line 155
    const-wide v6, 0x7fefffffffffffffL

    aput-wide v6, v20, v31

    .line 156
    const-wide v6, 0x7fefffffffffffffL

    aput-wide v6, v24, v31

    .line 157
    aget-wide v6, v19, v31

    const-wide v8, 0x7fefffffffffffffL

    cmpl-double v4, v6, v8

    if-eqz v4, :cond_3

    .line 158
    aget-wide v6, v19, v31

    double-to-int v4, v6

    invoke-virtual/range {p2 .. p2}, Lcom/waze/widget/routing/RoutingResponse;->getAveragetTime()I

    move-result v6

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v4, v6}, Lcom/waze/widget/routing/RouteScore;->getScore(II)Lcom/waze/widget/routing/RouteScoreType;

    move-result-object v44

    .line 159
    .local v44, score:Lcom/waze/widget/routing/RouteScoreType;
    sget-object v4, Lcom/waze/widget/routing/RouteScoreType;->ROUTE_GOOD:Lcom/waze/widget/routing/RouteScoreType;

    move-object/from16 v0, v44

    if-ne v0, v4, :cond_4

    .line 160
    aget-wide v6, v19, v31

    aput-wide v6, v20, v31

    .line 153
    .end local v44           #score:Lcom/waze/widget/routing/RouteScoreType;
    :cond_3
    :goto_4
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 161
    .restart local v44       #score:Lcom/waze/widget/routing/RouteScoreType;
    :cond_4
    sget-object v4, Lcom/waze/widget/routing/RouteScoreType;->ROUTE_BAD:Lcom/waze/widget/routing/RouteScoreType;

    move-object/from16 v0, v44

    if-ne v0, v4, :cond_5

    .line 162
    aget-wide v6, v19, v31

    aput-wide v6, v25, v31

    goto :goto_4

    .line 164
    :cond_5
    aget-wide v6, v19, v31

    aput-wide v6, v24, v31

    goto :goto_4

    .line 186
    .end local v44           #score:Lcom/waze/widget/routing/RouteScoreType;
    .restart local v5       #renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .restart local v26       #colors:[I
    .restart local v32       #length:I
    .restart local v46       #styles:[Lorg/achartengine/chart/PointStyle;
    :cond_6
    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v4

    check-cast v4, Lorg/achartengine/renderer/XYSeriesRenderer;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/achartengine/renderer/XYSeriesRenderer;->setFillPoints(Z)V

    .line 185
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2

    .line 210
    nop

    :array_0
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected setChartSettings(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDDII)V
    .locals 0
    .parameter "renderer"
    .parameter "title"
    .parameter "xTitle"
    .parameter "yTitle"
    .parameter "xMin"
    .parameter "xMax"
    .parameter "yMin"
    .parameter "yMax"
    .parameter "axesColor"
    .parameter "labelsColor"

    .prologue
    .line 73
    invoke-virtual {p1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setChartTitle(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1, p3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXTitle(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, p4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, p5, p6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 77
    invoke-virtual {p1, p7, p8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 78
    invoke-virtual {p1, p9, p10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 79
    invoke-virtual {p1, p11, p12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 80
    invoke-virtual {p1, p13}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxesColor(I)V

    .line 81
    invoke-virtual {p1, p14}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    .line 82
    return-void
.end method
