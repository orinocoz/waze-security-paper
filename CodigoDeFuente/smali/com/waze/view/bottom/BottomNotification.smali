.class public Lcom/waze/view/bottom/BottomNotification;
.super Landroid/widget/RelativeLayout;
.source "BottomNotification.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$waze$view$bottom$BottomNotificationOnClickIntent:[I

.field private static inst:Lcom/waze/view/bottom/BottomNotification;


# instance fields
.field private NAmessageShown:Z

.field private animating:Z

.field private bottomBar:Lcom/waze/view/navbar/BottomBar;

.field private context:Landroid/content/Context;

.field private hidable:Z

.field private initialized:Z

.field private longView:Landroid/view/View;

.field private mListener:Landroid/view/View$OnClickListener;

.field private nearbyView:Landroid/view/View;

.field private points:Landroid/widget/TextView;

.field private pointsString:Ljava/lang/String;

.field private pointsTitle:Landroid/widget/TextView;

.field private refCount:I

.field private rightSide:Landroid/view/View;

.field private seperator:Landroid/view/View;

.field private shortMessage:Landroid/widget/TextView;

.field private text:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$waze$view$bottom$BottomNotificationOnClickIntent()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/waze/view/bottom/BottomNotification;->$SWITCH_TABLE$com$waze$view$bottom$BottomNotificationOnClickIntent:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->values()[Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->MY_FRIENDS_ACTIVITY:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    invoke-virtual {v1}, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->MY_WAZE_ACTIVITY:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    invoke-virtual {v1}, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->NONE:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    invoke-virtual {v1}, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->RT_ALERTS_MENU:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    invoke-virtual {v1}, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/waze/view/bottom/BottomNotification;->$SWITCH_TABLE$com$waze$view$bottom$BottomNotificationOnClickIntent:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v3, p0, Lcom/waze/view/bottom/BottomNotification;->NAmessageShown:Z

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->mListener:Landroid/view/View$OnClickListener;

    .line 50
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030027

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    iput-object p1, p0, Lcom/waze/view/bottom/BottomNotification;->context:Landroid/content/Context;

    .line 55
    const v1, 0x7f0901d2

    invoke-virtual {p0, v1}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->title:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0901d3

    invoke-virtual {p0, v1}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->seperator:Landroid/view/View;

    .line 57
    const v1, 0x7f0901d4

    invoke-virtual {p0, v1}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->text:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f0901d5

    invoke-virtual {p0, v1}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->rightSide:Landroid/view/View;

    .line 59
    const v1, 0x7f0901d6

    invoke-virtual {p0, v1}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->points:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f0901d7

    invoke-virtual {p0, v1}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->pointsTitle:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0901cd

    invoke-virtual {p0, v1}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->shortMessage:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0901d1

    invoke-virtual {p0, v1}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->longView:Landroid/view/View;

    .line 63
    const v1, 0x7f0901ce

    invoke-virtual {p0, v1}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->nearbyView:Landroid/view/View;

    .line 66
    const v1, 0x7f0901cc

    invoke-virtual {p0, v1}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/view/bottom/BottomNotification$1;

    invoke-direct {v2, p0}, Lcom/waze/view/bottom/BottomNotification$1;-><init>(Lcom/waze/view/bottom/BottomNotification;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sput-object p0, Lcom/waze/view/bottom/BottomNotification;->inst:Lcom/waze/view/bottom/BottomNotification;

    .line 79
    iput-boolean v3, p0, Lcom/waze/view/bottom/BottomNotification;->animating:Z

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/bottom/BottomNotification;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->mListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/bottom/BottomNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/waze/view/bottom/BottomNotification;->close()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/view/bottom/BottomNotification;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/view/bottom/BottomNotification;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/waze/view/bottom/BottomNotification;->refCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/waze/view/bottom/BottomNotification;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/waze/view/bottom/BottomNotification;->refCount:I

    return-void
.end method

.method static synthetic access$6(Lcom/waze/view/bottom/BottomNotification;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/waze/view/bottom/BottomNotification;->animating:Z

    return-void
.end method

.method private close()V
    .locals 18

    .prologue
    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/waze/view/bottom/BottomNotification;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/waze/view/bottom/BottomNotification;->animating:Z

    if-nez v2, :cond_0

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/view/bottom/BottomNotification;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    invoke-virtual {v2}, Lcom/waze/view/navbar/BottomBar;->unhide()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/view/bottom/BottomNotification;->setVisibility(I)V

    .line 387
    :cond_0
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/waze/view/bottom/BottomNotification;->hidable:Z

    .line 388
    return-void

    .line 367
    :cond_1
    new-instance v1, Lcom/waze/view/anim/AxisFlipper;

    const-wide/16 v2, 0x0

    const-wide v4, 0x4056800000000000L

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3fe0

    const-wide/high16 v16, 0x3fe0

    invoke-direct/range {v1 .. v17}, Lcom/waze/view/anim/AxisFlipper;-><init>(DDDDDDDD)V

    .line 368
    .local v1, anim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 369
    new-instance v2, Lcom/waze/view/bottom/BottomNotification$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/view/bottom/BottomNotification$13;-><init>(Lcom/waze/view/bottom/BottomNotification;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 383
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/waze/view/bottom/BottomNotification;->animating:Z

    .line 384
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/view/bottom/BottomNotification;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private getIconResId(Ljava/lang/String;)I
    .locals 5
    .parameter "icon"

    .prologue
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawable/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    const-string v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/waze/view/bottom/BottomNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/waze/view/bottom/BottomNotification;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private native initNTV()V
.end method

.method public static initNative()V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/waze/view/bottom/BottomNotification;->inst:Lcom/waze/view/bottom/BottomNotification;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/waze/view/bottom/BottomNotification;->inst:Lcom/waze/view/bottom/BottomNotification;

    invoke-direct {v0}, Lcom/waze/view/bottom/BottomNotification;->initNTV()V

    .line 85
    :cond_0
    return-void
.end method

.method private open(I)V
    .locals 18
    .parameter "timeout"

    .prologue
    .line 321
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "opening bottom notification for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/waze/view/bottom/BottomNotification;->animating:Z

    if-eqz v2, :cond_0

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/waze/view/bottom/BottomNotification;->clearAnimation()V

    .line 324
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/view/bottom/BottomNotification;->setVisibility(I)V

    .line 325
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/waze/view/bottom/BottomNotification;->animating:Z

    .line 327
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/waze/view/bottom/BottomNotification;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/view/bottom/BottomNotification;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    if-eqz v2, :cond_1

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/view/bottom/BottomNotification;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/waze/view/navbar/BottomBar;->hide(Z)V

    .line 329
    new-instance v1, Lcom/waze/view/anim/AxisFlipper;

    const-wide v2, 0x4056800000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3fe0

    const-wide/high16 v16, 0x3fe0

    invoke-direct/range {v1 .. v17}, Lcom/waze/view/anim/AxisFlipper;-><init>(DDDDDDDD)V

    .line 330
    .local v1, anim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 331
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/view/bottom/BottomNotification;->setVisibility(I)V

    .line 332
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/view/bottom/BottomNotification;->startAnimation(Landroid/view/animation/Animation;)V

    .line 334
    .end local v1           #anim:Landroid/view/animation/Animation;
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/view/bottom/BottomNotification;->refCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/waze/view/bottom/BottomNotification;->refCount:I

    .line 335
    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 337
    new-instance v2, Lcom/waze/view/bottom/BottomNotification$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/view/bottom/BottomNotification$11;-><init>(Lcom/waze/view/bottom/BottomNotification;)V

    .line 342
    move/from16 v0, p1

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    .line 337
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/waze/view/bottom/BottomNotification;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    :cond_2
    return-void
.end method


# virtual methods
.method public closeBottom()V
    .locals 1

    .prologue
    .line 348
    new-instance v0, Lcom/waze/view/bottom/BottomNotification$12;

    invoke-direct {v0, p0}, Lcom/waze/view/bottom/BottomNotification$12;-><init>(Lcom/waze/view/bottom/BottomNotification;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method public displayBottomPrivacyMessage()V
    .locals 1

    .prologue
    .line 296
    new-instance v0, Lcom/waze/view/bottom/BottomNotification$9;

    invoke-direct {v0, p0}, Lcom/waze/view/bottom/BottomNotification$9;-><init>(Lcom/waze/view/bottom/BottomNotification;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public hide(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/waze/view/bottom/BottomNotification;->hidable:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/waze/view/bottom/BottomNotification;->close()V

    .line 244
    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 391
    iget-boolean v1, p0, Lcom/waze/view/bottom/BottomNotification;->initialized:Z

    if-eqz v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/view/bottom/BottomNotification;->initialized:Z

    .line 393
    iput v3, p0, Lcom/waze/view/bottom/BottomNotification;->refCount:I

    .line 394
    iput-boolean v3, p0, Lcom/waze/view/bottom/BottomNotification;->hidable:Z

    .line 395
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 396
    .local v0, nativeManager:Lcom/waze/NativeManager;
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_POINTSE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->pointsString:Ljava/lang/String;

    .line 397
    invoke-virtual {v0}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->text:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    const v1, 0x7f0901d8

    invoke-virtual {p0, v1}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->text:Landroid/widget/TextView;

    .line 400
    iget-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    :cond_2
    invoke-virtual {v0}, Lcom/waze/NativeManager;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/waze/NativeManager;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/LayoutManager;->getBottomBar()Lcom/waze/view/navbar/BottomBar;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->bottomBar:Lcom/waze/view/navbar/BottomBar;

    goto :goto_0
.end method

.method public isHidable()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/waze/view/bottom/BottomNotification;->hidable:Z

    return v0
.end method

.method public postLongMessageIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "timeout"

    .prologue
    .line 287
    new-instance v0, Lcom/waze/view/bottom/BottomNotification$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/view/bottom/BottomNotification$8;-><init>(Lcom/waze/view/bottom/BottomNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method public postLongMessagePoints(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "title"
    .parameter "message"
    .parameter "points"
    .parameter "timeout"

    .prologue
    .line 307
    new-instance v0, Lcom/waze/view/bottom/BottomNotification$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/view/bottom/BottomNotification$10;-><init>(Lcom/waze/view/bottom/BottomNotification;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public postMessage(Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "timeout"

    .prologue
    .line 247
    new-instance v0, Lcom/waze/view/bottom/BottomNotification$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/view/bottom/BottomNotification$5;-><init>(Lcom/waze/view/bottom/BottomNotification;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public postMessageIcon(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "icon"
    .parameter "timeout"

    .prologue
    .line 278
    new-instance v0, Lcom/waze/view/bottom/BottomNotification$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/view/bottom/BottomNotification$7;-><init>(Lcom/waze/view/bottom/BottomNotification;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method

.method public postNearbyMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "message"
    .parameter "messageBody"
    .parameter "timeout"

    .prologue
    .line 266
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v5

    .line 267
    .local v5, isRandomUser:Z
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->FoursquareEnabledNTV()Z

    move-result v6

    .line 268
    .local v6, isFoursquareEnabled:Z
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isClosureEnabledNTV()Z

    move-result v7

    .line 269
    .local v7, isClosureEnabled:Z
    new-instance v0, Lcom/waze/view/bottom/BottomNotification$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/waze/view/bottom/BottomNotification$6;-><init>(Lcom/waze/view/bottom/BottomNotification;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method

.method public setListener(Lcom/waze/view/bottom/BottomNotificationOnClickIntent;)V
    .locals 2
    .parameter "toIntent"

    .prologue
    .line 89
    invoke-static {}, Lcom/waze/view/bottom/BottomNotification;->$SWITCH_TABLE$com$waze$view$bottom$BottomNotificationOnClickIntent()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->mListener:Landroid/view/View$OnClickListener;

    .line 135
    :goto_0
    return-void

    .line 92
    :pswitch_0
    new-instance v0, Lcom/waze/view/bottom/BottomNotification$2;

    invoke-direct {v0, p0}, Lcom/waze/view/bottom/BottomNotification$2;-><init>(Lcom/waze/view/bottom/BottomNotification;)V

    iput-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->mListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 106
    :pswitch_1
    new-instance v0, Lcom/waze/view/bottom/BottomNotification$3;

    invoke-direct {v0, p0}, Lcom/waze/view/bottom/BottomNotification$3;-><init>(Lcom/waze/view/bottom/BottomNotification;)V

    iput-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->mListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 118
    :pswitch_2
    new-instance v0, Lcom/waze/view/bottom/BottomNotification$4;

    invoke-direct {v0, p0}, Lcom/waze/view/bottom/BottomNotification$4;-><init>(Lcom/waze/view/bottom/BottomNotification;)V

    iput-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->mListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLongMessageIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "timeout"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/waze/view/bottom/BottomNotification;->init()V

    .line 206
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->longView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->shortMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->nearbyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->seperator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->rightSide:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->points:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->pointsTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->rightSide:Landroid/view/View;

    invoke-direct {p0, p3}, Lcom/waze/view/bottom/BottomNotification;->getIconResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 218
    invoke-direct {p0, p4}, Lcom/waze/view/bottom/BottomNotification;->open(I)V

    .line 219
    return-void
.end method

.method public setLongMessagePoints(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "points"
    .parameter "timeout"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/waze/view/bottom/BottomNotification;->init()V

    .line 223
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->longView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->shortMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->nearbyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->seperator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->rightSide:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->points:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->pointsTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->rightSide:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 235
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->points:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->pointsTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/view/bottom/BottomNotification;->pointsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-direct {p0, p4}, Lcom/waze/view/bottom/BottomNotification;->open(I)V

    .line 238
    return-void
.end method

.method public setNearByMessage(Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 6
    .parameter "message"
    .parameter "messageBody"
    .parameter "timeout"
    .parameter "isRandomUser"
    .parameter "isFoursquareEnabled"
    .parameter "isClosureEnabled"

    .prologue
    const/16 v5, 0xa

    const v4, 0x7f0901d0

    const v3, 0x7f0901cf

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 148
    invoke-virtual {p0}, Lcom/waze/view/bottom/BottomNotification;->init()V

    .line 149
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->longView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->nearbyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->shortMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    if-nez p1, :cond_0

    .line 154
    invoke-virtual {p0, v3}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    sget-object v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->RT_ALERTS_MENU:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    invoke-virtual {p0, v0}, Lcom/waze/view/bottom/BottomNotification;->setListener(Lcom/waze/view/bottom/BottomNotificationOnClickIntent;)V

    .line 165
    :goto_0
    if-nez p2, :cond_1

    .line 167
    invoke-virtual {p0, v4}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/bottom/BottomNotification;->hidable:Z

    .line 177
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->nearbyView:Landroid/view/View;

    const/16 v1, 0x19

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 179
    invoke-direct {p0, p3}, Lcom/waze/view/bottom/BottomNotification;->open(I)V

    .line 180
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, v3}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget-object v0, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->MY_FRIENDS_ACTIVITY:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    invoke-virtual {p0, v0}, Lcom/waze/view/bottom/BottomNotification;->setListener(Lcom/waze/view/bottom/BottomNotificationOnClickIntent;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0, v4}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    invoke-virtual {p0, v4}, Lcom/waze/view/bottom/BottomNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setShortMessage(Ljava/lang/String;I)V
    .locals 2
    .parameter "message"
    .parameter "timeout"

    .prologue
    const/16 v1, 0x8

    .line 138
    invoke-virtual {p0}, Lcom/waze/view/bottom/BottomNotification;->init()V

    .line 139
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->longView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->nearbyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->shortMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->shortMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/bottom/BottomNotification;->hidable:Z

    .line 144
    invoke-direct {p0, p2}, Lcom/waze/view/bottom/BottomNotification;->open(I)V

    .line 145
    return-void
.end method

.method public setShortMessageIcon(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "message"
    .parameter "icon"
    .parameter "timeout"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 188
    invoke-virtual {p0}, Lcom/waze/view/bottom/BottomNotification;->init()V

    .line 189
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->longView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->shortMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->nearbyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->seperator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->rightSide:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->points:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->pointsTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification;->rightSide:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/waze/view/bottom/BottomNotification;->getIconResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 201
    invoke-direct {p0, p3}, Lcom/waze/view/bottom/BottomNotification;->open(I)V

    .line 202
    return-void
.end method
