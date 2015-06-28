.class public Lcom/waze/view/popups/AlerterPopUp;
.super Lcom/waze/view/popups/PopUp;
.source "AlerterPopUp.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/waze/view/popups/AlerterPopUp;

.field private static mIsShown:Z

.field private static mLayoutManager:Lcom/waze/LayoutManager;

.field private static mTimerSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/waze/view/popups/AlerterPopUp;->mIsShown:Z

    .line 24
    sput-boolean v0, Lcom/waze/view/popups/AlerterPopUp;->mTimerSet:Z

    .line 25
    sput-object v1, Lcom/waze/view/popups/AlerterPopUp;->mInstance:Lcom/waze/view/popups/AlerterPopUp;

    .line 26
    sput-object v1, Lcom/waze/view/popups/AlerterPopUp;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 31
    sput-object p1, Lcom/waze/view/popups/AlerterPopUp;->mContext:Landroid/content/Context;

    .line 32
    sput-object p2, Lcom/waze/view/popups/AlerterPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 33
    invoke-direct {p0}, Lcom/waze/view/popups/AlerterPopUp;->init()V

    .line 35
    return-void
.end method

.method public static IsAlerterShown()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/waze/view/popups/AlerterPopUp;->mIsShown:Z

    return v0
.end method

.method static synthetic access$0(Lcom/waze/view/popups/AlerterPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/waze/view/popups/AlerterPopUp;->onNothThere()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/view/popups/AlerterPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/waze/view/popups/AlerterPopUp;->onThumbsUp()V

    return-void
.end method

.method private static convertDpToPixels(FLandroid/content/Context;)F
    .locals 2
    .parameter "dp"
    .parameter "context"

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 243
    .local v0, density:F
    mul-float v1, v0, p0

    return v1
.end method

.method public static getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/AlerterPopUp;
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 49
    sget-object v0, Lcom/waze/view/popups/AlerterPopUp;->mInstance:Lcom/waze/view/popups/AlerterPopUp;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/waze/view/popups/AlerterPopUp;

    invoke-direct {v0, p0, p1}, Lcom/waze/view/popups/AlerterPopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    sput-object v0, Lcom/waze/view/popups/AlerterPopUp;->mInstance:Lcom/waze/view/popups/AlerterPopUp;

    .line 52
    :cond_0
    sget-object v0, Lcom/waze/view/popups/AlerterPopUp;->mInstance:Lcom/waze/view/popups/AlerterPopUp;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/waze/view/popups/AlerterPopUp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03001b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lcom/waze/view/popups/AlerterPopUp;->setUpButtonsTxt()V

    .line 70
    return-void
.end method

.method private onNothThere()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/waze/view/popups/AlerterPopUp$3;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/AlerterPopUp$3;-><init>(Lcom/waze/view/popups/AlerterPopUp;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 159
    invoke-virtual {p0}, Lcom/waze/view/popups/AlerterPopUp;->hide()V

    .line 160
    return-void
.end method

.method private onThumbsUp()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/waze/view/popups/AlerterPopUp$2;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/AlerterPopUp$2;-><init>(Lcom/waze/view/popups/AlerterPopUp;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {p0}, Lcom/waze/view/popups/AlerterPopUp;->hide()V

    .line 148
    return-void
.end method

.method private setIcon(Ljava/lang/String;)V
    .locals 3
    .parameter "iconName"

    .prologue
    .line 82
    const v2, 0x7f090196

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    .local v0, image:Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/ResManager;->GetDrawableId(Ljava/lang/String;)I

    move-result v1

    .line 87
    .local v1, resId:I
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    .end local v1           #resId:I
    :cond_0
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 74
    const v1, 0x7f09019b

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, textView:Landroid/widget/TextView;
    if-nez p1, :cond_0

    .line 76
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 94
    sput-boolean v0, Lcom/waze/view/popups/AlerterPopUp;->mIsShown:Z

    .line 95
    sput-boolean v0, Lcom/waze/view/popups/AlerterPopUp;->mTimerSet:Z

    .line 96
    sget-object v0, Lcom/waze/view/popups/AlerterPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsOnline()I

    move-result v1

    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsPending()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/LayoutManager;->RefreshBar(II)V

    .line 97
    sget-object v0, Lcom/waze/view/popups/AlerterPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    sget-object v1, Lcom/waze/view/popups/AlerterPopUp;->mInstance:Lcom/waze/view/popups/AlerterPopUp;

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 98
    new-instance v0, Lcom/waze/view/popups/AlerterPopUp$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/AlerterPopUp$1;-><init>(Lcom/waze/view/popups/AlerterPopUp;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f09019c

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 111
    invoke-virtual {p0}, Lcom/waze/view/popups/AlerterPopUp;->dismiss()V

    .line 112
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/waze/view/popups/AlerterPopUp;->hide()V

    .line 41
    return-void
.end method

.method public setCloseTime(I)V
    .locals 5
    .parameter "timer"

    .prologue
    const v4, 0x7f09019c

    .line 116
    sget-boolean v3, Lcom/waze/view/popups/AlerterPopUp;->mTimerSet:Z

    if-nez v3, :cond_0

    .line 119
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v3}, Lcom/waze/view/timer/TimerView;->setGrayColor()V

    .line 120
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v3, p1}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 121
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v3}, Lcom/waze/view/timer/TimerView;->start()V

    .line 122
    const/4 v3, 0x1

    sput-boolean v3, Lcom/waze/view/popups/AlerterPopUp;->mTimerSet:Z

    .line 123
    invoke-virtual {p0}, Lcom/waze/view/popups/AlerterPopUp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 124
    .local v2, scale:F
    const v3, 0x7f09019d

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, closeButton:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 126
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/high16 v3, 0x41f0

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .end local v0           #closeButton:Landroid/view/View;
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #scale:F
    :cond_0
    return-void
.end method

.method public setUpButtonsTxt()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NOT_THERE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, noThereButtonTxt:Ljava/lang/String;
    const v1, 0x7f090199

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10
    .parameter "titleStr"
    .parameter "desc"
    .parameter "iconName"
    .parameter "distanceStr"
    .parameter "is_cancelable"
    .parameter "can_send_thumbs_up"

    .prologue
    .line 163
    sget-boolean v5, Lcom/waze/view/popups/AlerterPopUp;->mIsShown:Z

    if-eqz v5, :cond_0

    .line 164
    sget-object v5, Lcom/waze/view/popups/AlerterPopUp;->mInstance:Lcom/waze/view/popups/AlerterPopUp;

    invoke-virtual {v5}, Lcom/waze/view/popups/AlerterPopUp;->hide()V

    .line 167
    :cond_0
    invoke-direct {p0, p4}, Lcom/waze/view/popups/AlerterPopUp;->setTitle(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p3}, Lcom/waze/view/popups/AlerterPopUp;->setIcon(Ljava/lang/String;)V

    .line 170
    if-eqz p2, :cond_2

    .line 172
    const v5, 0x7f090180

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 173
    const v5, 0x7f090180

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    const v5, 0x7f090032

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 181
    new-instance v6, Lcom/waze/view/popups/AlerterPopUp$4;

    invoke-direct {v6, p0}, Lcom/waze/view/popups/AlerterPopUp$4;-><init>(Lcom/waze/view/popups/AlerterPopUp;)V

    .line 180
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v5, 0x7f09019c

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v5}, Lcom/waze/view/timer/TimerView;->reset()V

    .line 188
    if-eqz p5, :cond_3

    .line 189
    const v5, 0x7f090198

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    const v5, 0x7f090198

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 191
    new-instance v6, Lcom/waze/view/popups/AlerterPopUp$5;

    invoke-direct {v6, p0}, Lcom/waze/view/popups/AlerterPopUp$5;-><init>(Lcom/waze/view/popups/AlerterPopUp;)V

    .line 190
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :goto_1
    const v5, 0x7f090188

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, button:Landroid/view/View;
    if-eqz p6, :cond_4

    .line 205
    const v5, 0x7f090198

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f02002c

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 206
    const v5, 0x7f090198

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 207
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const v5, 0x7f090197

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 209
    const v5, 0x7f090188

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 210
    new-instance v6, Lcom/waze/view/popups/AlerterPopUp$6;

    invoke-direct {v6, p0}, Lcom/waze/view/popups/AlerterPopUp$6;-><init>(Lcom/waze/view/popups/AlerterPopUp;)V

    .line 209
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :goto_2
    const v5, 0x7f090194

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 226
    .local v1, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 227
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/NativeManager;->getNavBarManager()Lcom/waze/NavBarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/NavBarManager;->getNavBar()Lcom/waze/navbar/NavBar;

    move-result-object v2

    .line 228
    .local v2, navBar:Lcom/waze/navbar/NavBar;
    const/4 v4, 0x0

    .line 229
    .local v4, topMargin:I
    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v2}, Lcom/waze/navbar/NavBar;->getNavBarHeight()I

    move-result v4

    .line 232
    :cond_1
    const/4 v5, 0x0

    add-int/lit8 v6, v4, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 233
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    const/4 v5, 0x1

    sput-boolean v5, Lcom/waze/view/popups/AlerterPopUp;->mIsShown:Z

    .line 236
    sget-object v5, Lcom/waze/view/popups/AlerterPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    sget-object v6, Lcom/waze/view/popups/AlerterPopUp;->mInstance:Lcom/waze/view/popups/AlerterPopUp;

    invoke-virtual {v5, v6}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 237
    sget-object v5, Lcom/waze/view/popups/AlerterPopUp;->mInstance:Lcom/waze/view/popups/AlerterPopUp;

    const/high16 v6, 0x4348

    const/high16 v7, 0x43c8

    const/16 v8, 0x12c

    invoke-static {v5, v6, v7, v8}, Lcom/waze/view/anim/AnimationUtils;->openAnimateFromPoint(Landroid/view/View;FFI)V

    .line 239
    return-void

    .line 177
    .end local v0           #button:Landroid/view/View;
    .end local v1           #layout:Landroid/widget/RelativeLayout;
    .end local v2           #navBar:Lcom/waze/navbar/NavBar;
    .end local v3           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #topMargin:I
    :cond_2
    const v5, 0x7f090180

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 199
    :cond_3
    const v5, 0x7f090198

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 218
    .restart local v0       #button:Landroid/view/View;
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const v5, 0x7f090197

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 220
    const v5, 0x7f090198

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0202bb

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 221
    const v5, 0x7f090198

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlerterPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "titleStr"
    .parameter "iconName"
    .parameter "distanceStr"

    .prologue
    .line 133
    invoke-direct {p0, p3}, Lcom/waze/view/popups/AlerterPopUp;->setTitle(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p2}, Lcom/waze/view/popups/AlerterPopUp;->setIcon(Ljava/lang/String;)V

    .line 135
    return-void
.end method
