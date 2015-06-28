.class public Lcom/waze/view/popups/UpdateGasPopup;
.super Lcom/waze/view/popups/PopUp;
.source "UpdateGasPopup.java"


# static fields
.field private static mInstance:Lcom/waze/view/popups/UpdateGasPopup;

.field private static mIsShown:Z

.field private static mLayoutManager:Lcom/waze/LayoutManager;

.field private static mTimerSet:Z


# instance fields
.field private NeverShowAgain:Lcom/waze/settings/SettingsCheckboxView;

.field private callback:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/waze/view/popups/UpdateGasPopup;->mIsShown:Z

    .line 23
    sput-boolean v0, Lcom/waze/view/popups/UpdateGasPopup;->mTimerSet:Z

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/view/popups/UpdateGasPopup;->mInstance:Lcom/waze/view/popups/UpdateGasPopup;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 33
    sput-object p2, Lcom/waze/view/popups/UpdateGasPopup;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 34
    invoke-direct {p0}, Lcom/waze/view/popups/UpdateGasPopup;->init()V

    .line 36
    return-void
.end method

.method private OnUpdatePrices()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/waze/view/popups/UpdateGasPopup$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/UpdateGasPopup$1;-><init>(Lcom/waze/view/popups/UpdateGasPopup;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 113
    invoke-virtual {p0}, Lcom/waze/view/popups/UpdateGasPopup;->hide()V

    .line 114
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/UpdateGasPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/waze/view/popups/UpdateGasPopup;->OnUpdatePrices()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/UpdateGasPopup;
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 45
    sget-object v0, Lcom/waze/view/popups/UpdateGasPopup;->mInstance:Lcom/waze/view/popups/UpdateGasPopup;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/waze/view/popups/UpdateGasPopup;

    invoke-direct {v0, p0, p1}, Lcom/waze/view/popups/UpdateGasPopup;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    sput-object v0, Lcom/waze/view/popups/UpdateGasPopup;->mInstance:Lcom/waze/view/popups/UpdateGasPopup;

    .line 48
    :cond_0
    sget-object v0, Lcom/waze/view/popups/UpdateGasPopup;->mInstance:Lcom/waze/view/popups/UpdateGasPopup;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/waze/view/popups/UpdateGasPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03012d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    invoke-virtual {p0}, Lcom/waze/view/popups/UpdateGasPopup;->setUpButtonsTxt()V

    .line 66
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 70
    const v1, 0x7f09019b

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lcom/waze/view/popups/UpdateGasPopup;->mIsShown:Z

    .line 77
    sput-boolean v0, Lcom/waze/view/popups/UpdateGasPopup;->mTimerSet:Z

    .line 78
    sget-object v0, Lcom/waze/view/popups/UpdateGasPopup;->mLayoutManager:Lcom/waze/LayoutManager;

    sget-object v1, Lcom/waze/view/popups/UpdateGasPopup;->mInstance:Lcom/waze/view/popups/UpdateGasPopup;

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 79
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f09019c

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 84
    invoke-virtual {p0}, Lcom/waze/view/popups/UpdateGasPopup;->dismiss()V

    .line 85
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/waze/view/popups/UpdateGasPopup;->hide()V

    .line 42
    return-void
.end method

.method public setCloseTime(I)V
    .locals 5
    .parameter "timer"

    .prologue
    const v4, 0x7f09019c

    .line 89
    sget-boolean v3, Lcom/waze/view/popups/UpdateGasPopup;->mTimerSet:Z

    if-nez v3, :cond_0

    .line 91
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v3}, Lcom/waze/view/timer/TimerView;->setWhiteColor()V

    .line 92
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v3, p1}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 93
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v3}, Lcom/waze/view/timer/TimerView;->start()V

    .line 94
    const/4 v3, 0x1

    sput-boolean v3, Lcom/waze/view/popups/UpdateGasPopup;->mTimerSet:Z

    .line 95
    invoke-virtual {p0}, Lcom/waze/view/popups/UpdateGasPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 96
    .local v2, scale:F
    const v3, 0x7f09019d

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, closeButton:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 98
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/high16 v3, 0x41f0

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .end local v0           #closeButton:Landroid/view/View;
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #scale:F
    :cond_0
    return-void
.end method

.method public setUpButtonsTxt()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UPDATE_PRICES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, UpdatePopUpText:Ljava/lang/String;
    const v1, 0x7f090773

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public show(JJ)V
    .locals 12
    .parameter "cb"
    .parameter "lcontext"

    .prologue
    .line 117
    sget-boolean v0, Lcom/waze/view/popups/UpdateGasPopup;->mIsShown:Z

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/waze/view/popups/UpdateGasPopup;->mInstance:Lcom/waze/view/popups/UpdateGasPopup;

    invoke-virtual {v0}, Lcom/waze/view/popups/UpdateGasPopup;->hide()V

    .line 121
    :cond_0
    iput-wide p1, p0, Lcom/waze/view/popups/UpdateGasPopup;->callback:J

    .line 123
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 124
    new-instance v0, Lcom/waze/view/popups/UpdateGasPopup$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/view/popups/UpdateGasPopup$2;-><init>(Lcom/waze/view/popups/UpdateGasPopup;JJ)V

    .line 123
    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f09019c

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->reset()V

    .line 133
    const v0, 0x7f090772

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 134
    new-instance v0, Lcom/waze/view/popups/UpdateGasPopup$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/view/popups/UpdateGasPopup$3;-><init>(Lcom/waze/view/popups/UpdateGasPopup;JJ)V

    .line 133
    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_GAS_PRICES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waze/view/popups/UpdateGasPopup;->setTitle(Ljava/lang/String;)V

    .line 143
    const v0, 0x7f090771

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 144
    .local v9, textView:Landroid/widget/TextView;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_AT_A_GAS_STATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const v0, 0x7f090774

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsCheckboxView;

    iput-object v0, p0, Lcom/waze/view/popups/UpdateGasPopup;->NeverShowAgain:Lcom/waze/settings/SettingsCheckboxView;

    .line 148
    iget-object v0, p0, Lcom/waze/view/popups/UpdateGasPopup;->NeverShowAgain:Lcom/waze/settings/SettingsCheckboxView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NEVER_ASK_ME_AGAIN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsCheckboxView;->setText(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/waze/view/popups/UpdateGasPopup;->NeverShowAgain:Lcom/waze/settings/SettingsCheckboxView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsCheckboxView;->setValue(Z)V

    .line 152
    iget-object v0, p0, Lcom/waze/view/popups/UpdateGasPopup;->NeverShowAgain:Lcom/waze/settings/SettingsCheckboxView;

    new-instance v1, Lcom/waze/view/popups/UpdateGasPopup$4;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/UpdateGasPopup$4;-><init>(Lcom/waze/view/popups/UpdateGasPopup;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsCheckboxView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    const v0, 0x7f090194

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/UpdateGasPopup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 161
    .local v6, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 162
    .local v8, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->getNavBarManager()Lcom/waze/NavBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NavBarManager;->getNavBar()Lcom/waze/navbar/NavBar;

    move-result-object v7

    .line 163
    .local v7, navBar:Lcom/waze/navbar/NavBar;
    const/4 v10, 0x0

    .line 164
    .local v10, topMargin:I
    if-eqz v7, :cond_1

    .line 165
    invoke-virtual {v7}, Lcom/waze/navbar/NavBar;->getNavBarHeight()I

    move-result v10

    .line 167
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 168
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/view/popups/UpdateGasPopup;->mIsShown:Z

    .line 171
    sget-object v0, Lcom/waze/view/popups/UpdateGasPopup;->mLayoutManager:Lcom/waze/LayoutManager;

    sget-object v1, Lcom/waze/view/popups/UpdateGasPopup;->mInstance:Lcom/waze/view/popups/UpdateGasPopup;

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 173
    return-void
.end method
