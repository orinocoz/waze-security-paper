.class public Lcom/waze/view/navbar/TrafficBarColoredJamView;
.super Landroid/view/View;
.source "TrafficBarColoredJamView.java"


# static fields
.field private static final COLORS:[I = null

.field private static final PAST_COLOR:I = -0x3f3f40


# instance fields
.field mBase:Landroid/graphics/drawable/Drawable;

.field mBmp:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field mColors:[I

.field mDistances:[F

.field private mPaint:Landroid/graphics/Paint;

.field private mTrafficPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->COLORS:[I

    .line 38
    return-void

    .line 33
    nop

    :array_0
    .array-data 0x4
        0x70t 0xdct 0xfft 0xfft
        0x70t 0xact 0xfft 0xfft
        0x60t 0x60t 0xfct 0xfft
        0x6t 0x6t 0x98t 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->init()V

    .line 54
    return-void
.end method

.method private colorizeDrawable()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f00

    .line 119
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v7, v0

    .line 120
    .local v7, fullLen:F
    const/high16 v0, 0x3f80

    add-float v6, v7, v0

    .line 121
    .local v6, endLen:F
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mColors:[I

    array-length v0, v0

    if-lt v8, v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->invalidate()V

    .line 129
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mTrafficPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mColors:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mDistances:[F

    aget v0, v0, v8

    mul-float/2addr v0, v7

    sub-float v0, v6, v0

    sub-float v2, v0, v9

    .line 125
    .local v2, startLen:F
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/high16 v3, 0x42c8

    add-float v4, v6, v9

    iget-object v5, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mTrafficPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 126
    add-float v6, v2, v9

    .line 121
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mTrafficPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mTrafficPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mTrafficPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 64
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mTrafficPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 68
    invoke-virtual {p0}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-array v0, v7, [I

    aput v3, v0, v4

    aput v3, v0, v5

    aput v4, v0, v6

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v5, v0, v1

    const/4 v1, 0x7

    aput v5, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->setColors([I[II)V

    .line 71
    :cond_0
    return-void

    .line 69
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    .line 135
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mBmp:Landroid/graphics/Bitmap;

    .line 136
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 140
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mCanvas:Landroid/graphics/Canvas;

    .line 142
    invoke-virtual {p0}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020422

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mBase:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mBase:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mBase:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 146
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mColors:[I

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->colorizeDrawable()V

    .line 149
    :cond_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mBmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setColors([I[II)V
    .locals 10
    .parameter "levels"
    .parameter "lengths"
    .parameter "current_percent"

    .prologue
    const/4 v6, 0x1

    const v9, -0x3f3f40

    const/4 v8, 0x0

    .line 74
    const/16 v4, 0x64

    if-ne p3, v4, :cond_1

    .line 75
    new-array v4, v6, [F

    iput-object v4, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mDistances:[F

    .line 76
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mDistances:[F

    const/high16 v5, 0x3f80

    aput v5, v4, v8

    .line 77
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mColors:[I

    .line 78
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mColors:[I

    aput v9, v4, v8

    .line 80
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->colorizeDrawable()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/4 v3, 0x0

    .line 88
    .local v3, totalDist:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p2

    if-lt v1, v4, :cond_2

    .line 92
    mul-int v4, v3, p3

    rsub-int/lit8 v5, p3, 0x64

    div-int v2, v4, v5

    .line 93
    .local v2, preDist:I
    add-int/2addr v3, v2

    .line 95
    array-length v4, p2

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mDistances:[F

    .line 96
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mDistances:[F

    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    aput v5, v4, v8

    .line 98
    const/4 v1, 0x0

    :goto_2
    array-length v4, p2

    if-lt v1, v4, :cond_3

    .line 102
    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mColors:[I

    .line 103
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mColors:[I

    aput v9, v4, v8

    .line 105
    const/4 v1, 0x0

    :goto_3
    array-length v4, p1

    if-lt v1, v4, :cond_4

    .line 113
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->colorizeDrawable()V

    goto :goto_0

    .line 89
    .end local v2           #preDist:I
    :cond_2
    aget v4, p2, v1

    add-int/2addr v3, v4

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .restart local v2       #preDist:I
    :cond_3
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mDistances:[F

    add-int/lit8 v5, v1, 0x1

    aget v6, p2, v1

    int-to-float v6, v6

    int-to-float v7, v3

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 106
    :cond_4
    aget v0, p1, v1

    .line 107
    .local v0, colorInd:I
    if-ltz v0, :cond_5

    sget-object v4, Lcom/waze/view/navbar/TrafficBarColoredJamView;->COLORS:[I

    array-length v4, v4

    if-lt v0, v4, :cond_6

    .line 108
    :cond_5
    const/4 v0, 0x2

    .line 110
    :cond_6
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarColoredJamView;->mColors:[I

    add-int/lit8 v5, v1, 0x1

    sget-object v6, Lcom/waze/view/navbar/TrafficBarColoredJamView;->COLORS:[I

    aget v6, v6, v0

    aput v6, v4, v5

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
