.class public Lorg/achartengine/renderer/DefaultRenderer;
.super Ljava/lang/Object;
.source "DefaultRenderer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BACKGROUND_COLOR:I = -0x1000000

.field public static final NO_COLOR:I = 0x0

.field private static final REGULAR_TEXT_FONT:Landroid/graphics/Typeface; = null

.field public static final TEXT_COLOR:I = -0x333334


# instance fields
.field private antialiasing:Z

.field private mApplyBackgroundColor:Z

.field private mAxesColor:I

.field private mBackgroundColor:I

.field private mLabelsColor:I

.field private mLabelsTextSize:F

.field private mLegendHeight:I

.field private mLegendTextSize:F

.field private mMargins:[I

.field private mRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/renderer/SimpleSeriesRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAxes:Z

.field private mShowGrid:Z

.field private mShowLabels:Z

.field private mShowLegend:Z

.field private textTypefaceName:Ljava/lang/String;

.field private textTypefaceStyle:I

.field private xLabelsAlign:Landroid/graphics/Paint$Align;

.field private yLabelsAlign:Landroid/graphics/Paint$Align;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lorg/achartengine/renderer/DefaultRenderer;->REGULAR_TEXT_FONT:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, -0x333334

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lorg/achartengine/renderer/DefaultRenderer;->REGULAR_TEXT_FONT:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->textTypefaceName:Ljava/lang/String;

    .line 42
    iput v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->textTypefaceStyle:I

    .line 48
    iput-boolean v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowAxes:Z

    .line 50
    iput v3, p0, Lorg/achartengine/renderer/DefaultRenderer;->mAxesColor:I

    .line 52
    iput-boolean v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowLabels:Z

    .line 54
    iput v3, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLabelsColor:I

    .line 56
    const/high16 v0, 0x4120

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLabelsTextSize:F

    .line 58
    iput-boolean v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowLegend:Z

    .line 60
    const/high16 v0, 0x4140

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLegendTextSize:F

    .line 62
    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowGrid:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    .line 66
    iput-boolean v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->antialiasing:Z

    .line 68
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->xLabelsAlign:Landroid/graphics/Paint$Align;

    .line 70
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->yLabelsAlign:Landroid/graphics/Paint$Align;

    .line 72
    iput v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLegendHeight:I

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mMargins:[I

    return-void

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public getAxesColor()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mAxesColor:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mBackgroundColor:I

    return v0
.end method

.method public getLabelsColor()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLabelsColor:I

    return v0
.end method

.method public getLabelsTextSize()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLabelsTextSize:F

    return v0
.end method

.method public getLegendHeight()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLegendHeight:I

    return v0
.end method

.method public getLegendTextSize()F
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLegendTextSize:F

    return v0
.end method

.method public getMargins()[I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mMargins:[I

    return-object v0
.end method

.method public getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/achartengine/renderer/SimpleSeriesRenderer;

    return-object v0
.end method

.method public getSeriesRendererCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSeriesRenderers()[Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/achartengine/renderer/SimpleSeriesRenderer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/achartengine/renderer/SimpleSeriesRenderer;

    return-object v0
.end method

.method public getTextTypefaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->textTypefaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextTypefaceStyle()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->textTypefaceStyle:I

    return v0
.end method

.method public getXLabelsAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->xLabelsAlign:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getYLabelsAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->yLabelsAlign:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public isAntialiasing()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->antialiasing:Z

    return v0
.end method

.method public isApplyBackgroundColor()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mApplyBackgroundColor:Z

    return v0
.end method

.method public isShowAxes()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowAxes:Z

    return v0
.end method

.method public isShowGrid()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowGrid:Z

    return v0
.end method

.method public isShowLabels()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowLabels:Z

    return v0
.end method

.method public isShowLegend()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowLegend:Z

    return v0
.end method

.method public removeSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public setAntialiasing(Z)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->antialiasing:Z

    .line 347
    return-void
.end method

.method public setApplyBackgroundColor(Z)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mApplyBackgroundColor:Z

    .line 156
    return-void
.end method

.method public setAxesColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mAxesColor:I

    .line 174
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mBackgroundColor:I

    .line 138
    return-void
.end method

.method public setLabelsColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLabelsColor:I

    .line 192
    return-void
.end method

.method public setLabelsTextSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLabelsTextSize:F

    .line 210
    return-void
.end method

.method public setLegendHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLegendHeight:I

    .line 401
    return-void
.end method

.method public setLegendTextSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mLegendTextSize:F

    .line 318
    return-void
.end method

.method public setMargins([I)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mMargins:[I

    .line 419
    return-void
.end method

.method public setShowAxes(Z)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowAxes:Z

    .line 228
    return-void
.end method

.method public setShowGrid(Z)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowGrid:Z

    .line 264
    return-void
.end method

.method public setShowLabels(Z)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowLabels:Z

    .line 246
    return-void
.end method

.method public setShowLegend(Z)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->mShowLegend:Z

    .line 282
    return-void
.end method

.method public setTextTypeface(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->textTypefaceName:Ljava/lang/String;

    .line 328
    iput p2, p0, Lorg/achartengine/renderer/DefaultRenderer;->textTypefaceStyle:I

    .line 329
    return-void
.end method

.method public setXLabelsAlign(Landroid/graphics/Paint$Align;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->xLabelsAlign:Landroid/graphics/Paint$Align;

    .line 365
    return-void
.end method

.method public setYLabelsAlign(Landroid/graphics/Paint$Align;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->yLabelsAlign:Landroid/graphics/Paint$Align;

    .line 383
    return-void
.end method
