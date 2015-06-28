.class public Lorg/achartengine/ChartFactory;
.super Ljava/lang/Object;
.source "ChartFactory.java"


# static fields
.field public static final CHART:Ljava/lang/String; = "chart"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static checkMultipleSeriesItems(Lorg/achartengine/model/MultipleCategorySeries;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 581
    invoke-virtual {p0}, Lorg/achartengine/model/MultipleCategorySeries;->getCategoriesCount()I

    move-result v4

    move v3, v2

    move v0, v1

    .line 583
    :goto_0
    if-ge v3, v4, :cond_1

    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {p0, v3}, Lorg/achartengine/model/MultipleCategorySeries;->getValues(I)[D

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v3}, Lorg/achartengine/model/MultipleCategorySeries;->getTitles(I)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ne v0, v5, :cond_0

    move v0, v1

    .line 583
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 584
    goto :goto_1

    .line 586
    :cond_1
    return v0
.end method

.method private static checkParameters(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 556
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/achartengine/model/CategorySeries;->getItemCount()I

    move-result v0

    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dataset and renderer should be not null and the dataset number of items should be equal to the number of series renderers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_1
    return-void
.end method

.method private static checkParameters(Lorg/achartengine/model/MultipleCategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 573
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererCount()I

    move-result v0

    invoke-static {p0, v0}, Lorg/achartengine/ChartFactory;->checkMultipleSeriesItems(Lorg/achartengine/model/MultipleCategorySeries;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Titles and values should be not null and the dataset number of items should be equal to the number of series renderers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_1
    return-void
.end method

.method private static checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 539
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v0

    invoke-virtual {p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dataset and renderer should be not null and should have the same number of series"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_1
    return-void
.end method

.method public static final getBarChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    const-string v0, ""

    invoke-static {p0, p1, p2, p3, v0}, Lorg/achartengine/ChartFactory;->getBarChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final getBarChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 427
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/achartengine/GraphicalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    new-instance v1, Lorg/achartengine/chart/BarChart;

    invoke-direct {v1, p1, p2, p3}, Lorg/achartengine/chart/BarChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)V

    .line 429
    const-string v2, "chart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 430
    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    return-object v0
.end method

.method public static final getBarChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)Lorg/achartengine/GraphicalView;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 143
    new-instance v0, Lorg/achartengine/chart/BarChart;

    invoke-direct {v0, p1, p2, p3}, Lorg/achartengine/chart/BarChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)V

    .line 144
    new-instance v1, Lorg/achartengine/GraphicalView;

    invoke-direct {v1, p0, v0}, Lorg/achartengine/GraphicalView;-><init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V

    return-object v1
.end method

.method public static final getBubbleChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lorg/achartengine/ChartFactory;->getBubbleChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final getBubbleChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 377
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/achartengine/GraphicalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    new-instance v1, Lorg/achartengine/chart/BubbleChart;

    invoke-direct {v1, p1, p2}, Lorg/achartengine/chart/BubbleChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 379
    const-string v2, "chart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 380
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    return-object v0
.end method

.method public static final getBubbleChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)Lorg/achartengine/GraphicalView;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 103
    new-instance v0, Lorg/achartengine/chart/BubbleChart;

    invoke-direct {v0, p1, p2}, Lorg/achartengine/chart/BubbleChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 104
    new-instance v1, Lorg/achartengine/GraphicalView;

    invoke-direct {v1, p0, v0}, Lorg/achartengine/GraphicalView;-><init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V

    return-object v1
.end method

.method public static final getDialChartIntent(Landroid/content/Context;Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DialRenderer;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/achartengine/GraphicalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    new-instance v1, Lorg/achartengine/chart/DialChart;

    invoke-direct {v1, p1, p2}, Lorg/achartengine/chart/DialChart;-><init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DialRenderer;)V

    .line 523
    const-string v2, "chart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 524
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    return-object v0
.end method

.method public static final getDialChartView(Landroid/content/Context;Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DialRenderer;)Lorg/achartengine/GraphicalView;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 200
    new-instance v0, Lorg/achartengine/chart/DialChart;

    invoke-direct {v0, p1, p2}, Lorg/achartengine/chart/DialChart;-><init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DialRenderer;)V

    .line 201
    new-instance v1, Lorg/achartengine/GraphicalView;

    invoke-direct {v1, p0, v0}, Lorg/achartengine/GraphicalView;-><init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V

    return-object v1
.end method

.method public static final getDoughnutChartIntent(Landroid/content/Context;Lorg/achartengine/model/MultipleCategorySeries;Lorg/achartengine/renderer/DefaultRenderer;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 497
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/MultipleCategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 498
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/achartengine/GraphicalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    new-instance v1, Lorg/achartengine/chart/DoughnutChart;

    invoke-direct {v1, p1, p2}, Lorg/achartengine/chart/DoughnutChart;-><init>(Lorg/achartengine/model/MultipleCategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 500
    const-string v2, "chart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 501
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    return-object v0
.end method

.method public static final getDoughnutChartView(Landroid/content/Context;Lorg/achartengine/model/MultipleCategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)Lorg/achartengine/GraphicalView;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/MultipleCategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 219
    new-instance v0, Lorg/achartengine/chart/DoughnutChart;

    invoke-direct {v0, p1, p2}, Lorg/achartengine/chart/DoughnutChart;-><init>(Lorg/achartengine/model/MultipleCategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 220
    new-instance v1, Lorg/achartengine/GraphicalView;

    invoke-direct {v1, p0, v0}, Lorg/achartengine/GraphicalView;-><init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V

    return-object v1
.end method

.method public static final getLineChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lorg/achartengine/ChartFactory;->getLineChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final getLineChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 331
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/achartengine/GraphicalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    new-instance v1, Lorg/achartengine/chart/LineChart;

    invoke-direct {v1, p1, p2}, Lorg/achartengine/chart/LineChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 333
    const-string v2, "chart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 334
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    return-object v0
.end method

.method public static final getLineChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)Lorg/achartengine/GraphicalView;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 67
    new-instance v0, Lorg/achartengine/chart/LineChart;

    invoke-direct {v0, p1, p2}, Lorg/achartengine/chart/LineChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 68
    new-instance v1, Lorg/achartengine/GraphicalView;

    invoke-direct {v1, p0, v0}, Lorg/achartengine/GraphicalView;-><init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V

    return-object v1
.end method

.method public static final getPieChartIntent(Landroid/content/Context;Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/achartengine/GraphicalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    new-instance v1, Lorg/achartengine/chart/PieChart;

    invoke-direct {v1, p1, p2}, Lorg/achartengine/chart/PieChart;-><init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 477
    const-string v2, "chart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 478
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    return-object v0
.end method

.method public static final getPieChartView(Landroid/content/Context;Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)Lorg/achartengine/GraphicalView;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 181
    new-instance v0, Lorg/achartengine/chart/PieChart;

    invoke-direct {v0, p1, p2}, Lorg/achartengine/chart/PieChart;-><init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 182
    new-instance v1, Lorg/achartengine/GraphicalView;

    invoke-direct {v1, p0, v0}, Lorg/achartengine/GraphicalView;-><init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V

    return-object v1
.end method

.method public static final getRangeBarChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 451
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/achartengine/GraphicalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    new-instance v1, Lorg/achartengine/chart/RangeBarChart;

    invoke-direct {v1, p1, p2, p3}, Lorg/achartengine/chart/RangeBarChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)V

    .line 454
    const-string v2, "chart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 455
    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    return-object v0
.end method

.method public static final getRangeBarChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)Lorg/achartengine/GraphicalView;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 162
    new-instance v0, Lorg/achartengine/chart/RangeBarChart;

    invoke-direct {v0, p1, p2, p3}, Lorg/achartengine/chart/RangeBarChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)V

    .line 163
    new-instance v1, Lorg/achartengine/GraphicalView;

    invoke-direct {v1, p0, v0}, Lorg/achartengine/GraphicalView;-><init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V

    return-object v1
.end method

.method public static final getScatterChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lorg/achartengine/ChartFactory;->getScatterChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final getScatterChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/achartengine/GraphicalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    new-instance v1, Lorg/achartengine/chart/ScatterChart;

    invoke-direct {v1, p1, p2}, Lorg/achartengine/chart/ScatterChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 356
    const-string v2, "chart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 357
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    return-object v0
.end method

.method public static final getScatterChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)Lorg/achartengine/GraphicalView;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 85
    new-instance v0, Lorg/achartengine/chart/ScatterChart;

    invoke-direct {v0, p1, p2}, Lorg/achartengine/chart/ScatterChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 86
    new-instance v1, Lorg/achartengine/GraphicalView;

    invoke-direct {v1, p0, v0}, Lorg/achartengine/GraphicalView;-><init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V

    return-object v1
.end method

.method public static final getTimeChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    const-string v0, ""

    invoke-static {p0, p1, p2, p3, v0}, Lorg/achartengine/ChartFactory;->getTimeChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeChartIntent(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/achartengine/GraphicalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    new-instance v1, Lorg/achartengine/chart/TimeChart;

    invoke-direct {v1, p1, p2}, Lorg/achartengine/chart/TimeChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 404
    invoke-virtual {v1, p3}, Lorg/achartengine/chart/TimeChart;->setDateFormat(Ljava/lang/String;)V

    .line 405
    const-string v2, "chart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 406
    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    return-object v0
.end method

.method public static final getTimeChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Ljava/lang/String;)Lorg/achartengine/GraphicalView;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-static {p1, p2}, Lorg/achartengine/ChartFactory;->checkParameters(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 123
    new-instance v0, Lorg/achartengine/chart/TimeChart;

    invoke-direct {v0, p1, p2}, Lorg/achartengine/chart/TimeChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 124
    invoke-virtual {v0, p3}, Lorg/achartengine/chart/TimeChart;->setDateFormat(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lorg/achartengine/GraphicalView;

    invoke-direct {v1, p0, v0}, Lorg/achartengine/GraphicalView;-><init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V

    return-object v1
.end method
