.class public final Lcom/waze/utils/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpiToPixels(F)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 11
    invoke-static {}, Lcom/waze/utils/DisplayUtils;->scale()F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static pixelsToDpi(I)F
    .locals 2
    .parameter "px"

    .prologue
    .line 16
    int-to-float v0, p0

    invoke-static {}, Lcom/waze/utils/DisplayUtils;->scale()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static scale()F
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    .local v0, ctx:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 25
    .local v1, scale:F
    return v1
.end method
