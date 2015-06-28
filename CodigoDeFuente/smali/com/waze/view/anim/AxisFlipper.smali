.class public Lcom/waze/view/anim/AxisFlipper;
.super Landroid/view/animation/Animation;
.source "AxisFlipper.java"


# instance fields
.field private camera:Landroid/graphics/Camera;

.field private centerX:F

.field private centerY:F

.field private fromX:D

.field private fromY:D

.field private fromZ:D

.field private pivotX:D

.field private pivotY:D

.field private toX:D

.field private toY:D

.field private toZ:D


# direct methods
.method public constructor <init>(DDDDDDDD)V
    .locals 0
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "fromZ"
    .parameter "toZ"
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/waze/view/anim/AxisFlipper;->fromX:D

    .line 28
    iput-wide p3, p0, Lcom/waze/view/anim/AxisFlipper;->toX:D

    .line 29
    iput-wide p5, p0, Lcom/waze/view/anim/AxisFlipper;->fromY:D

    .line 30
    iput-wide p7, p0, Lcom/waze/view/anim/AxisFlipper;->toY:D

    .line 31
    iput-wide p9, p0, Lcom/waze/view/anim/AxisFlipper;->fromZ:D

    .line 32
    iput-wide p11, p0, Lcom/waze/view/anim/AxisFlipper;->toZ:D

    .line 33
    iput-wide p13, p0, Lcom/waze/view/anim/AxisFlipper;->pivotX:D

    .line 34
    iput-wide p15, p0, Lcom/waze/view/anim/AxisFlipper;->pivotY:D

    .line 35
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 13
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 49
    iget-wide v7, p0, Lcom/waze/view/anim/AxisFlipper;->fromX:D

    const/high16 v9, 0x3f80

    sub-float/2addr v9, p1

    float-to-double v9, v9

    mul-double/2addr v7, v9

    iget-wide v9, p0, Lcom/waze/view/anim/AxisFlipper;->toX:D

    float-to-double v11, p1

    mul-double/2addr v9, v11

    add-double v0, v7, v9

    .line 50
    .local v0, degreesX:D
    iget-wide v7, p0, Lcom/waze/view/anim/AxisFlipper;->fromY:D

    const/high16 v9, 0x3f80

    sub-float/2addr v9, p1

    float-to-double v9, v9

    mul-double/2addr v7, v9

    iget-wide v9, p0, Lcom/waze/view/anim/AxisFlipper;->toY:D

    float-to-double v11, p1

    mul-double/2addr v9, v11

    add-double v2, v7, v9

    .line 51
    .local v2, degreesY:D
    iget-wide v7, p0, Lcom/waze/view/anim/AxisFlipper;->fromZ:D

    const/high16 v9, 0x3f80

    sub-float/2addr v9, p1

    float-to-double v9, v9

    mul-double/2addr v7, v9

    iget-wide v9, p0, Lcom/waze/view/anim/AxisFlipper;->toZ:D

    float-to-double v11, p1

    mul-double/2addr v9, v11

    add-double v4, v7, v9

    .line 53
    .local v4, degreesZ:D
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 55
    .local v6, matrix:Landroid/graphics/Matrix;
    iget-object v7, p0, Lcom/waze/view/anim/AxisFlipper;->camera:Landroid/graphics/Camera;

    invoke-virtual {v7}, Landroid/graphics/Camera;->save()V

    .line 57
    const-wide/16 v7, 0x0

    cmpl-double v7, v0, v7

    if-eqz v7, :cond_0

    .line 58
    iget-object v7, p0, Lcom/waze/view/anim/AxisFlipper;->camera:Landroid/graphics/Camera;

    double-to-float v8, v0

    invoke-virtual {v7, v8}, Landroid/graphics/Camera;->rotateX(F)V

    .line 59
    :cond_0
    const-wide/16 v7, 0x0

    cmpl-double v7, v2, v7

    if-eqz v7, :cond_1

    .line 60
    iget-object v7, p0, Lcom/waze/view/anim/AxisFlipper;->camera:Landroid/graphics/Camera;

    double-to-float v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/Camera;->rotateX(F)V

    .line 61
    :cond_1
    const-wide/16 v7, 0x0

    cmpl-double v7, v4, v7

    if-eqz v7, :cond_2

    .line 62
    iget-object v7, p0, Lcom/waze/view/anim/AxisFlipper;->camera:Landroid/graphics/Camera;

    double-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Camera;->rotateX(F)V

    .line 64
    :cond_2
    iget-object v7, p0, Lcom/waze/view/anim/AxisFlipper;->camera:Landroid/graphics/Camera;

    invoke-virtual {v7, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 65
    iget-object v7, p0, Lcom/waze/view/anim/AxisFlipper;->camera:Landroid/graphics/Camera;

    invoke-virtual {v7}, Landroid/graphics/Camera;->restore()V

    .line 67
    iget v7, p0, Lcom/waze/view/anim/AxisFlipper;->centerX:F

    neg-float v7, v7

    iget v8, p0, Lcom/waze/view/anim/AxisFlipper;->centerY:F

    neg-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 68
    iget v7, p0, Lcom/waze/view/anim/AxisFlipper;->centerX:F

    iget v8, p0, Lcom/waze/view/anim/AxisFlipper;->centerY:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 69
    return-void
.end method

.method public initialize(IIII)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 40
    iget-wide v0, p0, Lcom/waze/view/anim/AxisFlipper;->pivotX:D

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/waze/view/anim/AxisFlipper;->centerX:F

    .line 41
    iget-wide v0, p0, Lcom/waze/view/anim/AxisFlipper;->pivotY:D

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/waze/view/anim/AxisFlipper;->centerY:F

    .line 42
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/waze/view/anim/AxisFlipper;->camera:Landroid/graphics/Camera;

    .line 43
    return-void
.end method
