.class public final Lcom/waze/OGLRenderer;
.super Ljava/lang/Object;
.source "OGLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/OGLRenderer$OGLEvent;,
        Lcom/waze/OGLRenderer$OnRenderListener;
    }
.end annotation


# static fields
.field private static final FBO_EXT_NAME:Ljava/lang/String; = "GL_OES_framebuffer_object"

.field private static final FBO_PROBLEMATIC_GPU:[Ljava/lang/String; = null

.field private static final OGL_EVENT_ID_DEBUG:I = -0x2

.field private static final OGL_EVENT_ID_FLUSH:I = -0x1

.field private static final PREF_FIELD_FBO_SUPPORTED:Ljava/lang/String; = "FBO Supported"

.field private static final PREF_FIELD_RENDERER:Ljava/lang/String; = "Renderer"

.field private static final PREF_NAME:Ljava/lang/String; = "com.waze.OGLRenderer"

.field private static final RENDERER_UNDEFINED:Ljava/lang/String; = "=== UNDEFINED ==="

.field private static SW_RENDERER_NAME:Ljava/lang/String;

.field private static mFBOsupported:Z

.field private static mInitialized:Z

.field private static mPrefsLoaded:Z

.field private static mRenderer:Ljava/lang/String;


# instance fields
.field final LOG_RENDER_COUNT:I

.field bTryToRender:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field mImageData:[I

.field mOnRenderListener:Lcom/waze/OGLRenderer$OnRenderListener;

.field mRenderCount:I

.field mTex:[I

.field private mView:Lcom/waze/MapView;

.field toRender:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-static {}, Lcom/waze/OGLRenderer;->loadPrefs()V

    .line 443
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PowerVR SGX 530"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "VideoCore IV HW"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mali-T604"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Mali-T628"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Mali-T624"

    aput-object v2, v0, v1

    sput-object v0, Lcom/waze/OGLRenderer;->FBO_PROBLEMATIC_GPU:[Ljava/lang/String;

    .line 445
    const-string v0, "Android PixelFlinger"

    sput-object v0, Lcom/waze/OGLRenderer;->SW_RENDERER_NAME:Ljava/lang/String;

    .line 447
    sput-boolean v3, Lcom/waze/OGLRenderer;->mInitialized:Z

    .line 448
    const-string v0, "=== UNDEFINED ==="

    sput-object v0, Lcom/waze/OGLRenderer;->mRenderer:Ljava/lang/String;

    .line 449
    sput-boolean v3, Lcom/waze/OGLRenderer;->mFBOsupported:Z

    .line 450
    sput-boolean v3, Lcom/waze/OGLRenderer;->mPrefsLoaded:Z

    return-void
.end method

.method public constructor <init>(Lcom/waze/MapView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v2, p0, Lcom/waze/OGLRenderer;->mRenderCount:I

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/waze/OGLRenderer;->LOG_RENDER_COUNT:I

    .line 344
    iput-object v1, p0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    .line 345
    iput-object v1, p0, Lcom/waze/OGLRenderer;->mTex:[I

    .line 346
    iput-object v1, p0, Lcom/waze/OGLRenderer;->mImageData:[I

    .line 451
    iput-object v1, p0, Lcom/waze/OGLRenderer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 453
    iput-object v1, p0, Lcom/waze/OGLRenderer;->mView:Lcom/waze/MapView;

    .line 455
    iput-object v1, p0, Lcom/waze/OGLRenderer;->toRender:Landroid/widget/ImageView;

    .line 456
    iput-object v1, p0, Lcom/waze/OGLRenderer;->mOnRenderListener:Lcom/waze/OGLRenderer$OnRenderListener;

    .line 457
    iput-boolean v2, p0, Lcom/waze/OGLRenderer;->bTryToRender:Z

    .line 35
    iput-object p1, p0, Lcom/waze/OGLRenderer;->mView:Lcom/waze/MapView;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/waze/OGLRenderer;)Lcom/waze/MapView;
    .locals 1
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/waze/OGLRenderer;->mView:Lcom/waze/MapView;

    return-object v0
.end method

.method private createBitmapFromGLSurface(IIIILjavax/microedition/khronos/opengles/GL10;)V
    .locals 22
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "gl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/waze/OGLRenderer;->bTryToRender:Z

    .line 462
    mul-int v2, p3, p4

    new-array v11, v2, [I

    .line 463
    .local v11, bitmapBuffer:[I
    mul-int v2, p3, p4

    new-array v12, v2, [I

    .line 464
    .local v12, bitmapSource:[I
    invoke-static {v11}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v9

    .line 465
    .local v9, intBuffer:Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 468
    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move-object/from16 v2, p5

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    :try_start_0
    invoke-interface/range {v2 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, p4

    if-lt v15, v0, :cond_0

    .line 486
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v12, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 487
    .local v10, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/waze/OGLRenderer;->renderImage(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 489
    .end local v10           #b:Landroid/graphics/Bitmap;
    .end local v15           #i:I
    :goto_1
    return-void

    .line 471
    .restart local v15       #i:I
    :cond_0
    mul-int v17, v15, p3

    .line 472
    .local v17, offset1:I
    sub-int v2, p4, v15

    add-int/lit8 v2, v2, -0x1

    mul-int v18, v2, p3

    .line 473
    .local v18, offset2:I
    const/16 v16, 0x0

    .local v16, j:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, p3

    if-lt v0, v1, :cond_1

    .line 470
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 474
    :cond_1
    add-int v2, v17, v16

    :try_start_2
    aget v21, v11, v2

    .line 475
    .local v21, texturePixel:I
    shr-int/lit8 v2, v21, 0x10

    and-int/lit16 v13, v2, 0xff

    .line 476
    .local v13, blue:I
    shl-int/lit8 v2, v21, 0x10

    const/high16 v3, 0xff

    and-int v20, v2, v3

    .line 477
    .local v20, red:I
    const v2, -0xff0100

    and-int v2, v2, v21

    or-int v2, v2, v20

    or-int v19, v2, v13

    .line 478
    .local v19, pixel:I
    add-int v2, v18, v16

    aput v19, v12, v2
    :try_end_2
    .catch Landroid/opengl/GLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 473
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 481
    .end local v13           #blue:I
    .end local v15           #i:I
    .end local v16           #j:I
    .end local v17           #offset1:I
    .end local v18           #offset2:I
    .end local v19           #pixel:I
    .end local v20           #red:I
    .end local v21           #texturePixel:I
    :catch_0
    move-exception v14

    .line 482
    .local v14, e:Landroid/opengl/GLException;
    goto :goto_1

    .line 488
    .end local v14           #e:Landroid/opengl/GLException;
    .restart local v15       #i:I
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static createDebugEvent()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/waze/OGLRenderer$OGLEvent;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/waze/OGLRenderer$OGLEvent;-><init>(I)V

    return-object v0
.end method

.method public static createFlushEvent()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/waze/OGLRenderer$OGLEvent;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/waze/OGLRenderer$OGLEvent;-><init>(I)V

    return-object v0
.end method

.method public static createOGLEvent(I)Ljava/lang/Runnable;
    .locals 1
    .parameter "aEventId"

    .prologue
    .line 132
    new-instance v0, Lcom/waze/OGLRenderer$OGLEvent;

    invoke-direct {v0, p0}, Lcom/waze/OGLRenderer$OGLEvent;-><init>(I)V

    return-object v0
.end method

.method private static getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 232
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 233
    .local v0, context:Landroid/content/Context;
    const-string v1, "com.waze.OGLRenderer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method public static getRenderer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/waze/OGLRenderer;->mRenderer:Ljava/lang/String;

    return-object v0
.end method

.method public static gpuSupported()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-static {}, Lcom/waze/OGLRenderer;->isOglDataInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/waze/OGLRenderer;->mRenderer:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/waze/OGLRenderer;->mRenderer:Ljava/lang/String;

    sget-object v4, Lcom/waze/OGLRenderer;->SW_RENDERER_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 197
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 193
    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 197
    goto :goto_2
.end method

.method private init(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 147
    sget-boolean v1, Lcom/waze/OGLRenderer;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/waze/OGLRenderer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 152
    const/16 v1, 0x1f01

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waze/OGLRenderer;->mRenderer:Ljava/lang/String;

    .line 153
    sget-object v1, Lcom/waze/OGLRenderer;->mRenderer:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/waze/OGLRenderer;->setFBOsupported(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/waze/OGLRenderer;->savePrefs()V

    .line 158
    new-instance v0, Lcom/waze/OGLRenderer$2;

    invoke-direct {v0, p0}, Lcom/waze/OGLRenderer$2;-><init>(Lcom/waze/OGLRenderer;)V

    .line 164
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/waze/OGLRenderer;->mView:Lcom/waze/MapView;

    invoke-virtual {v1, v0}, Lcom/waze/MapView;->post(Ljava/lang/Runnable;)Z

    .line 166
    const/4 v1, 0x1

    sput-boolean v1, Lcom/waze/OGLRenderer;->mInitialized:Z

    goto :goto_0
.end method

.method public static isFBOsupported()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lcom/waze/OGLRenderer;->mFBOsupported:Z

    return v0
.end method

.method public static isOglDataInitialized()Z
    .locals 2

    .prologue
    .line 171
    sget-boolean v0, Lcom/waze/OGLRenderer;->mPrefsLoaded:Z

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Lcom/waze/OGLRenderer;->loadPrefs()V

    .line 174
    :cond_0
    sget-object v0, Lcom/waze/OGLRenderer;->mRenderer:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/waze/OGLRenderer;->mRenderer:Ljava/lang/String;

    const-string v1, "=== UNDEFINED ==="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static loadPrefs()V
    .locals 3

    .prologue
    .line 247
    invoke-static {}, Lcom/waze/OGLRenderer;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 248
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "FBO Supported"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/waze/OGLRenderer;->mFBOsupported:Z

    .line 249
    const-string v1, "Renderer"

    const-string v2, "=== UNDEFINED ==="

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waze/OGLRenderer;->mRenderer:Ljava/lang/String;

    .line 250
    const/4 v1, 0x1

    sput-boolean v1, Lcom/waze/OGLRenderer;->mPrefsLoaded:Z

    .line 251
    return-void
.end method

.method private declared-synchronized renderImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/waze/OGLRenderer;->toRender:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/waze/OGLRenderer;->toRender:Landroid/widget/ImageView;

    new-instance v1, Lcom/waze/OGLRenderer$3;

    invoke-direct {v1, p0, p1}, Lcom/waze/OGLRenderer$3;-><init>(Lcom/waze/OGLRenderer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_0
    monitor-exit p0

    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static savePrefs()V
    .locals 4

    .prologue
    .line 238
    invoke-static {}, Lcom/waze/OGLRenderer;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 239
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "FBO Supported"

    sget-boolean v3, Lcom/waze/OGLRenderer;->mFBOsupported:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string v2, "Renderer"

    sget-object v3, Lcom/waze/OGLRenderer;->mRenderer:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    return-void
.end method

.method private static setFBOsupported(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V
    .locals 5
    .parameter "gl"
    .parameter "renderer"

    .prologue
    .line 204
    const/4 v3, 0x0

    sput-boolean v3, Lcom/waze/OGLRenderer;->mFBOsupported:Z

    .line 206
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/waze/OGLRenderer;->FBO_PROBLEMATIC_GPU:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 215
    const/16 v3, 0x1f03

    invoke-interface {p0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, extensions:Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, exts:[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lt v2, v3, :cond_2

    .line 225
    .end local v0           #extensions:Ljava/lang/String;
    .end local v1           #exts:[Ljava/lang/String;
    :cond_0
    return-void

    .line 208
    :cond_1
    sget-object v3, Lcom/waze/OGLRenderer;->FBO_PROBLEMATIC_GPU:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .restart local v0       #extensions:Ljava/lang/String;
    .restart local v1       #exts:[Ljava/lang/String;
    :cond_2
    aget-object v3, v1, v2

    const-string v4, "GL_OES_framebuffer_object"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    const/4 v3, 0x1

    sput-boolean v3, Lcom/waze/OGLRenderer;->mFBOsupported:Z

    .line 218
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method _debug_clear(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    const v1, 0x3f333333

    .line 323
    const/4 v0, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 324
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 325
    return-void
.end method

.method _debug_draw_image(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 26
    .parameter "gl10"

    .prologue
    .line 351
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v15, v0

    .line 352
    .local v15, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v2, 0xde1

    invoke-interface {v15, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 353
    const v2, 0x8078

    invoke-interface {v15, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 354
    const v2, 0x8075

    invoke-interface {v15, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 358
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    .line 359
    .local v12, assetMgr:Landroid/content/res/AssetManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/ResManager;->GetSkinsPathCommon()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "location.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 360
    .local v19, inStream:Ljava/io/InputStream;
    invoke-static/range {v19 .. v19}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    .line 361
    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/OGLRenderer;->mTex:[I

    .line 362
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/OGLRenderer;->mTex:[I

    const/4 v4, 0x0

    invoke-interface {v15, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/OGLRenderer;->mImageData:[I

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/OGLRenderer;->mImageData:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 369
    .end local v12           #assetMgr:Landroid/content/res/AssetManager;
    .end local v19           #inStream:Ljava/io/InputStream;
    :cond_0
    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/OGLRenderer;->mTex:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v15, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 371
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-interface {v15, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 373
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-interface {v15, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    shl-int/lit8 v6, v2, 0x1

    .line 377
    .local v6, w_pot:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    shl-int/lit8 v7, v2, 0x1

    .line 378
    .local v7, h_pot:I
    mul-int v2, v6, v7

    new-array v13, v2, [I

    .line 379
    .local v13, data:[I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_1

    .line 386
    array-length v2, v13

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 387
    .local v18, imagebb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 388
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 389
    .local v11, imageib:Ljava/nio/IntBuffer;
    invoke-virtual {v11, v13}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 390
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 392
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    move-object v2, v15

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 394
    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    invoke-interface {v15, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 395
    const/16 v2, 0xc

    new-array v0, v2, [F

    move-object/from16 v16, v0

    const/4 v2, 0x0

    .line 396
    const/4 v3, 0x0

    aput v3, v16, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v16, v2

    const/4 v2, 0x2

    const/high16 v3, -0x3f40

    aput v3, v16, v2

    const/4 v2, 0x3

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    aput v3, v16, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v16, v2

    const/4 v2, 0x5

    const/high16 v3, -0x3f40

    aput v3, v16, v2

    const/4 v2, 0x6

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    aput v3, v16, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v16, v2

    const/16 v2, 0x8

    const/high16 v3, -0x3f40

    aput v3, v16, v2

    const/16 v2, 0x9

    .line 399
    const/4 v3, 0x0

    aput v3, v16, v2

    const/16 v2, 0xa

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v16, v2

    const/16 v2, 0xb

    const/high16 v3, -0x3f40

    aput v3, v16, v2

    .line 402
    .local v16, glpoints:[F
    const/16 v2, 0x8

    new-array v0, v2, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    .line 409
    .local v22, texCoords:[F
    move-object/from16 v0, v16

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    .line 410
    .local v24, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 411
    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v25

    .line 412
    .local v25, vfb:Ljava/nio/FloatBuffer;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 413
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 415
    move-object/from16 v0, v22

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 416
    .local v21, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 417
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v23

    .line 418
    .local v23, tfb:Ljava/nio/FloatBuffer;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 419
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 421
    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v15, v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 422
    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v15, v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 423
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-interface {v15, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 430
    .end local v6           #w_pot:I
    .end local v7           #h_pot:I
    .end local v11           #imageib:Ljava/nio/IntBuffer;
    .end local v13           #data:[I
    .end local v15           #gl:Ljavax/microedition/khronos/opengles/GL11;
    .end local v16           #glpoints:[F
    .end local v17           #i:I
    .end local v18           #imagebb:Ljava/nio/ByteBuffer;
    .end local v21           #tbb:Ljava/nio/ByteBuffer;
    .end local v22           #texCoords:[F
    .end local v23           #tfb:Ljava/nio/FloatBuffer;
    .end local v24           #vbb:Ljava/nio/ByteBuffer;
    .end local v25           #vfb:Ljava/nio/FloatBuffer;
    :goto_1
    return-void

    .line 381
    .restart local v6       #w_pot:I
    .restart local v7       #h_pot:I
    .restart local v13       #data:[I
    .restart local v15       #gl:Ljavax/microedition/khronos/opengles/GL11;
    .restart local v17       #i:I
    :cond_1
    const/16 v20, 0x0

    .local v20, j:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_2

    .line 379
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 383
    :cond_2
    mul-int v2, v17, v6

    add-int v2, v2, v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/OGLRenderer;->mImageData:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/OGLRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int v4, v4, v17

    add-int v4, v4, v20

    aget v3, v3, v4

    aput v3, v13, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 425
    .end local v6           #w_pot:I
    .end local v7           #h_pot:I
    .end local v13           #data:[I
    .end local v15           #gl:Ljavax/microedition/khronos/opengles/GL11;
    .end local v17           #i:I
    .end local v20           #j:I
    :catch_0
    move-exception v14

    .line 427
    .local v14, ex:Ljava/lang/Exception;
    const-string v2, "WAZE"

    const-string v3, "OGL Renderer error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 402
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method _debug_draw_line(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 328
    const/4 v3, 0x4

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    .line 330
    .local v1, vVertices:[F
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 331
    .local v2, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 332
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 333
    .local v0, floatBuffer:Ljava/nio/FloatBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 334
    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 336
    const v3, 0x8074

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 337
    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f00

    invoke-interface {p1, v6, v3, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 339
    const/16 v3, 0x1406

    invoke-interface {p1, v7, v3, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 341
    const/4 v3, 0x1

    invoke-interface {p1, v3, v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 343
    return-void

    .line 328
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x96t 0x43t
        0x0t 0x0t 0x2ft 0x44t
    .end array-data
.end method

.method _debug_prepare(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 289
    const/high16 v2, 0x43f0

    .line 290
    .local v2, sgOGLWidth:F
    const v3, 0x443f4000

    .line 292
    .local v3, sgOGLHeight:F
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 293
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 294
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 295
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 299
    const/high16 v5, -0x3d38

    const/high16 v6, 0x42c8

    move-object v0, p1

    move v4, v1

    .line 297
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 301
    float-to-int v0, v2

    float-to-int v1, v3

    invoke-interface {p1, v7, v7, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 303
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 305
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 307
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 309
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 311
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 313
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 315
    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 317
    const v0, 0x8075

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 319
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 320
    return-void
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/waze/OGLRenderer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 48
    invoke-static {}, Lcom/waze/NativeManager;->getNativeCanvas()Lcom/waze/NativeCanvas;

    move-result-object v6

    .line 55
    .local v6, nativeCanvas:Lcom/waze/NativeCanvas;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/waze/NativeCanvas;->isDestroying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/waze/NativeCanvas;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    :cond_0
    invoke-virtual {v6}, Lcom/waze/NativeCanvas;->isRenderPending()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget v0, p0, Lcom/waze/OGLRenderer;->mRenderCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/waze/OGLRenderer;->mRenderCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 64
    sget-object v0, Lcom/waze/WazeApplication;->startSW:Lcom/waze/utils/Stopwatch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Render # "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/waze/OGLRenderer;->mRenderCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 67
    :cond_1
    invoke-virtual {v6, v3}, Lcom/waze/NativeCanvas;->setRenderPending(Z)V

    .line 68
    invoke-virtual {v6}, Lcom/waze/NativeCanvas;->RenderNTV()V

    .line 89
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/waze/OGLRenderer;->shouldRenderImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/waze/OGLRenderer;->mView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/waze/OGLRenderer;->mView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/waze/OGLRenderer;->createBitmapFromGLSurface(IIIILjavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v6           #nativeCanvas:Lcom/waze/NativeCanvas;
    :cond_3
    :goto_1
    return-void

    .line 72
    .restart local v6       #nativeCanvas:Lcom/waze/NativeCanvas;
    :cond_4
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 102
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OGL RENDERER SURFACE CHANGED ( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v1, Lcom/waze/WazeApplication;->startSW:Lcom/waze/utils/Stopwatch;

    const-string v2, "OGLRenderer onSurfaceChanged"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 104
    const/16 v1, 0xbd0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 105
    const/16 v1, 0x4100

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 107
    new-instance v0, Lcom/waze/OGLRenderer$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/waze/OGLRenderer$1;-><init>(Lcom/waze/OGLRenderer;II)V

    .line 115
    .local v0, surfaceChangedCompleted:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 120
    const-string v0, "WAZE"

    const-string v1, "OGL RENDERER SURFACE CREATED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 124
    invoke-direct {p0, p1}, Lcom/waze/OGLRenderer;->init(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 126
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 127
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 128
    return-void
.end method

.method public declared-synchronized setImageToRender(Landroid/widget/ImageView;Lcom/waze/OGLRenderer$OnRenderListener;)V
    .locals 1
    .parameter "iv"
    .parameter "l"

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/waze/OGLRenderer;->toRender:Landroid/widget/ImageView;

    .line 497
    iput-object p2, p0, Lcom/waze/OGLRenderer;->mOnRenderListener:Lcom/waze/OGLRenderer$OnRenderListener;

    .line 498
    iget-object v0, p0, Lcom/waze/OGLRenderer;->toRender:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/waze/OGLRenderer;->bTryToRender:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    .line 498
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldRenderImage()Z
    .locals 1

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/waze/OGLRenderer;->bTryToRender:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
