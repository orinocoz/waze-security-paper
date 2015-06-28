.class public Lcom/waze/view/timer/TimerCircle;
.super Landroid/view/View;
.source "TimerCircle.java"


# static fields
.field private static final PADDING:I = 0x3


# instance fields
.field private diameter:I

.field private height:I

.field private innerCircle:Landroid/graphics/RectF;

.field private outerCircle:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private ratio:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/waze/view/timer/TimerCircle;->ratio:F

    .line 21
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/waze/view/timer/TimerCircle;->path:Landroid/graphics/Path;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/waze/view/timer/TimerCircle;->paint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/waze/view/timer/TimerCircle;->paint:Landroid/graphics/Paint;

    const v1, -0xc8482d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v0, p0, Lcom/waze/view/timer/TimerCircle;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    const v0, 0x3f7ff972

    invoke-virtual {p0, v0}, Lcom/waze/view/timer/TimerCircle;->setRatio(F)V

    .line 30
    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 33
    iget-object v2, p0, Lcom/waze/view/timer/TimerCircle;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 34
    const/high16 v0, 0x4387

    .line 35
    .local v0, from:F
    const/high16 v2, -0x3c4c

    iget v3, p0, Lcom/waze/view/timer/TimerCircle;->ratio:F

    mul-float v1, v2, v3

    .line 36
    .local v1, to:F
    iget-object v2, p0, Lcom/waze/view/timer/TimerCircle;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/waze/view/timer/TimerCircle;->outerCircle:Landroid/graphics/RectF;

    neg-float v4, v1

    invoke-virtual {v2, v3, v0, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 37
    iget-object v2, p0, Lcom/waze/view/timer/TimerCircle;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/waze/view/timer/TimerCircle;->innerCircle:Landroid/graphics/RectF;

    sub-float v4, v0, v1

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 38
    iget-object v2, p0, Lcom/waze/view/timer/TimerCircle;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 39
    iget-object v2, p0, Lcom/waze/view/timer/TimerCircle;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-virtual {p0}, Lcom/waze/view/timer/TimerCircle;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/waze/view/timer/TimerCircle;->width:I

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/waze/view/timer/TimerCircle;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/waze/view/timer/TimerCircle;->height:I

    if-eq v6, v7, :cond_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/waze/view/timer/TimerCircle;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/waze/view/timer/TimerCircle;->width:I

    .line 50
    invoke-virtual {p0}, Lcom/waze/view/timer/TimerCircle;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/waze/view/timer/TimerCircle;->height:I

    .line 52
    iget v6, p0, Lcom/waze/view/timer/TimerCircle;->width:I

    iget v7, p0, Lcom/waze/view/timer/TimerCircle;->height:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v6, v6, -0x6

    iput v6, p0, Lcom/waze/view/timer/TimerCircle;->diameter:I

    .line 53
    iget v6, p0, Lcom/waze/view/timer/TimerCircle;->diameter:I

    div-int/lit8 v4, v6, 0x9

    .line 55
    .local v4, thickness:I
    iget v6, p0, Lcom/waze/view/timer/TimerCircle;->width:I

    iget v7, p0, Lcom/waze/view/timer/TimerCircle;->diameter:I

    sub-int/2addr v6, v7

    div-int/lit8 v2, v6, 0x2

    .line 56
    .local v2, left:I
    iget v6, p0, Lcom/waze/view/timer/TimerCircle;->height:I

    iget v7, p0, Lcom/waze/view/timer/TimerCircle;->diameter:I

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    .line 57
    .local v5, top:I
    iget v6, p0, Lcom/waze/view/timer/TimerCircle;->diameter:I

    add-int v0, v5, v6

    .line 58
    .local v0, bottom:I
    iget v6, p0, Lcom/waze/view/timer/TimerCircle;->diameter:I

    add-int v3, v2, v6

    .line 59
    .local v3, right:I
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v2

    int-to-float v8, v5

    int-to-float v9, v3

    int-to-float v10, v0

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/waze/view/timer/TimerCircle;->outerCircle:Landroid/graphics/RectF;

    .line 61
    iget v6, p0, Lcom/waze/view/timer/TimerCircle;->diameter:I

    mul-int/lit8 v7, v4, 0x2

    sub-int v1, v6, v7

    .line 62
    .local v1, innerDiameter:I
    new-instance v6, Landroid/graphics/RectF;

    add-int v7, v2, v4

    int-to-float v7, v7

    add-int v8, v5, v4

    int-to-float v8, v8

    .line 63
    add-int v9, v2, v4

    add-int/2addr v9, v1

    int-to-float v9, v9

    add-int v10, v5, v4

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    iput-object v6, p0, Lcom/waze/view/timer/TimerCircle;->innerCircle:Landroid/graphics/RectF;

    .line 66
    .end local v0           #bottom:I
    .end local v1           #innerDiameter:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #thickness:I
    .end local v5           #top:I
    :cond_1
    iget-object v6, p0, Lcom/waze/view/timer/TimerCircle;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v6}, Lcom/waze/view/timer/TimerCircle;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 67
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 70
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 71
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 72
    .local v0, height:I
    mul-int/lit8 v2, v1, 0x1

    mul-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/waze/view/timer/TimerCircle;->setMeasuredDimension(II)V

    .line 73
    return-void
.end method

.method public setRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 43
    iput p1, p0, Lcom/waze/view/timer/TimerCircle;->ratio:F

    .line 44
    return-void
.end method
