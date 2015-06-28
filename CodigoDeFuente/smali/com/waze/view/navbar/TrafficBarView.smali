.class public Lcom/waze/view/navbar/TrafficBarView;
.super Landroid/widget/RelativeLayout;
.source "TrafficBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBg:Landroid/view/View;

.field private mCurPercent:I

.field private mCurTime:I

.field private mDisapearRunnable:Ljava/lang/Runnable;

.field private mDriver:Landroid/view/View;

.field private mJam:Lcom/waze/view/navbar/TrafficBarColoredJamView;

.field private mTip:Landroid/view/View;

.field private mTipIsAnimating:Z

.field private mTipIsShowing:Z

.field private mTipTime:Landroid/widget/TextView;

.field private mTipTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsShowing:Z

    .line 34
    iput-boolean v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsAnimating:Z

    .line 36
    iput v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurPercent:I

    .line 37
    iput v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurTime:I

    .line 41
    invoke-direct {p0, p1}, Lcom/waze/view/navbar/TrafficBarView;->initMembers(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsShowing:Z

    .line 34
    iput-boolean v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsAnimating:Z

    .line 36
    iput v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurPercent:I

    .line 37
    iput v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurTime:I

    .line 46
    invoke-direct {p0, p1}, Lcom/waze/view/navbar/TrafficBarView;->initMembers(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsShowing:Z

    .line 34
    iput-boolean v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsAnimating:Z

    .line 36
    iput v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurPercent:I

    .line 37
    iput v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurTime:I

    .line 51
    invoke-direct {p0, p1}, Lcom/waze/view/navbar/TrafficBarView;->initMembers(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/navbar/TrafficBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/waze/view/navbar/TrafficBarView;->disappearifyTheTip()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/view/navbar/TrafficBarView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/view/navbar/TrafficBarView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsAnimating:Z

    return-void
.end method

.method static synthetic access$3(Lcom/waze/view/navbar/TrafficBarView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsShowing:Z

    return-void
.end method

.method static synthetic access$4(Lcom/waze/view/navbar/TrafficBarView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mDisapearRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private disappearifyTheTip()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 164
    iput-boolean v3, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsAnimating:Z

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsShowing:Z

    .line 167
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mDisapearRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mDisapearRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/waze/view/navbar/TrafficBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 171
    :cond_0
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 172
    .local v7, as:Landroid/view/animation/AnimationSet;
    const-wide/16 v4, 0xc8

    invoke-virtual {v7, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 173
    invoke-virtual {v7, v3}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 174
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 176
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 177
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x42a0

    .line 178
    const/high16 v6, 0x3f00

    move v4, v1

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 177
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 180
    new-instance v0, Lcom/waze/view/navbar/TrafficBarView$3;

    invoke-direct {v0, p0}, Lcom/waze/view/navbar/TrafficBarView$3;-><init>(Lcom/waze/view/navbar/TrafficBarView;)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 195
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    return-void
.end method

.method private initMembers(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 57
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030127

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    const v1, 0x7f090746

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/TrafficBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mBg:Landroid/view/View;

    .line 60
    const v1, 0x7f090747

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/TrafficBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/navbar/TrafficBarColoredJamView;

    iput-object v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mJam:Lcom/waze/view/navbar/TrafficBarColoredJamView;

    .line 61
    const v1, 0x7f090748

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/TrafficBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mDriver:Landroid/view/View;

    .line 62
    const v1, 0x7f090749

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/TrafficBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    .line 63
    const v1, 0x7f09074a

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/TrafficBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipTitle:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f09074b

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/TrafficBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipTime:Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mBg:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-direct {p0}, Lcom/waze/view/navbar/TrafficBarView;->initTip()V

    .line 70
    return-void
.end method

.method private initTip()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 87
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    invoke-virtual {v4, v5, v5}, Landroid/view/View;->measure(II)V

    .line 88
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mDriver:Landroid/view/View;

    invoke-virtual {v4, v5, v5}, Landroid/view/View;->measure(II)V

    .line 90
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 91
    .local v3, tipHeight:I
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mDriver:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 93
    .local v1, driverHeight:I
    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v5, v3, 0x2

    sub-int v0, v4, v5

    .line 95
    .local v0, bottomMargin:I
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 96
    .local v2, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6, v6, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 97
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 100
    return-void
.end method


# virtual methods
.method public appearifyTheTip(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mDisapearRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/waze/view/navbar/TrafficBarView$1;

    invoke-direct {v0, p0}, Lcom/waze/view/navbar/TrafficBarView$1;-><init>(Lcom/waze/view/navbar/TrafficBarView;)V

    iput-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mDisapearRunnable:Ljava/lang/Runnable;

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsShowing:Z

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mDisapearRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/waze/view/navbar/TrafficBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 116
    if-lez p1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mDisapearRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/waze/view/navbar/TrafficBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsAnimating:Z

    .line 123
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/waze/view/navbar/TrafficBarView$2;

    invoke-direct {v1, p0, p1}, Lcom/waze/view/navbar/TrafficBarView$2;-><init>(Lcom/waze/view/navbar/TrafficBarView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public canShow()Z
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurPercent:I

    const/16 v1, -0x64

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurPercent:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurTime:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 74
    const-string v0, "JAM_CROSS_TIME_CLICKED"

    .line 75
    const-string v1, "TIME_TO_CROSS|ETA"

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurTime:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/share/ShareNativeManager;->getEtaNTV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-boolean v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsAnimating:Z

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsShowing:Z

    if-eqz v0, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/waze/view/navbar/TrafficBarView;->disappearifyTheTip()V

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/view/navbar/TrafficBarView;->appearifyTheTip(I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsShowing:Z

    .line 234
    iput-boolean v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipIsAnimating:Z

    .line 235
    iput v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurPercent:I

    .line 236
    iput v1, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurTime:I

    .line 238
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 240
    return-void
.end method

.method public setDayMode(Z)V
    .locals 2
    .parameter "bIsDay"

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mBg:Landroid/view/View;

    const v1, 0x7f02041d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 245
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    const v1, 0x7f020420

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 246
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mJam:Lcom/waze/view/navbar/TrafficBarColoredJamView;

    const v1, 0x7f020422

    invoke-virtual {v0, v1}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->setBackgroundResource(I)V

    .line 247
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipTitle:Landroid/widget/TextView;

    const v1, -0x6c6c6d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipTime:Landroid/widget/TextView;

    const v1, -0x9c9c9d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mBg:Landroid/view/View;

    const v1, 0x7f02041f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 251
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;

    const v1, 0x7f020421

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mJam:Lcom/waze/view/navbar/TrafficBarColoredJamView;

    const v1, 0x7f020423

    invoke-virtual {v0, v1}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->setBackgroundResource(I)V

    .line 253
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipTitle:Landroid/widget/TextView;

    const v1, -0x754531

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipTime:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setTime(II[I[I)V
    .locals 9
    .parameter "current_percent"
    .parameter "total_time"
    .parameter "levels"
    .parameter "lengths"

    .prologue
    const/4 v8, 0x0

    .line 199
    iput p1, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurPercent:I

    .line 200
    iput p2, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurTime:I

    .line 202
    invoke-virtual {p0}, Lcom/waze/view/navbar/TrafficBarView;->canShow()Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/waze/view/navbar/TrafficBarView;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 205
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 206
    .local v2, nm:Lcom/waze/NativeManager;
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipTitle:Landroid/widget/TextView;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_TRAFFIC_BAR_TITLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mTipTime:Landroid/widget/TextView;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_TRAFFIC_BAR_TIME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 208
    div-int/lit8 v7, p2, 0x3c

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 207
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .end local v2           #nm:Lcom/waze/NativeManager;
    :cond_1
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mDriver:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 214
    .local v1, driverHeight:I
    iget v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurPercent:I

    if-ltz v4, :cond_2

    .line 215
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mJam:Lcom/waze/view/navbar/TrafficBarColoredJamView;

    invoke-virtual {v4}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurPercent:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x64

    div-int/lit8 v5, v1, 0x2

    sub-int v0, v4, v5

    .line 221
    .local v0, bottomMargin:I
    :goto_1
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mDriver:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 222
    .local v3, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v8, v8, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 223
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mDriver:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mJam:Lcom/waze/view/navbar/TrafficBarColoredJamView;

    invoke-virtual {v4, p3, p4, p1}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->setColors([I[II)V

    goto :goto_0

    .line 218
    .end local v0           #bottomMargin:I
    .end local v3           #p:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v4, p0, Lcom/waze/view/navbar/TrafficBarView;->mJam:Lcom/waze/view/navbar/TrafficBarColoredJamView;

    invoke-virtual {v4}, Lcom/waze/view/navbar/TrafficBarColoredJamView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/waze/view/navbar/TrafficBarView;->mCurPercent:I

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0x3e8

    div-int/lit8 v5, v1, 0x2

    sub-int v0, v4, v5

    .restart local v0       #bottomMargin:I
    goto :goto_1
.end method
