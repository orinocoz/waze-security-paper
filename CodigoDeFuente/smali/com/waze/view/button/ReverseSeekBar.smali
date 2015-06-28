.class public Lcom/waze/view/button/ReverseSeekBar;
.super Landroid/widget/SeekBar;
.source "ReverseSeekBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    const/high16 v3, 0x4000

    .line 18
    invoke-virtual {p0}, Lcom/waze/view/button/ReverseSeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 19
    .local v0, px:F
    invoke-virtual {p0}, Lcom/waze/view/button/ReverseSeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 21
    .local v1, py:F
    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 23
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 24
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/waze/view/button/ReverseSeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 30
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
