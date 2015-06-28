.class public final Lcom/waze/MapView;
.super Landroid/opengl/GLSurfaceView;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/MapView$AppViewInputConnection;
    }
.end annotation


# static fields
.field public static GPU_NOT_SUPPORTED:I = 0x0

.field public static GPU_SUPPORTED:I = 0x0

.field public static GPU_UNDEFINED:I = 0x0

.field private static final MODIFIER_STATE_CLICK:I = 0x1

.field private static final MODIFIER_STATE_DOUBLE_CLICK:I = 0x2

.field private static final MODIFIER_STATE_NONE:I = 0x0

.field private static final MOTION_RESOLUTION_VAL:F = 0.5f

.field private static final mUnhandledKeys:[I

.field private static final mUnhandledKeysMetaMask:[I


# instance fields
.field private handleKeys:Z

.field private handleTouch:Z

.field private mImeAction:I

.field private mImeCloseOnAction:Z

.field private volatile mIsRunning:Z

.field private volatile mIsSurfaceReady:Z

.field private mLastEvent:Landroid/view/KeyEvent;

.field private mLastHandledEvent:Landroid/view/MotionEvent;

.field private mModifierKeyCode:I

.field private mModifierState:I

.field private mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

.field private mRenderer:Lcom/waze/OGLRenderer;

.field public mSplashBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x2

    .line 491
    const/4 v0, -0x1

    sput v0, Lcom/waze/MapView;->GPU_UNDEFINED:I

    .line 492
    const/4 v0, 0x0

    sput v0, Lcom/waze/MapView;->GPU_NOT_SUPPORTED:I

    .line 493
    const/4 v0, 0x1

    sput v0, Lcom/waze/MapView;->GPU_SUPPORTED:I

    .line 497
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/waze/MapView;->mUnhandledKeys:[I

    .line 514
    new-array v0, v2, [I

    aput v1, v0, v1

    sput-object v0, Lcom/waze/MapView;->mUnhandledKeysMetaMask:[I

    return-void

    .line 497
    :array_0
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 469
    iput-object v1, p0, Lcom/waze/MapView;->mRenderer:Lcom/waze/OGLRenderer;

    .line 472
    iput v0, p0, Lcom/waze/MapView;->mImeAction:I

    .line 473
    iput-boolean v0, p0, Lcom/waze/MapView;->mImeCloseOnAction:Z

    .line 475
    iput-object v1, p0, Lcom/waze/MapView;->mSplashBitmap:Landroid/graphics/Bitmap;

    .line 477
    iput-boolean v0, p0, Lcom/waze/MapView;->mIsRunning:Z

    .line 478
    iput-boolean v0, p0, Lcom/waze/MapView;->mIsSurfaceReady:Z

    .line 480
    iput-object v1, p0, Lcom/waze/MapView;->mLastEvent:Landroid/view/KeyEvent;

    .line 486
    iput v0, p0, Lcom/waze/MapView;->mModifierState:I

    .line 487
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/MapView;->mModifierKeyCode:I

    .line 489
    iput-object v1, p0, Lcom/waze/MapView;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 57
    invoke-direct {p0}, Lcom/waze/MapView;->Init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "aContext"
    .parameter "aParams"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 469
    iput-object v3, p0, Lcom/waze/MapView;->mRenderer:Lcom/waze/OGLRenderer;

    .line 472
    iput v2, p0, Lcom/waze/MapView;->mImeAction:I

    .line 473
    iput-boolean v2, p0, Lcom/waze/MapView;->mImeCloseOnAction:Z

    .line 475
    iput-object v3, p0, Lcom/waze/MapView;->mSplashBitmap:Landroid/graphics/Bitmap;

    .line 477
    iput-boolean v2, p0, Lcom/waze/MapView;->mIsRunning:Z

    .line 478
    iput-boolean v2, p0, Lcom/waze/MapView;->mIsSurfaceReady:Z

    .line 480
    iput-object v3, p0, Lcom/waze/MapView;->mLastEvent:Landroid/view/KeyEvent;

    .line 486
    iput v2, p0, Lcom/waze/MapView;->mModifierState:I

    .line 487
    const/4 v1, -0x1

    iput v1, p0, Lcom/waze/MapView;->mModifierKeyCode:I

    .line 489
    iput-object v3, p0, Lcom/waze/MapView;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 63
    sget-object v1, Lcom/waze/R$styleable;->MainView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, attrArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/MapView;->handleKeys:Z

    .line 65
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/MapView;->handleTouch:Z

    .line 66
    invoke-virtual {p0}, Lcom/waze/MapView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/waze/MapView;->Init()V

    .line 69
    :cond_0
    return-void
.end method

.method private Init()V
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/waze/MapView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/waze/OGLRenderer;

    invoke-direct {v0, p0}, Lcom/waze/OGLRenderer;-><init>(Lcom/waze/MapView;)V

    iput-object v0, p0, Lcom/waze/MapView;->mRenderer:Lcom/waze/OGLRenderer;

    .line 231
    iget-object v0, p0, Lcom/waze/MapView;->mRenderer:Lcom/waze/OGLRenderer;

    invoke-virtual {p0, v0}, Lcom/waze/MapView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/MapView;->setRenderMode(I)V

    .line 234
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/MapView;->setFocusableInTouchMode(Z)V

    .line 235
    sget-object v0, Lcom/waze/MapView;->mUnhandledKeys:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 236
    return-void
.end method

.method static synthetic access$0(Lcom/waze/MapView;)I
    .locals 1
    .parameter

    .prologue
    .line 472
    iget v0, p0, Lcom/waze/MapView;->mImeAction:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/MapView;)Z
    .locals 1
    .parameter

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/waze/MapView;->mImeCloseOnAction:Z

    return v0
.end method

.method public static getRenderer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/waze/OGLRenderer;->getRenderer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gpuSupported()I
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/waze/OGLRenderer;->isOglDataInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    sget v0, Lcom/waze/MapView;->GPU_UNDEFINED:I

    .line 202
    :goto_0
    return v0

    .line 199
    :cond_0
    invoke-static {}, Lcom/waze/OGLRenderer;->gpuSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    sget v0, Lcom/waze/MapView;->GPU_SUPPORTED:I

    goto :goto_0

    .line 202
    :cond_1
    sget v0, Lcom/waze/MapView;->GPU_NOT_SUPPORTED:I

    goto :goto_0
.end method

.method public static isFBOsupported()Z
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/waze/OGLRenderer;->isFBOsupported()Z

    move-result v0

    return v0
.end method

.method public static isOglDataInitialized()Z
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/waze/OGLRenderer;->isOglDataInitialized()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public HideSoftInput()V
    .locals 3

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/waze/MapView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/waze/MapView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 305
    return-void
.end method

.method public IsReady()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/waze/MapView;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/waze/MapView;->mIsSurfaceReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowSoftInput()V
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/waze/MapView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 299
    invoke-virtual {p0}, Lcom/waze/MapView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 300
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aEvent"

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/waze/MapView;->handleKeys:Z

    if-nez v0, :cond_0

    .line 283
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 286
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/waze/MapView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/waze/MapView;->mRenderer:Lcom/waze/OGLRenderer;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/MapView;->mRenderer:Lcom/waze/OGLRenderer;

    invoke-virtual {v0}, Lcom/waze/OGLRenderer;->getGL()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/waze/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 320
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .parameter "aAttrs"

    .prologue
    .line 291
    iget v0, p0, Lcom/waze/MapView;->mImeAction:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 292
    const v0, 0x10001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 293
    new-instance v0, Lcom/waze/MapView$AppViewInputConnection;

    invoke-direct {v0, p0, p0}, Lcom/waze/MapView$AppViewInputConnection;-><init>(Lcom/waze/MapView;Landroid/view/View;)V

    return-object v0
.end method

.method public onGLReady()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->onGLReady()V

    .line 148
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "aKeyCode"
    .parameter "aEvent"

    .prologue
    .line 330
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    .line 331
    .local v8, metaState:I
    invoke-virtual {p0}, Lcom/waze/MapView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 332
    .local v10, ctx:Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 334
    .local v9, cfg:Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/waze/MapView;->mLastEvent:Landroid/view/KeyEvent;

    if-ne v1, p2, :cond_0

    .line 335
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 436
    :goto_0
    return v1

    .line 337
    :cond_0
    iput-object p2, p0, Lcom/waze/MapView;->mLastEvent:Landroid/view/KeyEvent;

    .line 341
    sget-object v1, Lcom/waze/MapView;->mUnhandledKeys:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .local v11, idx:I
    if-ltz v11, :cond_2

    .line 343
    sget-object v1, Lcom/waze/MapView;->mUnhandledKeysMetaMask:[I

    aget v1, v1, v11

    if-eqz v1, :cond_1

    .line 344
    sget-object v1, Lcom/waze/MapView;->mUnhandledKeysMetaMask:[I

    aget v1, v1, v11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    and-int/2addr v1, v2

    if-lez v1, :cond_2

    .line 346
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 350
    :cond_2
    const/16 v1, 0x52

    if-ne p1, v1, :cond_4

    .line 352
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v12

    .line 353
    .local v12, lNativeManager:Lcom/waze/NativeManager;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/waze/NativeManager;->IsMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 357
    .end local v12           #lNativeManager:Lcom/waze/NativeManager;
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 359
    const/4 v1, 0x1

    goto :goto_0

    .line 362
    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    .line 364
    const/4 v1, 0x1

    goto :goto_0

    .line 368
    :cond_6
    iget v1, v9, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 370
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 372
    iget v1, p0, Lcom/waze/MapView;->mModifierKeyCode:I

    if-ne v1, p1, :cond_7

    .line 374
    iget v1, p0, Lcom/waze/MapView;->mModifierState:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/waze/MapView;->mModifierState:I

    .line 381
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 378
    :cond_7
    iput p1, p0, Lcom/waze/MapView;->mModifierKeyCode:I

    .line 379
    const/4 v1, 0x1

    iput v1, p0, Lcom/waze/MapView;->mModifierState:I

    goto :goto_1

    .line 386
    :cond_8
    iget v1, p0, Lcom/waze/MapView;->mModifierState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 388
    iget v1, p0, Lcom/waze/MapView;->mModifierKeyCode:I

    const/16 v2, 0x39

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/waze/MapView;->mModifierKeyCode:I

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_a

    .line 390
    :cond_9
    const/4 v8, 0x2

    .line 392
    :cond_a
    iget v1, p0, Lcom/waze/MapView;->mModifierKeyCode:I

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/waze/MapView;->mModifierKeyCode:I

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_c

    .line 394
    :cond_b
    const/4 v8, 0x1

    .line 411
    :cond_c
    :goto_2
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v12

    .line 413
    .restart local v12       #lNativeManager:Lcom/waze/NativeManager;
    iget-boolean v1, p0, Lcom/waze/MapView;->handleKeys:Z

    if-nez v1, :cond_f

    const/16 v1, 0x54

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-ne p1, v1, :cond_f

    .line 414
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 400
    .end local v12           #lNativeManager:Lcom/waze/NativeManager;
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_c

    .line 402
    const/4 v1, -0x1

    iput v1, p0, Lcom/waze/MapView;->mModifierKeyCode:I

    .line 403
    const/4 v1, 0x0

    iput v1, p0, Lcom/waze/MapView;->mModifierState:I

    goto :goto_2

    .line 416
    .restart local v12       #lNativeManager:Lcom/waze/NativeManager;
    :cond_f
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_10

    .line 418
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 421
    :cond_10
    if-eqz v12, :cond_13

    .line 423
    move-object v0, p2

    .line 424
    .local v0, event:Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_11

    .line 426
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #event:Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 427
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 426
    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 429
    .restart local v0       #event:Landroid/view/KeyEvent;
    :cond_11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 431
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #event:Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 433
    .restart local v0       #event:Landroid/view/KeyEvent;
    :cond_12
    invoke-virtual {v12, v0}, Lcom/waze/NativeManager;->setKeyEvent(Landroid/view/KeyEvent;)V

    .line 434
    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_KEY_DOWN:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v12, v1}, Lcom/waze/NativeManager;->PostUIMessage(Lcom/waze/NativeManager$UIEvent;)V

    .line 436
    .end local v0           #event:Landroid/view/KeyEvent;
    :cond_13
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aKeyCode"
    .parameter "aRepeatCount"
    .parameter "aEvent"

    .prologue
    .line 441
    invoke-virtual {p0, p1, p3}, Lcom/waze/MapView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNativeCanvasReady()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/waze/MapView;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/waze/MapView;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v0}, Lcom/waze/ifs/async/RunnableExecutor;->run()V

    .line 143
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 153
    const-string v1, "WAZE"

    const-string v2, "MapView onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/waze/NativeManager;->getNativeCanvas()Lcom/waze/NativeCanvas;

    move-result-object v0

    .line 155
    .local v0, nativeCanvas:Lcom/waze/NativeCanvas;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p0}, Lcom/waze/NativeCanvas;->DestroyCanvas(Lcom/waze/MapView;)V

    .line 157
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/MapView;->mIsRunning:Z

    .line 158
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 163
    sget-object v1, Lcom/waze/WazeApplication;->startSW:Lcom/waze/utils/Stopwatch;

    const-string v2, "MapView onResume"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 164
    const-string v1, "WAZE"

    const-string v2, "MapView onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/MapView;->mIsRunning:Z

    .line 168
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/waze/MapView;->mIsSurfaceReady:Z

    if-eqz v1, :cond_0

    .line 170
    invoke-static {}, Lcom/waze/NativeManager;->getNativeCanvas()Lcom/waze/NativeCanvas;

    move-result-object v0

    .line 171
    .local v0, nativeCanvas:Lcom/waze/NativeCanvas;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/waze/MapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/waze/MapView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/NativeCanvas;->CreateCanvas(Lcom/waze/MapView;II)V

    .line 175
    .end local v0           #nativeCanvas:Lcom/waze/NativeCanvas;
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->onSurfaceReady()Z

    .line 176
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "aEvent"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/high16 v4, 0x3f00

    .line 257
    iget-boolean v2, p0, Lcom/waze/MapView;->handleTouch:Z

    if-eqz v2, :cond_2

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 260
    iget-object v2, p0, Lcom/waze/MapView;->mLastHandledEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 261
    iget-object v2, p0, Lcom/waze/MapView;->mLastHandledEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/waze/MapView;->mLastHandledEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v1

    .line 266
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 267
    .local v0, lNativeManager:Lcom/waze/NativeManager;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/MapView;->mLastHandledEvent:Landroid/view/MotionEvent;

    .line 268
    if-eqz v0, :cond_0

    .line 272
    iget-object v2, p0, Lcom/waze/MapView;->mLastHandledEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->setTouchEvent(Landroid/view/MotionEvent;)V

    .line 273
    sget-object v2, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_TOUCH:Lcom/waze/NativeManager$UIEvent;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->PostUIMessage(Lcom/waze/NativeManager$UIEvent;)V

    goto :goto_0

    .line 277
    .end local v0           #lNativeManager:Lcom/waze/NativeManager;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public orientationChanged()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public setHandleKeys(Z)V
    .locals 0
    .parameter "handleKeys"

    .prologue
    .line 521
    iput-boolean p1, p0, Lcom/waze/MapView;->handleKeys:Z

    .line 522
    return-void
.end method

.method public setHandleTouch(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 516
    iput-boolean p1, p0, Lcom/waze/MapView;->handleTouch:Z

    .line 517
    invoke-virtual {p0, p1}, Lcom/waze/MapView;->setFocusableInTouchMode(Z)V

    .line 518
    return-void
.end method

.method public setImageViewToRender(Landroid/widget/ImageView;Lcom/waze/OGLRenderer$OnRenderListener;)V
    .locals 1
    .parameter "iv"
    .parameter "l"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/waze/MapView;->mRenderer:Lcom/waze/OGLRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/waze/OGLRenderer;->setImageToRender(Landroid/widget/ImageView;Lcom/waze/OGLRenderer$OnRenderListener;)V

    .line 534
    return-void
.end method

.method public setImeAction(I)V
    .locals 0
    .parameter "aAction"

    .prologue
    .line 309
    iput p1, p0, Lcom/waze/MapView;->mImeAction:I

    .line 310
    return-void
.end method

.method public setImeCloseOnAction(Z)V
    .locals 0
    .parameter "aCloseOnAction"

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/waze/MapView;->mImeCloseOnAction:Z

    .line 314
    return-void
.end method

.method public setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/waze/MapView;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 137
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 101
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MapView Surface changed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-static {}, Lcom/waze/NativeManager;->getNativeCanvas()Lcom/waze/NativeCanvas;

    move-result-object v0

    .line 105
    .local v0, nativeCanvas:Lcom/waze/NativeCanvas;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p0}, Lcom/waze/NativeCanvas;->DestroyCanvas(Lcom/waze/MapView;)V

    .line 109
    .end local v0           #nativeCanvas:Lcom/waze/NativeCanvas;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 110
    sget-object v1, Lcom/waze/WazeApplication;->startSW:Lcom/waze/utils/Stopwatch;

    const-string v2, "MapView surfaceChanged"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 111
    return-void
.end method

.method public surfaceChangedCompleted(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 116
    invoke-static {}, Lcom/waze/NativeManager;->getNativeCanvas()Lcom/waze/NativeCanvas;

    move-result-object v0

    .line 118
    .local v0, nativeCanvas:Lcom/waze/NativeCanvas;
    sget-object v1, Lcom/waze/WazeApplication;->startSW:Lcom/waze/utils/Stopwatch;

    const-string v2, "MapView surfaceChangedCompleted"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 120
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/MapView;->mIsSurfaceReady:Z

    .line 123
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/NativeCanvas;->CreateCanvas(Lcom/waze/MapView;II)V

    .line 130
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->onSurfaceReady()Z

    .line 131
    const-string v1, "WAZE"

    const-string v2, "MapView Surface changed completed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 77
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 85
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {}, Lcom/waze/NativeManager;->getNativeCanvas()Lcom/waze/NativeCanvas;

    move-result-object v0

    .line 88
    .local v0, nativeCanvas:Lcom/waze/NativeCanvas;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p0}, Lcom/waze/NativeCanvas;->DestroyCanvas(Lcom/waze/MapView;)V

    .line 92
    .end local v0           #nativeCanvas:Lcom/waze/NativeCanvas;
    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/MapView;->mIsSurfaceReady:Z

    .line 94
    return-void
.end method
