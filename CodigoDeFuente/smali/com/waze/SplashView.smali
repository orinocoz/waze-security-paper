.class public final Lcom/waze/SplashView;
.super Landroid/view/View;
.source "SplashView.java"


# instance fields
.field private mSplashBmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/SplashView;->mSplashBmp:Landroid/graphics/Bitmap;

    .line 20
    return-void
.end method

.method private InitSplashBitmap()V
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/waze/NativeCanvas;->GetSplashBmp(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/SplashView;->mSplashBmp:Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "WAZE DEBUG"

    const-string v1, "Splash view detached"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/waze/SplashView;->mSplashBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "aCanvas"

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/waze/SplashView;->mSplashBmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 44
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "aWidthMeasureSpec"
    .parameter "aHeightMeasureSpec"

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 33
    invoke-direct {p0}, Lcom/waze/SplashView;->InitSplashBitmap()V

    .line 34
    return-void
.end method
