.class Lcom/waze/view/anim/AnimationUtils$StartShape;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/anim/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartShape"
.end annotation


# instance fields
.field bottom:I

.field height:I

.field top:I

.field width:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 362
    .local v0, ds:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/waze/view/anim/AnimationUtils$StartShape;->width:I

    .line 363
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/waze/view/anim/AnimationUtils$StartShape;->top:I

    .line 364
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/waze/view/anim/AnimationUtils$StartShape;->height:I

    .line 365
    iget v1, p0, Lcom/waze/view/anim/AnimationUtils$StartShape;->top:I

    iget v2, p0, Lcom/waze/view/anim/AnimationUtils$StartShape;->height:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/waze/view/anim/AnimationUtils$StartShape;->bottom:I

    .line 366
    return-void
.end method
