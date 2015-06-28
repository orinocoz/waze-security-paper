.class public Lcom/waze/settings/SettingsSwitchView;
.super Landroid/widget/RelativeLayout;
.source "SettingsSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/settings/SettingsSwitchView$SwitchModes;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes:[I = null

.field private static final BASIC_SWITCH_DURATION:I = 0x64

.field private static final BG_RETURN_FROM_STRETCH_DURATION:I = 0xfa

.field private static final BG_STRETCH_DURATION:I = 0x78

.field private static final BOX_RETURN_FROM_STRETCH_DURATION:I = 0x118

.field private static final BOX_STRETCH_DURATION:I = 0x5a


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mSwitchBg:Landroid/widget/ImageView;

.field private mSwitchHandle:Landroid/widget/RelativeLayout;

.field private mSwitchMode:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

.field private mSwitchV:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/waze/settings/SettingsSwitchView;->$SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->values()[Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->CHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    invoke-virtual {v1}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->UNCHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    invoke-virtual {v1}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/waze/settings/SettingsSwitchView;->$SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->inflater:Landroid/view/LayoutInflater;

    .line 51
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300f8

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    invoke-direct {p0}, Lcom/waze/settings/SettingsSwitchView;->initMemebers()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->inflater:Landroid/view/LayoutInflater;

    .line 44
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300f8

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-direct {p0}, Lcom/waze/settings/SettingsSwitchView;->initMemebers()V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchMode:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    return-void
.end method

.method static synthetic access$1(Lcom/waze/settings/SettingsSwitchView;)Lcom/waze/settings/SettingsSwitchView$SwitchModes;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchMode:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsSwitchView;->animateSwitch(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsSwitchView;->changeBgAlphaSecondPhase(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsSwitchView;->toggleBgImage(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsSwitchView;->moveBoxToStretch(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsSwitchView;->returnBoxAfterStretchMove(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    return-void
.end method

.method private animateSwitch(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsSwitchView;->fadeSwitchV(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsSwitchView;->slideBox(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/waze/settings/SettingsSwitchView;->changeBgAlpha(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    .line 88
    return-void
.end method

.method private changeBgAlpha(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 5
    .parameter "mode"

    .prologue
    const/high16 v4, 0x3f80

    .line 168
    new-instance v0, Lcom/waze/settings/SettingsSwitchView$2;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsSwitchView$2;-><init>(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    .line 190
    .local v0, al:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {}, Lcom/waze/settings/SettingsSwitchView;->$SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 198
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3f4ccccd

    invoke-direct {v1, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 202
    .local v1, alpha:Landroid/view/animation/AlphaAnimation;
    :goto_0
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 203
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 204
    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 205
    iget-object v2, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    return-void

    .line 192
    .end local v1           #alpha:Landroid/view/animation/AlphaAnimation;
    :pswitch_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f00

    invoke-direct {v1, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 194
    .restart local v1       #alpha:Landroid/view/animation/AlphaAnimation;
    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private changeBgAlphaSecondPhase(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 5
    .parameter "mode"

    .prologue
    const/high16 v4, 0x3f80

    .line 211
    new-instance v0, Lcom/waze/settings/SettingsSwitchView$3;

    invoke-direct {v0, p0, p1}, Lcom/waze/settings/SettingsSwitchView$3;-><init>(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    .line 231
    .local v0, al:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {}, Lcom/waze/settings/SettingsSwitchView;->$SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 239
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3f4ccccd

    invoke-direct {v1, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 244
    .local v1, alpha:Landroid/view/animation/AlphaAnimation;
    :goto_0
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 245
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 246
    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 247
    iget-object v2, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    return-void

    .line 233
    .end local v1           #alpha:Landroid/view/animation/AlphaAnimation;
    :pswitch_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3e4ccccd

    invoke-direct {v1, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 235
    .restart local v1       #alpha:Landroid/view/animation/AlphaAnimation;
    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private fadeSwitchV(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 5
    .parameter "mode"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 97
    iget-object v1, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchV:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    invoke-static {}, Lcom/waze/settings/SettingsSwitchView;->$SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 108
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 113
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    :goto_0
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 115
    iget-object v1, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchV:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 116
    return-void

    .line 102
    .end local v0           #alpha:Landroid/view/animation/AlphaAnimation;
    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 104
    .restart local v0       #alpha:Landroid/view/animation/AlphaAnimation;
    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initMemebers()V
    .locals 1

    .prologue
    .line 500
    const v0, 0x7f090671

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchBg:Landroid/widget/ImageView;

    .line 501
    const v0, 0x7f090672

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchHandle:Landroid/widget/RelativeLayout;

    .line 502
    const v0, 0x7f090673

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchV:Landroid/widget/ImageView;

    .line 503
    const v0, 0x7f090670

    invoke-virtual {p0, v0}, Lcom/waze/settings/SettingsSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mTextView:Landroid/widget/TextView;

    .line 504
    return-void
.end method

.method private moveBoxToStretch(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 14
    .parameter "mode"

    .prologue
    .line 355
    invoke-static {}, Lcom/waze/settings/SettingsSwitchView;->$SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 377
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f80

    const v5, 0x3f88f5c3

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    .line 378
    const/4 v8, 0x1

    const v9, 0x3f666666

    .line 379
    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    move-object v3, v0

    .line 377
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 381
    .local v0, bgScaleAnimation:Landroid/view/animation/ScaleAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 382
    const/4 v4, 0x1

    const v5, -0x41333333

    .line 383
    const/4 v6, 0x1

    const v7, -0x410f5c29

    .line 384
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 385
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, v1

    .line 381
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 387
    .local v1, translateAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f851eb8

    const v4, 0x3f866666

    const v5, 0x3f851eb8

    const v6, 0x3f866666

    .line 388
    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    .line 389
    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    .line 387
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 394
    .local v2, boxScaleAnimation:Landroid/view/animation/ScaleAnimation;
    :goto_0
    new-instance v12, Lcom/waze/settings/SettingsSwitchView$5;

    invoke-direct {v12, p0, p1}, Lcom/waze/settings/SettingsSwitchView$5;-><init>(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    .line 415
    .local v12, al:Landroid/view/animation/Animation$AnimationListener;
    const-wide/16 v3, 0x78

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 417
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 418
    iget-object v3, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchBg:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 420
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v13, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 422
    .local v13, animationSet:Landroid/view/animation/AnimationSet;
    const-wide/16 v3, 0x5a

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 424
    const-wide/16 v3, 0x5a

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 427
    invoke-virtual {v1, v12}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 428
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 429
    invoke-virtual {v13, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 430
    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 431
    iget-object v3, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchHandle:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 432
    return-void

    .line 358
    .end local v0           #bgScaleAnimation:Landroid/view/animation/ScaleAnimation;
    .end local v1           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v2           #boxScaleAnimation:Landroid/view/animation/ScaleAnimation;
    .end local v12           #al:Landroid/view/animation/Animation$AnimationListener;
    .end local v13           #animationSet:Landroid/view/animation/AnimationSet;
    :pswitch_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f88f5c3

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    .line 359
    const/4 v5, 0x1

    const v6, 0x3dcccccd

    .line 360
    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    .line 358
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 362
    .restart local v0       #bgScaleAnimation:Landroid/view/animation/ScaleAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 363
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 364
    const/4 v4, 0x1

    const v5, 0x3d75c28f

    .line 365
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 366
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 362
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 368
    .restart local v1       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f851eb8

    const v4, 0x3f866666

    const v5, 0x3f851eb8

    const v6, 0x3f866666

    .line 369
    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    .line 370
    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    .line 368
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 372
    .restart local v2       #boxScaleAnimation:Landroid/view/animation/ScaleAnimation;
    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private returnBoxAfterStretchMove(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 13
    .parameter "mode"

    .prologue
    .line 440
    invoke-static {}, Lcom/waze/settings/SettingsSwitchView;->$SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 460
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f88f5c3

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    .line 461
    const/4 v8, 0x1

    const v9, 0x3f666666

    .line 462
    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    move-object v3, v0

    .line 460
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 464
    .local v0, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 465
    const/4 v4, 0x1

    const v5, -0x410f5c29

    .line 466
    const/4 v6, 0x1

    const v7, -0x41333333

    .line 467
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 468
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, v1

    .line 464
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 470
    .local v1, translateAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f866666

    const/high16 v4, 0x3f80

    const v5, 0x3f866666

    const/high16 v6, 0x3f80

    .line 471
    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    .line 472
    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    .line 470
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 479
    .local v2, boxScaleAnimation:Landroid/view/animation/ScaleAnimation;
    :goto_0
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 481
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 482
    iget-object v3, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchBg:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 484
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 486
    .local v12, animationSet:Landroid/view/animation/AnimationSet;
    const-wide/16 v3, 0x118

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 488
    const-wide/16 v3, 0x118

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 493
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 494
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 495
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 496
    iget-object v3, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchHandle:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 497
    return-void

    .line 442
    .end local v0           #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    .end local v1           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v2           #boxScaleAnimation:Landroid/view/animation/ScaleAnimation;
    .end local v12           #animationSet:Landroid/view/animation/AnimationSet;
    :pswitch_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f88f5c3

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    .line 443
    const/4 v5, 0x1

    const v6, 0x3dcccccd

    .line 444
    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    .line 442
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 446
    .restart local v0       #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 447
    const/4 v2, 0x1

    const v3, 0x3d75c28f

    .line 448
    const/4 v4, 0x1

    const v5, -0x42b33333

    .line 449
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 450
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 446
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 452
    .restart local v1       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f866666

    const/high16 v4, 0x3f80

    const v5, 0x3f866666

    const/high16 v6, 0x3f80

    .line 453
    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    .line 454
    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    .line 452
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 456
    .restart local v2       #boxScaleAnimation:Landroid/view/animation/ScaleAnimation;
    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setSwitch(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 12
    .parameter "mode"

    .prologue
    const v5, -0x41333333

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 123
    invoke-static {}, Lcom/waze/settings/SettingsSwitchView;->$SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 140
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move-object v3, v0

    move v4, v1

    move v6, v1

    move v7, v5

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 146
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    iget-object v2, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchV:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/waze/settings/SettingsSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 149
    const v4, 0x7f0203d3

    .line 148
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    :goto_0
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 158
    iget-object v1, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchHandle:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 159
    return-void

    .line 125
    .end local v0           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 131
    .restart local v0       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    iget-object v2, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchV:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/waze/settings/SettingsSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 134
    const v4, 0x7f0203d4

    .line 133
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private slideBox(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 13
    .parameter "mode"

    .prologue
    .line 277
    new-instance v11, Lcom/waze/settings/SettingsSwitchView$4;

    invoke-direct {v11, p0, p1}, Lcom/waze/settings/SettingsSwitchView$4;-><init>(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    .line 299
    .local v11, al:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {}, Lcom/waze/settings/SettingsSwitchView;->$SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 316
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 317
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 318
    const/4 v5, 0x1

    const v6, -0x41333333

    .line 319
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 320
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v0

    .line 316
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 322
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f828f5c

    const/high16 v3, 0x3f80

    const v4, 0x3f4ccccd

    const v5, 0x3f851eb8

    .line 323
    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    .line 324
    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    .line 322
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 331
    .local v1, boxScaleAnimation:Landroid/view/animation/ScaleAnimation;
    :goto_0
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 332
    .local v12, animationSet:Landroid/view/animation/AnimationSet;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 335
    invoke-virtual {v0, v11}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 337
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 340
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 341
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 342
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 345
    iget-object v2, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchHandle:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 346
    return-void

    .line 302
    .end local v0           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v1           #boxScaleAnimation:Landroid/view/animation/ScaleAnimation;
    .end local v12           #animationSet:Landroid/view/animation/AnimationSet;
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 303
    const/4 v1, 0x1

    const v2, -0x41333333

    .line 304
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 305
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 306
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 302
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 308
    .restart local v0       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f828f5c

    const/high16 v3, 0x3f80

    const v4, 0x3f4ccccd

    const v5, 0x3f851eb8

    .line 309
    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    .line 310
    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    .line 308
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 312
    .restart local v1       #boxScaleAnimation:Landroid/view/animation/ScaleAnimation;
    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private toggleBgImage(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 251
    invoke-static {}, Lcom/waze/settings/SettingsSwitchView;->$SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 259
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/waze/settings/SettingsSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 260
    const v2, 0x7f0203d3

    .line 259
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/waze/settings/SettingsSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 254
    const v2, 0x7f0203d4

    .line 253
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchMode:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    sget-object v1, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->CHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchBg:Landroid/widget/ImageView;

    new-instance v1, Lcom/waze/settings/SettingsSwitchView$1;

    invoke-direct {v1, p0, p1}, Lcom/waze/settings/SettingsSwitchView$1;-><init>(Lcom/waze/settings/SettingsSwitchView;Lcom/waze/settings/SwitchCheckedCallback;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1
    .parameter "tf"
    .parameter "style"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 60
    return-void
.end method

.method public setValue(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    sget-object v0, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->CHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    :goto_0
    iput-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchMode:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    .line 63
    iget-object v0, p0, Lcom/waze/settings/SettingsSwitchView;->mSwitchMode:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    invoke-direct {p0, v0}, Lcom/waze/settings/SettingsSwitchView;->setSwitch(Lcom/waze/settings/SettingsSwitchView$SwitchModes;)V

    .line 64
    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/waze/settings/SettingsSwitchView$SwitchModes;->UNCHECKED:Lcom/waze/settings/SettingsSwitchView$SwitchModes;

    goto :goto_0
.end method
