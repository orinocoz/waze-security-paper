.class public Lcom/waze/ScreenShotManager;
.super Ljava/lang/Thread;
.source "ScreenShotManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ScreenShotManager$ImageWriter;,
        Lcom/waze/ScreenShotManager$ScaleEffectView;
    }
.end annotation


# static fields
.field private static final SCRN_SHOT_EFFECT_TIMEOUT:J = 0x4b0L

.field private static volatile mMaxIndex:I = 0x0

.field public static final mScrnShotsDir:Ljava/lang/String; = "screenshots/"

.field public static final mScrnShotsNamePrefix:Ljava/lang/String; = "screenshot_"

.field public static final mScrnShotsNameSuffix:Ljava/lang/String; = ".jpg"


# instance fields
.field private mBitMap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/waze/ScreenShotManager;->GetMaxFileIndex()I

    move-result v0

    sput v0, Lcom/waze/ScreenShotManager;->mMaxIndex:I

    .line 242
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    return-void
.end method

.method private DrawScaledImage(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "aGL"
    .parameter "aBmp"

    .prologue
    const/high16 v12, 0x4000

    const/high16 v10, 0x3f40

    const/high16 v11, 0x3e80

    .line 106
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    .line 107
    .local v2, context:Lcom/waze/MainActivity;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 108
    .local v8, viewWidth:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 109
    .local v7, viewHeight:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v1, canvas:Landroid/graphics/Canvas;
    const v9, -0xbbbbbc

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 114
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 115
    .local v4, mtx:Landroid/graphics/Matrix;
    invoke-virtual {v4, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 116
    int-to-float v9, v8

    mul-float/2addr v9, v11

    div-float/2addr v9, v12

    int-to-float v10, v7

    mul-float/2addr v10, v11

    div-float/2addr v10, v12

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 117
    const/4 v9, 0x0

    invoke-virtual {v1, p2, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 119
    new-instance v6, Lcom/waze/ScreenShotManager$ScaleEffectView;

    invoke-direct {v6, p0, v2, v0}, Lcom/waze/ScreenShotManager$ScaleEffectView;-><init>(Lcom/waze/ScreenShotManager;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 122
    .local v6, view:Landroid/view/View;
    new-instance v5, Lcom/waze/ScreenShotManager$1;

    invoke-direct {v5, p0, v2, v6}, Lcom/waze/ScreenShotManager$1;-><init>(Lcom/waze/ScreenShotManager;Lcom/waze/MainActivity;Landroid/view/View;)V

    .line 130
    .local v5, showView:Ljava/lang/Runnable;
    invoke-virtual {v2, v5}, Lcom/waze/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    new-instance v3, Lcom/waze/ScreenShotManager$2;

    invoke-direct {v3, p0, v6, v0}, Lcom/waze/ScreenShotManager$2;-><init>(Lcom/waze/ScreenShotManager;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 139
    .local v3, hideView:Ljava/lang/Runnable;
    const-wide/16 v9, 0x4b0

    invoke-virtual {v6, v3, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method

.method private static GetMaxFileIndex()I
    .locals 10

    .prologue
    .line 149
    const/4 v5, -0x1

    .line 150
    .local v5, maxIndex:I
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/waze/ResManager;->mSDCardResDir:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "screenshots/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, dirName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, fileNames:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 156
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v3

    if-lt v4, v8, :cond_1

    .line 170
    .end local v4           #i:I
    :cond_0
    return v5

    .line 159
    .restart local v4       #i:I
    :cond_1
    aget-object v8, v3, v4

    const-string v9, "screenshot_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 162
    const-string v8, "screenshot_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 163
    .local v7, start:I
    aget-object v8, v3, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, ".jpg"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v2, v8, v9

    .line 164
    .local v2, end:I
    aget-object v8, v3, v4

    invoke-virtual {v8, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, nextNumString:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v5, :cond_2

    .line 166
    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 156
    .end local v2           #end:I
    .end local v6           #nextNumString:Ljava/lang/String;
    .end local v7           #start:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/waze/ScreenShotManager;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/waze/ScreenShotManager;->mBitMap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 232
    sget v0, Lcom/waze/ScreenShotManager;->mMaxIndex:I

    return v0
.end method

.method static synthetic access$2(I)V
    .locals 0
    .parameter

    .prologue
    .line 232
    sput p0, Lcom/waze/ScreenShotManager;->mMaxIndex:I

    return-void
.end method

.method static synthetic access$3(Lcom/waze/ScreenShotManager;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/waze/ScreenShotManager;->mBitMap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public Capture(Landroid/view/View;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18
    .parameter "aView"
    .parameter "aGL"

    .prologue
    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 47
    .local v5, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 49
    .local v6, height:I
    mul-int v2, v5, v6

    new-array v10, v2, [I

    .line 50
    .local v10, glDataArray:[I
    mul-int v2, v5, v6

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 52
    .local v16, pixelsRGBA:[I
    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v9

    .line 53
    .local v9, glDataBuf:Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move-object/from16 v2, p2

    invoke-interface/range {v2 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 56
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-lt v11, v6, :cond_0

    .line 67
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/ScreenShotManager;->mBitMap:Landroid/graphics/Bitmap;

    .line 69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/ScreenShotManager;->mBitMap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/waze/ScreenShotManager;->DrawScaledImage(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 71
    new-instance v2, Lcom/waze/ScreenShotManager$ImageWriter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/waze/ScreenShotManager$ImageWriter;-><init>(Lcom/waze/ScreenShotManager;Lcom/waze/ScreenShotManager$ImageWriter;)V

    invoke-virtual {v2}, Lcom/waze/ScreenShotManager$ImageWriter;->run()V

    .line 72
    return-void

    .line 58
    :cond_0
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    if-lt v12, v5, :cond_1

    .line 56
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 60
    :cond_1
    mul-int v2, v11, v5

    add-int/2addr v2, v12

    aget v14, v10, v2

    .line 61
    .local v14, pix:I
    shr-int/lit8 v2, v14, 0x10

    and-int/lit16 v13, v2, 0xff

    .line 62
    .local v13, pb:I
    shl-int/lit8 v2, v14, 0x10

    const/high16 v3, 0xff

    and-int v17, v2, v3

    .line 63
    .local v17, pr:I
    const v2, -0xff0100

    and-int/2addr v2, v14

    or-int v2, v2, v17

    or-int v15, v2, v13

    .line 64
    .local v15, pixRes:I
    sub-int v2, v6, v11

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v5

    add-int/2addr v2, v12

    aput v15, v16, v2

    .line 58
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method public CaptureMapScreenShot(Landroid/view/View;Ljavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "aView"
    .parameter "aGL"

    .prologue
    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 77
    .local v3, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 79
    .local v4, height:I
    mul-int v0, v3, v4

    new-array v8, v0, [I

    .line 80
    .local v8, glDataArray:[I
    mul-int v0, v3, v4

    new-array v14, v0, [I

    .line 82
    .local v14, pixelsRGBA:[I
    invoke-static {v8}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    .line 83
    .local v7, glDataBuf:Ljava/nio/IntBuffer;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object/from16 v0, p2

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 86
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-lt v9, v4, :cond_0

    .line 97
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    if-lt v10, v3, :cond_1

    .line 86
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 90
    :cond_1
    mul-int v0, v9, v3

    add-int/2addr v0, v10

    aget v12, v8, v0

    .line 91
    .local v12, pix:I
    shr-int/lit8 v0, v12, 0x10

    and-int/lit16 v11, v0, 0xff

    .line 92
    .local v11, pb:I
    shl-int/lit8 v0, v12, 0x10

    const/high16 v1, 0xff

    and-int v15, v0, v1

    .line 93
    .local v15, pr:I
    const v0, -0xff0100

    and-int/2addr v0, v12

    or-int/2addr v0, v15

    or-int v13, v0, v11

    .line 94
    .local v13, pixRes:I
    sub-int v0, v4, v9

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v3

    add-int/2addr v0, v10

    aput v13, v14, v0

    .line 88
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method
