.class public final Lcom/waze/EglManager;
.super Ljava/lang/Object;
.source "EglManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/EglManager$EglErrorListener;
    }
.end annotation


# static fields
.field private static final EGL_CONTEXT_RECOVER_RETRY_NUM:I = 0x5

.field private static final EGL_DEBUG:Z


# instance fields
.field private mContextRecoverRetry:I

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field public mGLTestStop:Z

.field mIsFirstSwap:Z

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 2
    .parameter "aSurfaceView"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/waze/EglManager;->mIsFirstSwap:Z

    .line 480
    iput v1, p0, Lcom/waze/EglManager;->mContextRecoverRetry:I

    .line 482
    iput-object v0, p0, Lcom/waze/EglManager;->mSurfaceView:Landroid/view/SurfaceView;

    .line 483
    iput-object v0, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 484
    iput-object v0, p0, Lcom/waze/EglManager;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 485
    iput-object v0, p0, Lcom/waze/EglManager;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 486
    iput-object v0, p0, Lcom/waze/EglManager;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 487
    iput-object v0, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 490
    iput-boolean v1, p0, Lcom/waze/EglManager;->mGLTestStop:Z

    .line 40
    iput-object p1, p0, Lcom/waze/EglManager;->mSurfaceView:Landroid/view/SurfaceView;

    .line 41
    return-void
.end method

.method private EglCheck(Ljava/lang/String;)I
    .locals 4
    .parameter "aErrStr"

    .prologue
    .line 404
    iget-object v2, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 405
    .local v1, error:I
    const/16 v2, 0x3000

    if-eq v1, v2, :cond_0

    .line 407
    new-instance v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EGL error in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, errStr:Ljava/lang/String;
    const-string v2, "WAZE"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {v0}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    .line 411
    .end local v0           #errStr:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private getAttrValue([II)I
    .locals 3
    .parameter "aAttrSet"
    .parameter "aAttr"

    .prologue
    .line 387
    const/4 v1, -0x1

    .line 388
    .local v1, res:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 396
    :goto_1
    return v1

    .line 390
    :cond_0
    aget v2, p1, v0

    if-ne v2, p2, :cond_1

    .line 392
    add-int/lit8 v2, v0, 0x1

    aget v1, p1, v2

    .line 393
    goto :goto_1

    .line 388
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getCfgValue(Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 3
    .parameter "aConfig"
    .parameter "aAttr"
    .parameter "aDefault"

    .prologue
    .line 372
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 373
    .local v0, value:[I
    iget-object v1, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, p1, p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const/4 v1, 0x0

    aget p3, v0, v1

    .line 377
    .end local p3
    :cond_0
    return p3
.end method


# virtual methods
.method public ChooseEglConfig([I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 23
    .parameter "aCfgAttribs"

    .prologue
    .line 171
    const/16 v21, 0x0

    .line 172
    .local v21, resCfg:Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 173
    .local v7, num_config:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    .line 174
    if-nez v2, :cond_0

    .line 176
    const-string v2, "InitEgl eglChooseConfig"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    .line 177
    const-string v2, "eglChooseConfigfailed - failed getting configuration number"

    invoke-static {v2}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 178
    const/4 v2, 0x0

    .line 238
    :goto_0
    return-object v2

    .line 181
    :cond_0
    const/4 v2, 0x0

    aget v6, v7, v2

    .line 183
    .local v6, numConfigs:I
    if-gtz v6, :cond_1

    .line 185
    const-string v2, "eglChooseConfigfailed - failed getting configuration number"

    invoke-static {v2}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 186
    const/4 v2, 0x0

    goto :goto_0

    .line 189
    :cond_1
    new-array v5, v6, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 190
    .local v5, resConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    .line 191
    if-nez v2, :cond_2

    .line 193
    const-string v2, "InitEgl eglChooseConfig II"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    .line 194
    const-string v2, "eglChooseConfigfailed - failed getting configuration number"

    invoke-static {v2}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x0

    goto :goto_0

    .line 201
    :cond_2
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    array-length v2, v5

    move/from16 v0, v19

    if-lt v0, v2, :cond_4

    .line 226
    :goto_2
    if-nez v21, :cond_3

    .line 228
    const/4 v2, 0x1

    new-array v10, v2, [I

    const/4 v2, 0x0

    .line 229
    const/16 v3, 0x3038

    aput v3, v10, v2

    .line 231
    .local v10, configAttrs:[I
    const/4 v2, 0x1

    new-array v11, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 232
    .local v11, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v6, 0x1

    .line 233
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move v12, v6

    move-object v13, v7

    invoke-interface/range {v8 .. v13}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 234
    const-string v2, "InitEgl eglChooseConfig III"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    .line 235
    const/4 v2, 0x0

    aget-object v21, v11, v2

    .end local v10           #configAttrs:[I
    .end local v11           #configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_3
    move-object/from16 v2, v21

    .line 238
    goto :goto_0

    .line 203
    :cond_4
    aget-object v16, v5, v19

    .line 204
    .local v16, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v2, 0x3025

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/EglManager;->getCfgValue(Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v17

    .line 205
    .local v17, d:I
    const/16 v2, 0x3026

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/EglManager;->getCfgValue(Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v22

    .line 206
    .local v22, s:I
    const/16 v2, 0x3025

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/waze/EglManager;->getAttrValue([II)I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_5

    .line 207
    const/16 v2, 0x3026

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/waze/EglManager;->getAttrValue([II)I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_5

    .line 209
    const/16 v2, 0x3024

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/EglManager;->getCfgValue(Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v20

    .line 210
    .local v20, r:I
    const/16 v2, 0x3023

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/EglManager;->getCfgValue(Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v18

    .line 211
    .local v18, g:I
    const/16 v2, 0x3022

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/EglManager;->getCfgValue(Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    .line 212
    .local v15, b:I
    const/16 v2, 0x3021

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/EglManager;->getCfgValue(Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 213
    .local v14, a:I
    const/16 v2, 0x3024

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/waze/EglManager;->getAttrValue([II)I

    move-result v2

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 214
    const/16 v2, 0x3023

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/waze/EglManager;->getAttrValue([II)I

    move-result v2

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    .line 215
    const/16 v2, 0x3022

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/waze/EglManager;->getAttrValue([II)I

    move-result v2

    if-ne v15, v2, :cond_5

    .line 216
    const/16 v2, 0x3021

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/waze/EglManager;->getAttrValue([II)I

    move-result v2

    if-ne v14, v2, :cond_5

    .line 218
    move-object/from16 v21, v16

    .line 219
    goto/16 :goto_2

    .line 201
    .end local v14           #a:I
    .end local v15           #b:I
    .end local v18           #g:I
    .end local v20           #r:I
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1
.end method

.method public CreateEglSurface()Z
    .locals 7

    .prologue
    const/16 v6, 0x3000

    const/4 v0, 0x0

    .line 277
    iget-object v1, p0, Lcom/waze/EglManager;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/waze/EglManager;->DestroyEglSurface()V

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/waze/EglManager;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v4, p0, Lcom/waze/EglManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/EglManager;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 282
    const-string v1, "CreateEglSurface eglCreateWindowSurface"

    invoke-direct {p0, v1}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 294
    :cond_1
    :goto_0
    return v0

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/waze/EglManager;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/waze/EglManager;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/waze/EglManager;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 288
    const-string v1, "CreateEglSurface eglMakeCurrent"

    invoke-direct {p0, v1}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 294
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public DestroyEgl()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v0, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/waze/EglManager;->DestroyEglSurface()V

    .line 151
    iget-object v0, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/waze/EglManager;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 152
    const-string v0, "DestroyEgl eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 156
    const-string v0, "DestroyEgl eglTerminate"

    invoke-direct {p0, v0}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    .line 158
    iput-object v3, p0, Lcom/waze/EglManager;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 159
    iput-object v3, p0, Lcom/waze/EglManager;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 160
    iput-object v3, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    goto :goto_0
.end method

.method public DestroyEglSurface()V
    .locals 5

    .prologue
    .line 251
    iget-object v0, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/EglManager;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/EglManager;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_1

    .line 253
    :cond_0
    const-string v0, "WAZE"

    const-string v1, "Surface parameters are not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v0, "Surface parameters are not initialized"

    invoke-static {v0}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 259
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 258
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 260
    const-string v0, "DestroyEglSurface eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/waze/EglManager;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 263
    const-string v0, "DestroyEglSurface eglDestroySurface"

    invoke-direct {p0, v0}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/EglManager;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0
.end method

.method public DrawGLTest()V
    .locals 14

    .prologue
    const/high16 v6, 0x3f80

    const/4 v3, 0x0

    const/high16 v13, 0x4040

    const/4 v1, 0x0

    .line 420
    iput-boolean v3, p0, Lcom/waze/EglManager;->mGLTestStop:Z

    .line 421
    iget-object v2, p0, Lcom/waze/EglManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v12

    .line 422
    .local v12, width:I
    iget-object v2, p0, Lcom/waze/EglManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result v9

    .line 424
    .local v9, height:I
    iget-object v2, p0, Lcom/waze/EglManager;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 426
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 427
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 429
    invoke-interface {v0, v3, v3, v12, v9}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 431
    int-to-float v2, v12

    int-to-float v4, v9

    move v3, v1

    move v5, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 433
    const/16 v1, 0x1d00

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 434
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 436
    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 439
    const/4 v10, 0x3

    .line 441
    .local v10, i:I
    :goto_0
    iget-boolean v1, p0, Lcom/waze/EglManager;->mGLTestStop:Z

    if-nez v1, :cond_0

    const/16 v1, 0x32

    if-lt v10, v1, :cond_1

    .line 456
    :cond_0
    return-void

    .line 443
    :cond_1
    int-to-float v1, v10

    rem-float v11, v1, v13

    .line 444
    .local v11, r:F
    add-int/lit8 v1, v10, 0x1

    int-to-float v1, v1

    rem-float v8, v1, v13

    .line 445
    .local v8, g:F
    add-int/lit8 v1, v10, 0x2

    int-to-float v1, v1

    rem-float v7, v1, v13

    .line 448
    .local v7, b:F
    invoke-interface {v0, v11, v8, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 449
    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 450
    iget-object v1, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/waze/EglManager;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 452
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglSwapBuffers failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_2
    const-wide/16 v1, 0x12c

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 441
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public InitEgl()Z
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x5

    .line 53
    const/4 v2, 0x1

    .line 57
    .local v2, res:Z
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v4

    check-cast v4, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v4, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 62
    iget-object v4, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 63
    const-string v4, "InitEgl eglGetDisplay"

    invoke-direct {p0, v4}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    .line 68
    new-array v3, v8, [I

    .line 69
    .local v3, version:[I
    iget-object v4, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v4, v5, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 70
    const-string v4, "InitEgl eglInitialize"

    invoke-direct {p0, v4}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    .line 72
    const/16 v4, 0xd

    new-array v0, v4, [I

    const/4 v4, 0x0

    .line 73
    const/16 v5, 0x3024

    aput v5, v0, v4

    aput v6, v0, v7

    .line 74
    const/16 v4, 0x3023

    aput v4, v0, v8

    const/4 v4, 0x3

    aput v9, v0, v4

    const/4 v4, 0x4

    .line 75
    const/16 v5, 0x3022

    aput v5, v0, v4

    aput v6, v0, v6

    .line 76
    const/16 v4, 0x3021

    aput v4, v0, v9

    const/16 v4, 0x8

    .line 77
    const/16 v5, 0x3025

    aput v5, v0, v4

    const/16 v4, 0xa

    .line 78
    const/16 v5, 0x3026

    aput v5, v0, v4

    const/16 v4, 0xc

    .line 79
    const/16 v5, 0x3038

    aput v5, v0, v4

    .line 81
    .local v0, configAttrs:[I
    new-array v1, v7, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 82
    .local v1, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-virtual {p0, v0}, Lcom/waze/EglManager;->ChooseEglConfig([I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/EglManager;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 114
    iget-object v4, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/waze/EglManager;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/EglManager;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 115
    const-string v4, "InitEgl eglCreateContext"

    invoke-direct {p0, v4}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/waze/EglManager;->CreateEglSurface()Z

    move-result v2

    .line 132
    return v2
.end method

.method public SwapBuffersEgl()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 303
    const/4 v7, 0x1

    .line 305
    .local v7, eglRes:Z
    iget-object v1, p0, Lcom/waze/EglManager;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/waze/EglManager;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/waze/EglManager;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v7

    .line 307
    if-nez v7, :cond_1

    .line 309
    const-string v1, "EGL Swap buffers"

    invoke-direct {p0, v1}, Lcom/waze/EglManager;->EglCheck(Ljava/lang/String;)I

    move-result v8

    .line 310
    .local v8, error:I
    sparse-switch v8, :sswitch_data_0

    .line 331
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 332
    .local v0, msgBox:Lcom/waze/MsgBox;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/MsgBox;->setBlocking(Z)V

    .line 333
    const-string v1, "Error"

    const-string v2, "Critical problem occured! Please restart waze"

    const-string v3, "Ok"

    .line 334
    new-instance v5, Lcom/waze/EglManager$EglErrorListener;

    invoke-direct {v5, p0, v4}, Lcom/waze/EglManager$EglErrorListener;-><init>(Lcom/waze/EglManager;Lcom/waze/EglManager$EglErrorListener;)V

    move-object v6, v4

    .line 333
    invoke-virtual/range {v0 .. v6}, Lcom/waze/MsgBox;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 349
    .end local v0           #msgBox:Lcom/waze/MsgBox;
    .end local v8           #error:I
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 314
    .restart local v8       #error:I
    :sswitch_1
    iget v1, p0, Lcom/waze/EglManager;->mContextRecoverRetry:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/waze/EglManager;->mContextRecoverRetry:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/waze/EglManager;->DestroyEglSurface()V

    .line 320
    invoke-virtual {p0}, Lcom/waze/EglManager;->CreateEglSurface()Z

    goto :goto_0

    .line 342
    .end local v8           #error:I
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/waze/EglManager;->mContextRecoverRetry:I

    goto :goto_0

    .line 310
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL10;
    .locals 2

    .prologue
    .line 463
    iget-object v1, p0, Lcom/waze/EglManager;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 464
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL10;
    :goto_0
    return-object v0

    .line 463
    .end local v0           #gl:Ljavax/microedition/khronos/opengles/GL10;
    :cond_0
    iget-object v1, p0, Lcom/waze/EglManager;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    move-object v0, v1

    goto :goto_0
.end method
