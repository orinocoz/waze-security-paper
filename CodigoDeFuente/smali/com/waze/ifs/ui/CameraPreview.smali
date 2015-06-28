.class public Lcom/waze/ifs/ui/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;,
        Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;,
        Lcom/waze/ifs/ui/CameraPreview$CaptureParams;,
        Lcom/waze/ifs/ui/CameraPreview$CompatabilityWrapper;,
        Lcom/waze/ifs/ui/CameraPreview$Exif;,
        Lcom/waze/ifs/ui/CameraPreview$FlashMode;
    }
.end annotation


# static fields
.field private static final CAMERA_AUTO_FOCUS_TIMEOUT:I = 0x1388

.field private static final CAMERA_CAPTURE_STATUS_FAILURE:I = 0x3

.field private static final CAMERA_CAPTURE_STATUS_IN_PROCESS:I = 0x1

.field private static final CAMERA_CAPTURE_STATUS_NONE:I = 0x0

.field private static final CAMERA_CAPTURE_STATUS_SUCCESS:I = 0x2

.field private static final CAMERA_PREVIEW_STATUS_ACTIVE:I = 0x2

.field private static final CAMERA_PREVIEW_STATUS_NOT_READY:I = 0x0

.field private static final CAMERA_PREVIEW_STATUS_PREPARED:I = 0x1

.field private static final THUMBNAIL_FORMAT_BGRA:Z = true

.field private static mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;


# instance fields
.field private mBitmapOut:Landroid/graphics/Bitmap;

.field private mBufOS:Ljava/io/ByteArrayOutputStream;

.field private mCamera:Landroid/hardware/Camera;

.field private mCaptureStatus:I

.field mContext:Landroid/content/Context;

.field private mFlashModeValue:Ljava/lang/String;

.field private mHeight:F

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mInfo:Landroid/hardware/Camera$CameraInfo;

.field private mLeft:F

.field private mPreserveWholeImage:Z

.field private mPreviewStatus:I

.field private mTop:F

.field private mWidth:F

.field private orientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    invoke-direct {v0}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;-><init>()V

    sput-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    .line 1058
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "aContext"
    .parameter "aAttrs"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1062
    iput v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreviewStatus:I

    .line 1063
    iput v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I

    .line 1064
    iput-boolean v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreserveWholeImage:Z

    .line 1067
    iput v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mWidth:F

    iput v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mHeight:F

    .line 1068
    const-string v0, "auto"

    iput-object v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mFlashModeValue:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/waze/ifs/ui/CameraPreview;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/waze/ifs/ui/CameraPreview;->createOrientationListener()Landroid/view/OrientationEventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/ifs/ui/CameraPreview;->orientationListener:Landroid/view/OrientationEventListener;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/CameraPreview;->setFocusableInTouchMode(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/waze/ifs/ui/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    .line 69
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 71
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 72
    return-void
.end method

.method public static CaptureConfig(IIZILjava/lang/String;Ljava/lang/String;Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;)V
    .locals 1
    .parameter "aImageWidth"
    .parameter "aImageHeight"
    .parameter "aMaxImage"
    .parameter "aImageQuality"
    .parameter "aImageFolder"
    .parameter "aImageFile"
    .parameter "aCb"

    .prologue
    .line 480
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    invoke-virtual {v0, p0}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->setImageWidth(I)V

    .line 481
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    invoke-virtual {v0, p1}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->setImageHeight(I)V

    .line 482
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    invoke-virtual {v0, p3}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->setImageQuality(I)V

    .line 483
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    invoke-virtual {v0, p4}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->setImageFolder(Ljava/lang/String;)V

    .line 484
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    invoke-virtual {v0, p5}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->setImageFile(Ljava/lang/String;)V

    .line 485
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    invoke-virtual {v0, p6}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->setCallback(Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;)V

    .line 486
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    invoke-virtual {v0, p2}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->setMaximizeCapture(Z)V

    .line 487
    return-void
.end method

.method static synthetic access$0()Lcom/waze/ifs/ui/CameraPreview$CaptureParams;
    .locals 1

    .prologue
    .line 1058
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/ifs/ui/CameraPreview;)F
    .locals 1
    .parameter

    .prologue
    .line 1067
    iget v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mLeft:F

    return v0
.end method

.method static synthetic access$10(Lcom/waze/ifs/ui/CameraPreview;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/waze/ifs/ui/CameraPreview;->callOnCaptureListener(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$12(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera$CameraInfo;
    .locals 1
    .parameter

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mInfo:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/ifs/ui/CameraPreview;)F
    .locals 1
    .parameter

    .prologue
    .line 1067
    iget v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mTop:F

    return v0
.end method

.method static synthetic access$3(Lcom/waze/ifs/ui/CameraPreview;)F
    .locals 1
    .parameter

    .prologue
    .line 1067
    iget v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mWidth:F

    return v0
.end method

.method static synthetic access$4(Lcom/waze/ifs/ui/CameraPreview;)F
    .locals 1
    .parameter

    .prologue
    .line 1067
    iget v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mHeight:F

    return v0
.end method

.method static synthetic access$5(Lcom/waze/ifs/ui/CameraPreview;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$6(Lcom/waze/ifs/ui/CameraPreview;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/ifs/ui/CameraPreview;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 787
    invoke-direct {p0, p1, p2}, Lcom/waze/ifs/ui/CameraPreview;->compressToBuffer(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/ifs/ui/CameraPreview;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1063
    iput p1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I

    return-void
.end method

.method static synthetic access$9(Lcom/waze/ifs/ui/CameraPreview;)I
    .locals 1
    .parameter

    .prologue
    .line 1063
    iget v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I

    return v0
.end method

.method private callOnCaptureListener(Z)V
    .locals 2
    .parameter "res"

    .prologue
    .line 384
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;
    invoke-static {v0}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$4(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCaptureCallbackActive:Z
    invoke-static {v0}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$5(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    const/4 v1, 0x0

    #setter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCaptureCallbackActive:Z
    invoke-static {v0, v1}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$3(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;Z)V

    .line 387
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;
    invoke-static {v0}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$4(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;->onCapture(Z)V

    .line 390
    :cond_0
    return-void
.end method

.method private compressToBuffer(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 3
    .parameter "aBitmap"
    .parameter "aFormat"

    .prologue
    .line 788
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    monitor-enter v1

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 792
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageQuality:I
    invoke-static {v0}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$6(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v0

    iget-object v2, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, p2, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 788
    monitor-exit v1

    .line 794
    return-void

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createOrientationListener()Landroid/view/OrientationEventListener;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/waze/ifs/ui/CameraPreview$1;

    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/waze/ifs/ui/CameraPreview$1;-><init>(Lcom/waze/ifs/ui/CameraPreview;Landroid/content/Context;)V

    return-object v0
.end method

.method private sizeCallback(Landroid/hardware/Camera$Size;)V
    .locals 1
    .parameter "previewSize"

    .prologue
    .line 393
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;
    invoke-static {v0}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$4(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;
    invoke-static {v0}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$4(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;->onSize(Landroid/hardware/Camera$Size;)V

    .line 396
    :cond_0
    return-void
.end method


# virtual methods
.method public capture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 287
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I

    .line 288
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 289
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/waze/ifs/ui/CameraPreview$2;

    invoke-direct {v2, p0}, Lcom/waze/ifs/ui/CameraPreview$2;-><init>(Lcom/waze/ifs/ui/CameraPreview;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 303
    new-instance v1, Lcom/waze/ifs/ui/CameraPreview$3;

    invoke-direct {v1, p0}, Lcom/waze/ifs/ui/CameraPreview$3;-><init>(Lcom/waze/ifs/ui/CameraPreview;)V

    .line 319
    const-wide/16 v2, 0x1388

    .line 303
    invoke-virtual {p0, v1, v2, v3}, Lcom/waze/ifs/ui/CameraPreview;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Error in capturing the picture"

    invoke-static {v1, v0}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    iput v4, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreviewStatus:I

    .line 324
    iput v4, p0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I

    .line 325
    invoke-direct {p0, v4}, Lcom/waze/ifs/ui/CameraPreview;->callOnCaptureListener(Z)V

    goto :goto_0
.end method

.method public focus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 367
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 368
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_1

    .line 369
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 372
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public focus(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v6, -0x3e8

    const/16 v5, 0x3e8

    const/high16 v4, 0x44fa

    .line 337
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 361
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 341
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 342
    .local v2, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v3

    if-lez v3, :cond_1

    .line 343
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 344
    .local v1, areas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 345
    .local v0, area:Landroid/graphics/Rect;
    mul-float v3, v4, p1

    float-to-int v3, v3

    add-int/lit16 v3, v3, -0x41a

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 346
    mul-float v3, v4, p1

    float-to-int v3, v3

    add-int/lit16 v3, v3, -0x3b6

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 347
    mul-float v3, v4, p2

    float-to-int v3, v3

    add-int/lit16 v3, v3, -0x41a

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 348
    mul-float v3, v4, p2

    float-to-int v3, v3

    add-int/lit16 v3, v3, -0x3b6

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 349
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-direct {v3, v0, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 354
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v3

    if-lez v3, :cond_1

    .line 355
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 359
    .end local v0           #area:Landroid/graphics/Rect;
    .end local v1           #areas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getBufSize()I
    .locals 3

    .prologue
    .line 851
    iget-object v2, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    monitor-enter v2

    .line 852
    :try_start_0
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 851
    .local v0, size:I
    monitor-exit v2

    .line 854
    return v0

    .line 851
    .end local v0           #size:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCaptureBuffer()[B
    .locals 3

    .prologue
    .line 862
    iget-object v2, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    monitor-enter v2

    .line 863
    :try_start_0
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 862
    .local v0, byteArray:[B
    monitor-exit v2

    .line 865
    return-object v0

    .line 862
    .end local v0           #byteArray:[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCaptureStatus()Z
    .locals 2

    .prologue
    .line 411
    iget v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewActive()Z
    .locals 2

    .prologue
    .line 403
    iget v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreviewStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbnail(II)[I
    .locals 19
    .parameter "aThumbWidth"
    .parameter "aThumbHeight"

    .prologue
    .line 874
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 876
    .local v17, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 930
    :goto_0
    return-object v3

    .line 878
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/waze/ifs/ui/CameraPreview;->mPreserveWholeImage:Z

    if-eqz v4, :cond_3

    .line 880
    sget-object v4, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I
    invoke-static {v4}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v4

    div-int v4, p1, v4

    sget-object v5, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I
    invoke-static {v5}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$0(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v5

    div-int v5, p2, v5

    if-ge v4, v5, :cond_2

    .line 881
    move/from16 v14, p1

    .line 882
    .local v14, destWidth:I
    mul-int v4, p2, p1

    sget-object v5, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I
    invoke-static {v5}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v5

    div-int v13, v4, v5

    .line 892
    .local v13, destHeight:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    monitor-enter v5

    .line 893
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    invoke-static {v4, v14, v13, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 892
    .local v10, bmScaled:Landroid/graphics/Bitmap;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    move/from16 v0, p2

    if-le v13, v0, :cond_1

    .line 897
    sub-int v4, v13, p2

    div-int/lit8 v16, v4, 0x2

    .line 898
    .local v16, margin:I
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    add-int/lit8 v6, v16, -0x1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 899
    sub-int v8, v8, v16

    .line 898
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 903
    .end local v16           #margin:I
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 906
    .local v2, bmRes:Landroid/graphics/Bitmap;
    sub-int v4, p1, v14

    div-int/lit8 v4, v4, 0x2

    int-to-float v15, v4

    .line 907
    .local v15, left:F
    sub-int v4, p2, v13

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    move/from16 v18, v0

    .line 910
    .local v18, top:F
    new-instance v12, Landroid/graphics/ColorMatrix;

    invoke-direct {v12}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 911
    .local v12, cm:Landroid/graphics/ColorMatrix;
    const/16 v4, 0x14

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v12, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 914
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 916
    .local v11, canvas:Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v11, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 920
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v12}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 923
    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v11, v10, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 925
    mul-int v4, p2, p1

    new-array v3, v4, [I

    .line 926
    .local v3, pixBufInt:[I
    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 928
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 929
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 884
    .end local v2           #bmRes:Landroid/graphics/Bitmap;
    .end local v3           #pixBufInt:[I
    .end local v10           #bmScaled:Landroid/graphics/Bitmap;
    .end local v11           #canvas:Landroid/graphics/Canvas;
    .end local v12           #cm:Landroid/graphics/ColorMatrix;
    .end local v13           #destHeight:I
    .end local v14           #destWidth:I
    .end local v15           #left:F
    .end local v18           #top:F
    :cond_2
    move/from16 v13, p2

    .line 885
    .restart local v13       #destHeight:I
    mul-int v4, p2, p1

    sget-object v5, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I
    invoke-static {v5}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$0(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v5

    div-int v14, v4, v5

    .line 887
    .restart local v14       #destWidth:I
    goto/16 :goto_1

    .line 888
    .end local v13           #destHeight:I
    .end local v14           #destWidth:I
    :cond_3
    move/from16 v14, p1

    .line 889
    .restart local v14       #destWidth:I
    sget-object v4, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I
    invoke-static {v4}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$0(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v4

    mul-int v4, v4, p1

    sget-object v5, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I
    invoke-static {v5}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v5

    div-int v13, v4, v5

    .restart local v13       #destHeight:I
    goto/16 :goto_1

    .line 892
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 911
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "aKeyCode"
    .parameter "aEvent"

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, res:Z
    sparse-switch p1, :sswitch_data_0

    .line 279
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 281
    :cond_1
    return v0

    .line 271
    :sswitch_0
    iget v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I

    if-nez v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/waze/ifs/ui/CameraPreview;->capture()V

    .line 273
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 260
    return-void
.end method

.method public releaseBuf()V
    .locals 3

    .prologue
    .line 835
    iget-object v2, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    monitor-enter v2

    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 838
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 844
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Cannot release the buffer. "

    invoke-static {v1, v0}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 841
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 835
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I

    .line 331
    const/4 v0, 0x2

    iput v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreviewStatus:I

    .line 332
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    const/4 v1, 0x1

    #setter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCaptureCallbackActive:Z
    invoke-static {v0, v1}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$3(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;Z)V

    .line 333
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 334
    :cond_0
    return-void
.end method

.method public saveToFile()V
    .locals 8

    .prologue
    .line 801
    iget-object v6, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-gtz v6, :cond_0

    .line 829
    :goto_0
    return-void

    .line 805
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    sget-object v6, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageFolder:Ljava/lang/String;
    invoke-static {v6}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$7(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 806
    .local v3, fullPath:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageFile:Ljava/lang/String;
    invoke-static {v6}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$8(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 807
    .local v5, imageFileName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 808
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 811
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 812
    .local v4, imageFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 813
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 817
    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 819
    .local v2, fileOS:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 820
    .local v1, fileChannel:Ljava/nio/channels/FileChannel;
    iget-object v7, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :try_start_1
    iget-object v6, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 820
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 824
    .end local v1           #fileChannel:Ljava/nio/channels/FileChannel;
    .end local v2           #fileOS:Ljava/io/FileOutputStream;
    .end local v3           #fullPath:Ljava/lang/String;
    .end local v4           #imageFile:Ljava/io/File;
    .end local v5           #imageFileName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 825
    .local v0, ex:Ljava/lang/Exception;
    const-string v6, "Error in writing the file to the disk. "

    invoke-static {v6, v0}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 826
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 820
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #fileChannel:Ljava/nio/channels/FileChannel;
    .restart local v2       #fileOS:Ljava/io/FileOutputStream;
    .restart local v3       #fullPath:Ljava/lang/String;
    .restart local v4       #imageFile:Ljava/io/File;
    .restart local v5       #imageFileName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public setCaptureRect(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 377
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mWidth:F

    .line 378
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mLeft:F

    .line 379
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mTop:F

    .line 380
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/waze/ifs/ui/CameraPreview;->mHeight:F

    .line 381
    return-void
.end method

.method public setFlash(Lcom/waze/ifs/ui/CameraPreview$FlashMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 938
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mFlashModeValue:Ljava/lang/String;

    .line 939
    sget-object v1, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Off:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    if-ne p1, v1, :cond_1

    .line 940
    const-string v1, "off"

    iput-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mFlashModeValue:Ljava/lang/String;

    .line 948
    :goto_0
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 951
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mFlashModeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 952
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    .end local v0           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_1
    return-void

    .line 941
    :cond_1
    sget-object v1, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->On:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    if-ne p1, v1, :cond_2

    .line 942
    const-string v1, "on"

    iput-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mFlashModeValue:Ljava/lang/String;

    goto :goto_0

    .line 943
    :cond_2
    sget-object v1, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Auto:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    if-ne p1, v1, :cond_0

    .line 944
    const-string v1, "auto"

    iput-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mFlashModeValue:Ljava/lang/String;

    goto :goto_0

    .line 953
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 15
    .parameter "aHolder"
    .parameter "aFormat"
    .parameter "aWidth"
    .parameter "aHeight"

    .prologue
    .line 183
    :try_start_0
    iget v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreviewStatus:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    .line 184
    sget-object v12, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v12

    if-gez v12, :cond_0

    sget-object v12, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$0(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v12

    if-ltz v12, :cond_7

    .line 185
    :cond_0
    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v12}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 187
    .local v5, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mFlashModeValue:Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 188
    const-string v12, "auto"

    invoke-virtual {v5, v12}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 189
    const-string v12, "auto"

    invoke-virtual {v5, v12}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 191
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v5}, Lcom/waze/ifs/ui/CameraPreview$CompatabilityWrapper;->getBestPreviewSize(IILandroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 192
    .local v6, previewSize:Landroid/hardware/Camera$Size;
    iget v12, v6, Landroid/hardware/Camera$Size;->width:I

    iget v13, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v12, v13}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 193
    invoke-direct {p0, v6}, Lcom/waze/ifs/ui/CameraPreview;->sizeCallback(Landroid/hardware/Camera$Size;)V

    .line 197
    sget-object v12, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v12

    .line 198
    sget-object v13, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I
    invoke-static {v13}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$0(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v13

    sget-object v14, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mMaximizeCapture:Z
    invoke-static {v14}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$2(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Z

    move-result v14

    .line 197
    invoke-static {v12, v13, v14, v5}, Lcom/waze/ifs/ui/CameraPreview$CompatabilityWrapper;->getBestFitSize(IIZLandroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 199
    .local v10, size:Landroid/hardware/Camera$Size;
    iget v12, v10, Landroid/hardware/Camera$Size;->width:I

    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v12, v13}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 201
    new-instance v12, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v12}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mInfo:Landroid/hardware/Camera$CameraInfo;

    .line 202
    const/4 v12, 0x0

    iget-object v13, p0, Lcom/waze/ifs/ui/CameraPreview;->mInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v12, v13}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 205
    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 206
    .local v11, wm:Landroid/view/WindowManager;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 208
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 209
    .local v9, rotation:I
    const/4 v4, 0x0

    .line 210
    .local v4, orientation:I
    const/4 v8, 0x0

    .line 212
    .local v8, rotate:I
    if-nez v9, :cond_3

    .line 213
    const/4 v4, 0x0

    .line 214
    const/16 v8, 0x5a

    .line 225
    :cond_1
    :goto_0
    invoke-virtual {v5, v8}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 227
    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mInfo:Landroid/hardware/Camera$CameraInfo;

    iget v12, v12, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 228
    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mInfo:Landroid/hardware/Camera$CameraInfo;

    iget v12, v12, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v12, v4

    rem-int/lit16 v7, v12, 0x168

    .line 229
    .local v7, result:I
    rsub-int v12, v7, 0x168

    rem-int/lit16 v7, v12, 0x168

    .line 233
    :goto_1
    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v12, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 235
    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v12, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 237
    const/4 v12, 0x0

    iput v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I

    .line 238
    const/4 v12, 0x2

    iput v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreviewStatus:I

    .line 239
    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v12}, Landroid/hardware/Camera;->startPreview()V

    .line 258
    .end local v2           #display:Landroid/view/Display;
    .end local v4           #orientation:I
    .end local v5           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v6           #previewSize:Landroid/hardware/Camera$Size;
    .end local v7           #result:I
    .end local v8           #rotate:I
    .end local v9           #rotation:I
    .end local v10           #size:Landroid/hardware/Camera$Size;
    .end local v11           #wm:Landroid/view/WindowManager;
    :cond_2
    :goto_2
    return-void

    .line 215
    .restart local v2       #display:Landroid/view/Display;
    .restart local v4       #orientation:I
    .restart local v5       #parameters:Landroid/hardware/Camera$Parameters;
    .restart local v6       #previewSize:Landroid/hardware/Camera$Size;
    .restart local v8       #rotate:I
    .restart local v9       #rotation:I
    .restart local v10       #size:Landroid/hardware/Camera$Size;
    .restart local v11       #wm:Landroid/view/WindowManager;
    :cond_3
    const/4 v12, 0x1

    if-ne v9, v12, :cond_4

    .line 216
    const/16 v4, 0x5a

    .line 217
    const/4 v8, 0x0

    .line 218
    goto :goto_0

    :cond_4
    const/4 v12, 0x2

    if-ne v9, v12, :cond_5

    .line 219
    const/16 v4, 0xb4

    .line 220
    const/16 v8, 0x10e

    .line 221
    goto :goto_0

    :cond_5
    const/4 v12, 0x3

    if-ne v9, v12, :cond_1

    .line 222
    const/16 v4, 0x10e

    .line 223
    const/16 v8, 0xb4

    goto :goto_0

    .line 231
    :cond_6
    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mInfo:Landroid/hardware/Camera$CameraInfo;

    iget v12, v12, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v12, v4

    add-int/lit16 v12, v12, 0x168

    rem-int/lit16 v7, v12, 0x168

    .restart local v7       #result:I
    goto :goto_1

    .line 241
    .end local v2           #display:Landroid/view/Display;
    .end local v4           #orientation:I
    .end local v5           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v6           #previewSize:Landroid/hardware/Camera$Size;
    .end local v7           #result:I
    .end local v8           #rotate:I
    .end local v9           #rotation:I
    .end local v10           #size:Landroid/hardware/Camera$Size;
    .end local v11           #wm:Landroid/view/WindowManager;
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Requested image dimensions are invalid. Width: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I
    invoke-static {v13}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 242
    const-string v13, ". Height: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I
    invoke-static {v13}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$0(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 241
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/waze/Logger;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 247
    :catch_0
    move-exception v3

    .line 248
    .local v3, ex:Ljava/lang/Exception;
    const-string v12, "Error in surfaceChanged"

    invoke-static {v12, v3}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const/4 v12, 0x0

    iput v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreviewStatus:I

    .line 252
    const/4 v12, 0x0

    iput v12, p0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I

    .line 254
    sget-object v12, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$4(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 255
    sget-object v12, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$4(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    move-result-object v12

    invoke-interface {v12}, Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;->onError()V

    goto :goto_2

    .line 245
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_8
    :try_start_1
    const-string v12, "Camera preivew is not ready!"

    invoke-static {v12}, Lcom/waze/Logger;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "aHolder"

    .prologue
    const/4 v3, 0x0

    .line 81
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 82
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 83
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 84
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 86
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mTop:F

    iput v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mLeft:F

    .line 88
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mHeight:F

    iput v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mWidth:F

    .line 90
    sget-object v1, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    const/4 v2, 0x1

    #setter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCaptureCallbackActive:Z
    invoke-static {v1, v2}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$3(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;Z)V

    .line 91
    const/4 v1, 0x1

    iput v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreviewStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Error in creating the surface"

    invoke-static {v1, v0}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    iput v3, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreviewStatus:I

    .line 96
    iput v3, p0, Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I

    .line 98
    sget-object v1, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;
    invoke-static {v1}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$4(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;
    invoke-static {v1}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$4(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;->onError()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "aHolder"

    .prologue
    const/4 v2, 0x0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 160
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 162
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview;->mBufOS:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/waze/ifs/ui/CameraPreview;->releaseBuf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_1
    iput v2, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreviewStatus:I

    .line 176
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Error in destroying the surface"

    invoke-static {v1, v0}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    sget-object v1, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;
    invoke-static {v1}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$4(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 171
    sget-object v1, Lcom/waze/ifs/ui/CameraPreview;->mCaptureParams:Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;
    invoke-static {v1}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$4(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;->onError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :cond_2
    iput v2, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreviewStatus:I

    goto :goto_0

    .line 173
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 174
    iput v2, p0, Lcom/waze/ifs/ui/CameraPreview;->mPreviewStatus:I

    .line 175
    throw v1
.end method
