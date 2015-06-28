.class public final Lcom/waze/NativeCanvas;
.super Ljava/lang/Object;
.source "NativeCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/NativeCanvas$CompatabilityWrapper;
    }
.end annotation


# static fields
.field public static final CANVAS_VIEW_READY_TIMEOUT:J = 0x1388L

.field public static final WAZE_CORDING_MAX_POINTS:I = 0x8

.field public static final WAZE_OGL_RENDER_WAIT_TIMEOUT:J = 0x64L

.field public static final WAZE_OGL_SWAP_BUFFERS_DELAY:J = 0xaL

.field private static mCanvasReadyEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/ifs/async/RunnableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/waze/NativeCanvas;


# instance fields
.field private mCancelSplashNeeded:Z

.field private volatile mCanvasCreated:Z

.field private mCanvasHeight:I

.field private mCanvasPixelFormat:I

.field private mCanvasView:Lcom/waze/MapView;

.field private mCanvasWidth:I

.field private volatile mCreateRequest:Z

.field private volatile mDestroyRequest:Z

.field private mDisplay:Landroid/view/Display;

.field private mIsOrientionUpdate:Z

.field private volatile mIsWaiting:Z

.field private mNativeManager:Lcom/waze/NativeManager;

.field private volatile mRenderPending:Z

.field private volatile mResizeRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 787
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/waze/NativeCanvas;->mCanvasReadyEvents:Ljava/util/ArrayList;

    .line 791
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/NativeCanvas;->mInstance:Lcom/waze/NativeCanvas;

    .line 811
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    .line 793
    iput v2, p0, Lcom/waze/NativeCanvas;->mCanvasWidth:I

    .line 794
    iput v2, p0, Lcom/waze/NativeCanvas;->mCanvasHeight:I

    .line 795
    iput v2, p0, Lcom/waze/NativeCanvas;->mCanvasPixelFormat:I

    .line 796
    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mCanvasCreated:Z

    .line 797
    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mDestroyRequest:Z

    .line 798
    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mResizeRequest:Z

    .line 799
    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mCreateRequest:Z

    .line 800
    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mIsWaiting:Z

    .line 801
    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mRenderPending:Z

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/NativeCanvas;->mCancelSplashNeeded:Z

    .line 805
    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mIsOrientionUpdate:Z

    .line 729
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/NativeCanvas;->mNativeManager:Lcom/waze/NativeManager;

    .line 731
    invoke-direct {p0}, Lcom/waze/NativeCanvas;->InitNativeLayerNTV()V

    .line 733
    return-void
.end method

.method private CallOnCanvasReadyEvents()V
    .locals 3

    .prologue
    .line 721
    :goto_0
    sget-object v1, Lcom/waze/NativeCanvas;->mCanvasReadyEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 726
    return-void

    .line 723
    :cond_0
    sget-object v1, Lcom/waze/NativeCanvas;->mCanvasReadyEvents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/async/RunnableExecutor;

    .line 724
    .local v0, event:Lcom/waze/ifs/async/RunnableExecutor;
    invoke-virtual {v0}, Lcom/waze/ifs/async/RunnableExecutor;->run()V

    goto :goto_0
.end method

.method private native CanvasConfigureNTV(ZZLjava/lang/String;)V
.end method

.method public static GetSplashBmp(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "aView"

    .prologue
    .line 591
    const/4 v3, 0x0

    .line 592
    .local v3, splashStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 599
    .local v0, bmScaled:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Lcom/waze/ResManager;->GetSplashName(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/ResManager;->LoadSkinStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 606
    :goto_0
    if-eqz v3, :cond_0

    .line 608
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 609
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 611
    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 613
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v0

    .line 601
    :catch_0
    move-exception v1

    .line 603
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "WAZE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error loading splash screen! "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private native InitCanvasNTV(III)V
.end method

.method private native InitNativeLayerNTV()V
.end method

.method private native KeyDownHandlerNTV(IZ[B)V
.end method

.method private native MouseMovedNTV([I)V
.end method

.method private native MousePressedNTV([I)V
.end method

.method private native MouseReleasedNTV([I)V
.end method

.method public static Notify()V
    .locals 2

    .prologue
    .line 677
    sget-object v0, Lcom/waze/NativeCanvas;->mInstance:Lcom/waze/NativeCanvas;

    if-nez v0, :cond_0

    .line 679
    const-string v0, "WAZE"

    const-string v1, "Cannot notify - NativeCanvas is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    sget-object v1, Lcom/waze/NativeCanvas;->mInstance:Lcom/waze/NativeCanvas;

    monitor-enter v1

    .line 683
    :try_start_0
    sget-object v0, Lcom/waze/NativeCanvas;->mInstance:Lcom/waze/NativeCanvas;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 681
    monitor-exit v1

    .line 685
    return-void

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static PostOnCanvasReadyEvents()V
    .locals 3

    .prologue
    .line 713
    .local v0, event:Ljava/lang/Runnable;
    :goto_0
    sget-object v1, Lcom/waze/NativeCanvas;->mCanvasReadyEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 718
    return-void

    .line 715
    :cond_0
    sget-object v1, Lcom/waze/NativeCanvas;->mCanvasReadyEvents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #event:Ljava/lang/Runnable;
    check-cast v0, Ljava/lang/Runnable;

    .line 716
    .restart local v0       #event:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private native Tap3NTV()V
.end method

.method public static Wait(J)Z
    .locals 8
    .parameter "millis"

    .prologue
    .line 649
    const/4 v1, 0x0

    .line 650
    .local v1, notified:Z
    sget-object v4, Lcom/waze/NativeCanvas;->mInstance:Lcom/waze/NativeCanvas;

    if-nez v4, :cond_0

    .line 652
    const-string v4, "WAZE"

    const-string v5, "Cannot wait - NativeCanvas is not initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_0
    :try_start_0
    sget-object v5, Lcom/waze/NativeCanvas;->mInstance:Lcom/waze/NativeCanvas;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 659
    .local v2, start_time:J
    sget-object v4, Lcom/waze/NativeCanvas;->mInstance:Lcom/waze/NativeCanvas;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/waze/NativeCanvas;->mIsWaiting:Z

    .line 660
    sget-object v4, Lcom/waze/NativeCanvas;->mInstance:Lcom/waze/NativeCanvas;

    invoke-virtual {v4, p0, p1}, Ljava/lang/Object;->wait(J)V

    .line 661
    sget-object v4, Lcom/waze/NativeCanvas;->mInstance:Lcom/waze/NativeCanvas;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/waze/NativeCanvas;->mIsWaiting:Z

    .line 662
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v4, v6, p0

    if-gez v4, :cond_1

    .line 663
    const/4 v1, 0x1

    .line 656
    :cond_1
    monitor-exit v5

    .line 670
    .end local v2           #start_time:J
    :goto_0
    return v1

    .line 656
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 666
    :catch_0
    move-exception v0

    .line 668
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v4, "WAZE"

    const-string v5, "NativeCanvas wait was interrupted!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/waze/NativeCanvas;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/waze/NativeCanvas;->destroyCanvasEvent()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/NativeCanvas;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/waze/NativeCanvas;->notifyDestroy()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/NativeCanvas;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/waze/NativeCanvas;->notifyResize()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/NativeCanvas;)Z
    .locals 1
    .parameter

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/waze/NativeCanvas;->mCanvasCreated:Z

    return v0
.end method

.method static synthetic access$4(Lcom/waze/NativeCanvas;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeCanvas;->createCanvasEvent(II)V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/NativeCanvas;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/waze/NativeCanvas;->notifyCreate()V

    return-void
.end method

.method private cancelSplash()V
    .locals 5

    .prologue
    .line 285
    iget-boolean v1, p0, Lcom/waze/NativeCanvas;->mCancelSplashNeeded:Z

    if-eqz v1, :cond_1

    .line 288
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 289
    .local v0, mainActivity:Lcom/waze/MainActivity;
    if-eqz v0, :cond_0

    .line 290
    iget-object v1, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    new-instance v2, Lcom/waze/NativeCanvas$3;

    invoke-direct {v2, p0, v0}, Lcom/waze/NativeCanvas$3;-><init>(Lcom/waze/NativeCanvas;Lcom/waze/MainActivity;)V

    .line 295
    const-wide/16 v3, 0xfa

    .line 290
    invoke-virtual {v1, v2, v3, v4}, Lcom/waze/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mCancelSplashNeeded:Z

    .line 299
    .end local v0           #mainActivity:Lcom/waze/MainActivity;
    :cond_1
    return-void
.end method

.method public static create()Lcom/waze/NativeCanvas;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/waze/NativeCanvas;->mInstance:Lcom/waze/NativeCanvas;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/waze/NativeCanvas;

    invoke-direct {v0}, Lcom/waze/NativeCanvas;-><init>()V

    sput-object v0, Lcom/waze/NativeCanvas;->mInstance:Lcom/waze/NativeCanvas;

    .line 55
    :cond_0
    sget-object v0, Lcom/waze/NativeCanvas;->mInstance:Lcom/waze/NativeCanvas;

    return-object v0
.end method

.method private createCanvasEvent(II)V
    .locals 2
    .parameter "aWidth"
    .parameter "aHeight"

    .prologue
    .line 368
    const-string v0, "WAZE"

    const-string v1, "Create canvas event"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeCanvas;->initNativeCanvas(II)V

    .line 373
    invoke-virtual {p0}, Lcom/waze/NativeCanvas;->CanvasCreateNTV()V

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/NativeCanvas;->mCanvasCreated:Z

    .line 377
    iget-object v0, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onNativeCanvasReady()V

    .line 379
    return-void
.end method

.method private destroyCanvasEvent()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/NativeCanvas;->mCanvasCreated:Z

    .line 277
    invoke-virtual {p0}, Lcom/waze/NativeCanvas;->CanvasDestroyNTV()V

    .line 278
    return-void
.end method

.method public static getInstance()Lcom/waze/NativeCanvas;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/waze/NativeCanvas;->create()Lcom/waze/NativeCanvas;

    move-result-object v0

    return-object v0
.end method

.method private initNativeCanvas(II)V
    .locals 6
    .parameter "aCanvasWidth"
    .parameter "aCanvasHeight"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, ctx:Landroid/content/Context;
    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 136
    .local v1, windowMgr:Landroid/view/WindowManager;
    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getPixelFormat()I

    move-result v4

    iput v4, p0, Lcom/waze/NativeCanvas;->mCanvasPixelFormat:I

    .line 141
    :cond_0
    iget v4, p0, Lcom/waze/NativeCanvas;->mCanvasWidth:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 143
    iget v4, p0, Lcom/waze/NativeCanvas;->mCanvasWidth:I

    iget v5, p0, Lcom/waze/NativeCanvas;->mCanvasHeight:I

    if-le v4, v5, :cond_2

    move v4, v2

    .line 144
    :goto_0
    if-le p1, p2, :cond_3

    :goto_1
    xor-int/2addr v2, v4

    .line 143
    iput-boolean v2, p0, Lcom/waze/NativeCanvas;->mIsOrientionUpdate:Z

    .line 147
    :cond_1
    iput p1, p0, Lcom/waze/NativeCanvas;->mCanvasWidth:I

    .line 148
    iput p2, p0, Lcom/waze/NativeCanvas;->mCanvasHeight:I

    .line 151
    iget v2, p0, Lcom/waze/NativeCanvas;->mCanvasWidth:I

    iget v3, p0, Lcom/waze/NativeCanvas;->mCanvasHeight:I

    iget v4, p0, Lcom/waze/NativeCanvas;->mCanvasPixelFormat:I

    invoke-direct {p0, v2, v3, v4}, Lcom/waze/NativeCanvas;->InitCanvasNTV(III)V

    .line 152
    return-void

    :cond_2
    move v4, v3

    .line 143
    goto :goto_0

    :cond_3
    move v2, v3

    .line 144
    goto :goto_1
.end method

.method public static nextPowerOf2(I)I
    .locals 2
    .parameter "aNum"

    .prologue
    .line 621
    move v0, p0

    .line 623
    .local v0, outNum:I
    add-int/lit8 v0, v0, -0x1

    .line 624
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 625
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 626
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 627
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 628
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 629
    add-int/lit8 v0, v0, 0x1

    .line 630
    return v0
.end method

.method private declared-synchronized notifyCreate()V
    .locals 1

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/waze/NativeCanvas;->mCreateRequest:Z

    if-eqz v0, :cond_0

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/NativeCanvas;->mCreateRequest:Z

    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :cond_0
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyDestroy()V
    .locals 1

    .prologue
    .line 258
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/waze/NativeCanvas;->mDestroyRequest:Z

    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyResize()V
    .locals 1

    .prologue
    .line 244
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/waze/NativeCanvas;->mResizeRequest:Z

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static registerOnCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V
    .locals 1
    .parameter "aEvent"

    .prologue
    .line 509
    sget-object v0, Lcom/waze/NativeCanvas;->mCanvasReadyEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method private resizeCanvasEvent(II)V
    .locals 1
    .parameter "aWidth"
    .parameter "aHeight"

    .prologue
    .line 385
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeCanvas;->initNativeCanvas(II)V

    .line 387
    iget-boolean v0, p0, Lcom/waze/NativeCanvas;->mIsOrientionUpdate:Z

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/waze/NativeCanvas;->CanvasOrientationUpdateNTV()V

    .line 391
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/NativeCanvas;->mIsOrientionUpdate:Z

    .line 393
    invoke-virtual {p0}, Lcom/waze/NativeCanvas;->ResizeEndNTV()V

    .line 396
    return-void
.end method

.method private declared-synchronized waitCreate()V
    .locals 2

    .prologue
    .line 357
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/waze/NativeCanvas;->mCreateRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 364
    monitor-exit p0

    return-void

    .line 359
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "WAZE"

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 357
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized waitDestroy()V
    .locals 2

    .prologue
    .line 263
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/waze/NativeCanvas;->mDestroyRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 270
    monitor-exit p0

    return-void

    .line 265
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "WAZE"

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 263
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized waitResize()V
    .locals 2

    .prologue
    .line 249
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/waze/NativeCanvas;->mResizeRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 256
    monitor-exit p0

    return-void

    .line 251
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "WAZE"

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 249
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public CanvasConfigure()V
    .locals 3

    .prologue
    .line 305
    invoke-static {}, Lcom/waze/MapView;->gpuSupported()I

    move-result v0

    sget v1, Lcom/waze/MapView;->GPU_SUPPORTED:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 306
    :goto_0
    invoke-static {}, Lcom/waze/MapView;->isFBOsupported()Z

    move-result v1

    invoke-static {}, Lcom/waze/MapView;->getRenderer()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-direct {p0, v0, v1, v2}, Lcom/waze/NativeCanvas;->CanvasConfigureNTV(ZZLjava/lang/String;)V

    .line 307
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native CanvasContextNTV()V
.end method

.method public native CanvasCreateNTV()V
.end method

.method public native CanvasDestroyNTV()V
.end method

.method public CanvasOrientationUpdate()V
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/waze/NativeCanvas;->mIsOrientionUpdate:Z

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/waze/NativeCanvas;->CanvasOrientationUpdateNTV()V

    .line 642
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/NativeCanvas;->mIsOrientionUpdate:Z

    .line 643
    return-void
.end method

.method public native CanvasOrientationUpdateNTV()V
.end method

.method public native CanvasPrepareNTV()V
.end method

.method public CreateCanvas(Lcom/waze/MapView;II)V
    .locals 3
    .parameter "aCanvasView"
    .parameter "aWidth"
    .parameter "aHeight"

    .prologue
    .line 314
    invoke-virtual {p1}, Lcom/waze/MapView;->IsReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const-string v1, "WAZE"

    const-string v2, "Cannot create canvas - view is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    return-void

    .line 320
    :cond_0
    iput-object p1, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    .line 323
    new-instance v0, Lcom/waze/NativeCanvas$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/waze/NativeCanvas$4;-><init>(Lcom/waze/NativeCanvas;II)V

    .line 335
    .local v0, event:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/waze/NativeCanvas;->mNativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 341
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mCreateRequest:Z

    .line 343
    iget-object v1, p0, Lcom/waze/NativeCanvas;->mNativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v1, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 344
    invoke-direct {p0}, Lcom/waze/NativeCanvas;->waitCreate()V

    goto :goto_0
.end method

.method public DestroyCanvas(Lcom/waze/MapView;)V
    .locals 3
    .parameter "aCanvasView"

    .prologue
    .line 165
    iget-boolean v1, p0, Lcom/waze/NativeCanvas;->mDestroyRequest:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/waze/NativeCanvas;->mCanvasCreated:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/waze/NativeCanvas;->isCanvasView(Lcom/waze/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/waze/NativeManager;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/waze/NativeCanvas;->mNativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/waze/NativeCanvas;->destroyCanvasEvent()V

    .line 189
    :goto_1
    const-string v1, "WAZE DEBUG"

    const-string v2, "Destroy completed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_2
    new-instance v0, Lcom/waze/NativeCanvas$1;

    invoke-direct {v0, p0}, Lcom/waze/NativeCanvas$1;-><init>(Lcom/waze/NativeCanvas;)V

    .line 184
    .local v0, event:Ljava/lang/Runnable;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mDestroyRequest:Z

    .line 186
    iget-object v1, p0, Lcom/waze/NativeCanvas;->mNativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v1, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 187
    invoke-direct {p0}, Lcom/waze/NativeCanvas;->waitDestroy()V

    goto :goto_1
.end method

.method public native DestroyedNTV()V
.end method

.method public native FlushNTV()V
.end method

.method public native OGLEventNTV(I)V
.end method

.method public OnKeyDownHandler(Landroid/view/KeyEvent;)Z
    .locals 14
    .parameter "aEvent"

    .prologue
    .line 435
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 437
    .local v0, aKeyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v10

    .line 438
    .local v10, unicodeChar:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, chars:Ljava/lang/String;
    const/16 v12, 0x40

    new-array v11, v12, [B

    .line 444
    .local v11, utf8Bytes:[B
    if-nez v10, :cond_0

    if-eqz v1, :cond_4

    .line 447
    :cond_0
    const/4 v12, 0x1

    new-array v2, v12, [I

    .line 448
    .local v2, codePoints:[I
    const/4 v5, 0x0

    .line 450
    .local v5, isSpecalButton:Z
    if-eqz v10, :cond_2

    .line 452
    const/4 v12, 0x0

    aput v10, v2, v12

    .line 453
    new-instance v8, Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct {v8, v2, v12, v13}, Ljava/lang/String;-><init>([III)V

    .line 461
    .local v8, strUnicode:Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string v12, "UTF-8"

    invoke-virtual {v8, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 462
    .local v9, tmpBuf:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v12, v9
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, v12, :cond_1

    const/16 v12, 0x40

    if-lt v4, v12, :cond_3

    .line 478
    .end local v2           #codePoints:[I
    .end local v4           #i:I
    .end local v8           #strUnicode:Ljava/lang/String;
    .end local v9           #tmpBuf:[B
    :cond_1
    :goto_2
    const/16 v12, 0x54

    if-ne v0, v12, :cond_5

    .line 479
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/waze/MainActivity;->startNavigateActivity()V

    .line 480
    const/4 v12, 0x1

    .line 502
    :goto_3
    return v12

    .line 457
    .restart local v2       #codePoints:[I
    :cond_2
    move-object v8, v1

    .restart local v8       #strUnicode:Ljava/lang/String;
    goto :goto_0

    .line 464
    .restart local v4       #i:I
    .restart local v9       #tmpBuf:[B
    :cond_3
    :try_start_1
    aget-byte v12, v9, v4

    aput-byte v12, v11, v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 467
    .end local v4           #i:I
    .end local v9           #tmpBuf:[B
    :catch_0
    move-exception v3

    .line 469
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "The conversion to the unicode cannot be performed for "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 475
    .end local v2           #codePoints:[I
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v5           #isSpecalButton:Z
    .end local v8           #strUnicode:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    .restart local v5       #isSpecalButton:Z
    goto :goto_2

    .line 483
    :cond_5
    const/4 v12, 0x4

    if-ne v0, v12, :cond_6

    .line 485
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v7

    .line 486
    .local v7, main:Lcom/waze/MainActivity;
    if-eqz v7, :cond_6

    .line 487
    invoke-virtual {v7}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v6

    .line 488
    .local v6, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/waze/LayoutManager;->IsPopupsShown()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 489
    new-instance v12, Lcom/waze/NativeCanvas$7;

    invoke-direct {v12, p0, v6}, Lcom/waze/NativeCanvas$7;-><init>(Lcom/waze/NativeCanvas;Lcom/waze/LayoutManager;)V

    invoke-static {v12}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 494
    const/4 v12, 0x1

    goto :goto_3

    .line 500
    .end local v6           #layoutMgr:Lcom/waze/LayoutManager;
    .end local v7           #main:Lcom/waze/MainActivity;
    :cond_6
    invoke-direct {p0, v0, v5, v11}, Lcom/waze/NativeCanvas;->KeyDownHandlerNTV(IZ[B)V

    .line 502
    const/4 v12, 0x1

    goto :goto_3
.end method

.method public OnTouchEventHandler(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "aEvent"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 520
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 522
    .local v4, sdkBuildVersion:I
    const/4 v1, 0x0

    .line 523
    .local v1, coordXY:[I
    if-lt v4, v8, :cond_3

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 530
    .local v0, action:I
    invoke-static {p1}, Lcom/waze/NativeCanvas$CompatabilityWrapper;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    .line 531
    .local v3, pointerCount:I
    mul-int/lit8 v5, v3, 0x2

    new-array v1, v5, [I

    .line 533
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 542
    :cond_0
    if-ne v0, v8, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0x205

    if-eq v5, v6, :cond_2

    .line 544
    invoke-direct {p0, v1}, Lcom/waze/NativeCanvas;->MousePressedNTV([I)V

    .line 583
    .end local v0           #action:I
    .end local v2           #i:I
    .end local v3           #pointerCount:I
    :goto_1
    return v7

    .line 535
    .restart local v0       #action:I
    .restart local v2       #i:I
    .restart local v3       #pointerCount:I
    :cond_1
    const/16 v5, 0x8

    if-eq v2, v5, :cond_0

    .line 538
    mul-int/lit8 v5, v2, 0x2

    invoke-static {p1, v2}, Lcom/waze/NativeCanvas$CompatabilityWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v1, v5

    .line 539
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-static {p1, v2}, Lcom/waze/NativeCanvas$CompatabilityWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v1, v5

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 547
    :cond_2
    const/4 v5, 0x6

    if-ne v0, v5, :cond_4

    .line 549
    invoke-direct {p0, v1}, Lcom/waze/NativeCanvas;->MouseReleasedNTV([I)V

    goto :goto_1

    .line 555
    .end local v0           #action:I
    .end local v2           #i:I
    .end local v3           #pointerCount:I
    :cond_3
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 556
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    aput v6, v1, v5

    .line 557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    aput v5, v1, v7

    .line 560
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    .line 564
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/waze/NativeCanvas;->MousePressedNTV([I)V

    goto :goto_1

    .line 569
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/waze/NativeCanvas;->MouseReleasedNTV([I)V

    goto :goto_1

    .line 574
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/waze/NativeCanvas;->MouseMovedNTV([I)V

    goto :goto_1

    .line 579
    :sswitch_3
    invoke-direct {p0}, Lcom/waze/NativeCanvas;->Tap3NTV()V

    goto :goto_1

    .line 560
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x205 -> :sswitch_3
    .end sparse-switch
.end method

.method public OrientationUpdate()V
    .locals 2

    .prologue
    .line 419
    iget-boolean v1, p0, Lcom/waze/NativeCanvas;->mIsOrientionUpdate:Z

    if-eqz v1, :cond_0

    .line 421
    new-instance v0, Lcom/waze/NativeCanvas$6;

    invoke-direct {v0, p0}, Lcom/waze/NativeCanvas$6;-><init>(Lcom/waze/NativeCanvas;)V

    .line 426
    .local v0, event:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 428
    .end local v0           #event:Ljava/lang/Runnable;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mIsOrientionUpdate:Z

    .line 429
    return-void
.end method

.method public RedrawCanvas()V
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcom/waze/NativeCanvas$5;

    invoke-direct {v0, p0}, Lcom/waze/NativeCanvas$5;-><init>(Lcom/waze/NativeCanvas;)V

    .line 410
    .local v0, redrawEvent:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method

.method public native RedrawNTV()V
.end method

.method public native RenderNTV()V
.end method

.method public RequestFlush()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->IsReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    const-string v0, "Surface is not ready for flushing! Giving up"

    invoke-static {v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    invoke-static {}, Lcom/waze/OGLRenderer;->createFlushEvent()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/MapView;->queueEvent(Ljava/lang/Runnable;)V

    .line 90
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public RequestOGLEvent(I)V
    .locals 2
    .parameter "aEventId"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->IsReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    const-string v0, "Surface is not ready for rendering!"

    invoke-static {v0}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    invoke-static {p1}, Lcom/waze/OGLRenderer;->createOGLEvent(I)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/MapView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public RequestRender()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    iget-object v1, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    invoke-virtual {v1}, Lcom/waze/MapView;->IsReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    const-string v0, "Canvas is not ready for rendering! Giving up"

    invoke-static {v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/waze/NativeCanvas;->cancelSplash()V

    .line 114
    monitor-enter p0

    .line 116
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mRenderPending:Z

    .line 117
    iget-object v1, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    invoke-virtual {v1}, Lcom/waze/MapView;->requestRender()V

    .line 114
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public native ResizeEndNTV()V
.end method

.method public ResizeStart(Lcom/waze/MapView;)V
    .locals 2
    .parameter "aCanvasView"

    .prologue
    .line 196
    iget-boolean v1, p0, Lcom/waze/NativeCanvas;->mCanvasCreated:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/waze/NativeCanvas;->isCanvasView(Lcom/waze/MapView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/NativeCanvas;->mResizeRequest:Z

    .line 202
    new-instance v0, Lcom/waze/NativeCanvas$2;

    invoke-direct {v0, p0}, Lcom/waze/NativeCanvas$2;-><init>(Lcom/waze/NativeCanvas;)V

    .line 209
    .local v0, event:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/waze/NativeCanvas;->mNativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v1, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 210
    invoke-direct {p0}, Lcom/waze/NativeCanvas;->waitResize()V

    goto :goto_0
.end method

.method public native ResizeStartNTV()V
.end method

.method public isCanvasView(Lcom/waze/MapView;)Z
    .locals 1
    .parameter "aView"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/waze/NativeCanvas;->mCanvasView:Lcom/waze/MapView;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isCreated()Z
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/waze/NativeCanvas;->mCanvasCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDestroying()Z
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/waze/NativeCanvas;->mDestroyRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRenderPending()Z
    .locals 1

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/waze/NativeCanvas;->mRenderPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCancelSplashNeeded(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/waze/NativeCanvas;->mCancelSplashNeeded:Z

    .line 282
    return-void
.end method

.method public declared-synchronized setRenderPending(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/waze/NativeCanvas;->mRenderPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
