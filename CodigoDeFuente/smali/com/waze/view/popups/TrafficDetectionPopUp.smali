.class public Lcom/waze/view/popups/TrafficDetectionPopUp;
.super Lcom/waze/view/popups/PopUp;
.source "TrafficDetectionPopUp.java"


# static fields
.field private static mInstance:Lcom/waze/view/popups/TrafficDetectionPopUp;

.field private static mIsShown:Z

.field private static mLayoutManager:Lcom/waze/LayoutManager;


# instance fields
.field private final TRAFFIC_VALUE_NO:I

.field private final TRAFFIC_VALUE_NO_ANSWER:I

.field private final TRAFFIC_VALUE_YES:I

.field private isClosureEnabled:Z

.field private isFoursquareEnabled:Z

.field private isRandomUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/TrafficDetectionPopUp;->mIsShown:Z

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/view/popups/TrafficDetectionPopUp;->mInstance:Lcom/waze/view/popups/TrafficDetectionPopUp;

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;ZZZ)V
    .locals 1
    .parameter "context"
    .parameter "layoutManager"
    .parameter "isRandomUser"
    .parameter "isFoursquareEnabled"
    .parameter "isClosureEnabled"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/view/popups/TrafficDetectionPopUp;->TRAFFIC_VALUE_NO:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/waze/view/popups/TrafficDetectionPopUp;->TRAFFIC_VALUE_YES:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/waze/view/popups/TrafficDetectionPopUp;->TRAFFIC_VALUE_NO_ANSWER:I

    .line 37
    sput-object p2, Lcom/waze/view/popups/TrafficDetectionPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 38
    iput-boolean p3, p0, Lcom/waze/view/popups/TrafficDetectionPopUp;->isRandomUser:Z

    .line 39
    iput-boolean p4, p0, Lcom/waze/view/popups/TrafficDetectionPopUp;->isFoursquareEnabled:Z

    .line 40
    iput-boolean p5, p0, Lcom/waze/view/popups/TrafficDetectionPopUp;->isClosureEnabled:Z

    .line 41
    invoke-direct {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/TrafficDetectionPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->onClose()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/view/popups/TrafficDetectionPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->onYes()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/view/popups/TrafficDetectionPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->onNo()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;ZZZ)Lcom/waze/view/popups/TrafficDetectionPopUp;
    .locals 6
    .parameter "context"
    .parameter "layoutManager"
    .parameter "isRandomUser"
    .parameter "isFoursquareEnabled"
    .parameter "isClosureEnabled"

    .prologue
    .line 52
    sget-object v0, Lcom/waze/view/popups/TrafficDetectionPopUp;->mInstance:Lcom/waze/view/popups/TrafficDetectionPopUp;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/waze/view/popups/TrafficDetectionPopUp;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/view/popups/TrafficDetectionPopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;ZZZ)V

    sput-object v0, Lcom/waze/view/popups/TrafficDetectionPopUp;->mInstance:Lcom/waze/view/popups/TrafficDetectionPopUp;

    .line 55
    :cond_0
    sget-object v0, Lcom/waze/view/popups/TrafficDetectionPopUp;->mInstance:Lcom/waze/view/popups/TrafficDetectionPopUp;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 152
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030128

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 154
    invoke-direct {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->setUpButtonsTxt()V

    .line 155
    invoke-direct {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->setUpTitle()V

    .line 156
    invoke-direct {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->setUpforRTL()V

    .line 157
    invoke-direct {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->setAdditionalText()V

    .line 159
    const v1, 0x7f090032

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 160
    new-instance v2, Lcom/waze/view/popups/TrafficDetectionPopUp$4;

    invoke-direct {v2, p0}, Lcom/waze/view/popups/TrafficDetectionPopUp$4;-><init>(Lcom/waze/view/popups/TrafficDetectionPopUp;)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v1, 0x7f090755

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 167
    new-instance v2, Lcom/waze/view/popups/TrafficDetectionPopUp$5;

    invoke-direct {v2, p0}, Lcom/waze/view/popups/TrafficDetectionPopUp$5;-><init>(Lcom/waze/view/popups/TrafficDetectionPopUp;)V

    .line 166
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v1, 0x7f090753

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 174
    new-instance v2, Lcom/waze/view/popups/TrafficDetectionPopUp$6;

    invoke-direct {v2, p0}, Lcom/waze/view/popups/TrafficDetectionPopUp$6;-><init>(Lcom/waze/view/popups/TrafficDetectionPopUp;)V

    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method private onClose()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/waze/view/popups/TrafficDetectionPopUp$3;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/TrafficDetectionPopUp$3;-><init>(Lcom/waze/view/popups/TrafficDetectionPopUp;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->hide()V

    .line 130
    return-void
.end method

.method private onNo()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/waze/view/popups/TrafficDetectionPopUp$2;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/TrafficDetectionPopUp$2;-><init>(Lcom/waze/view/popups/TrafficDetectionPopUp;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->hide()V

    .line 120
    return-void
.end method

.method private onYes()V
    .locals 4

    .prologue
    .line 102
    new-instance v0, Lcom/waze/view/popups/TrafficDetectionPopUp$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/TrafficDetectionPopUp$1;-><init>(Lcom/waze/view/popups/TrafficDetectionPopUp;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->hide()V

    .line 109
    sget-object v0, Lcom/waze/view/popups/TrafficDetectionPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    iget-boolean v1, p0, Lcom/waze/view/popups/TrafficDetectionPopUp;->isRandomUser:Z

    iget-boolean v2, p0, Lcom/waze/view/popups/TrafficDetectionPopUp;->isFoursquareEnabled:Z

    iget-boolean v3, p0, Lcom/waze/view/popups/TrafficDetectionPopUp;->isClosureEnabled:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/LayoutManager;->showTrafficJamReport(ZZZ)V

    .line 110
    return-void
.end method

.method private setAdditionalText()V
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_WESRE_DETECTING_A_SLOW_DOWN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, text1:Ljava/lang/String;
    const v2, 0x7f090750

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_IN_TRAFFICQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, text2:Ljava/lang/String;
    const v2, 0x7f090751

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method private setCLoseTimer(I)V
    .locals 2
    .parameter "iTimeOut"

    .prologue
    const v1, 0x7f09019c

    .line 89
    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->reset()V

    .line 90
    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->setWhiteColor()V

    .line 91
    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0, p1}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->start()V

    .line 93
    return-void
.end method

.method private setUpButtonsTxt()V
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, yesButtonTxt:Ljava/lang/String;
    const v2, 0x7f090756

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, noButtonTxt:Ljava/lang/String;
    const v2, 0x7f090754

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method private setUpTitle()V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TRAFFICQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, titleText:Ljava/lang/String;
    const v1, 0x7f09074f

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method private setUpforRTL()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 133
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const v2, 0x7f090750

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    .local v0, addText1:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 140
    const v2, 0x7f090751

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 141
    .local v1, addText2:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    .end local v0           #addText1:Landroid/widget/TextView;
    .end local v1           #addText2:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private stopCloseTimer()V
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f09019c

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 86
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/TrafficDetectionPopUp;->mIsShown:Z

    .line 97
    invoke-direct {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->stopCloseTimer()V

    .line 98
    sget-object v0, Lcom/waze/view/popups/TrafficDetectionPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 99
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->hide()V

    .line 49
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 183
    sget-boolean v4, Lcom/waze/view/popups/TrafficDetectionPopUp;->mIsShown:Z

    if-eqz v4, :cond_0

    .line 184
    sget-object v4, Lcom/waze/view/popups/TrafficDetectionPopUp;->mInstance:Lcom/waze/view/popups/TrafficDetectionPopUp;

    invoke-virtual {v4}, Lcom/waze/view/popups/TrafficDetectionPopUp;->hide()V

    .line 187
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    const v4, 0x7f09074c

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/TrafficDetectionPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 190
    .local v0, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 191
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/NativeManager;->getNavBarManager()Lcom/waze/NavBarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/NavBarManager;->getNavBar()Lcom/waze/navbar/NavBar;

    move-result-object v1

    .line 192
    .local v1, navBar:Lcom/waze/navbar/NavBar;
    const/4 v3, 0x0

    .line 193
    .local v3, topMargin:I
    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1}, Lcom/waze/navbar/NavBar;->getNavBarHeight()I

    move-result v3

    .line 196
    :cond_1
    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 197
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .end local v0           #layout:Landroid/widget/RelativeLayout;
    .end local v1           #navBar:Lcom/waze/navbar/NavBar;
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #topMargin:I
    :cond_2
    const/4 v4, 0x1

    sput-boolean v4, Lcom/waze/view/popups/TrafficDetectionPopUp;->mIsShown:Z

    .line 200
    sget-object v4, Lcom/waze/view/popups/TrafficDetectionPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v4, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 201
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lcom/waze/view/popups/TrafficDetectionPopUp;->setCLoseTimer(I)V

    .line 202
    return-void
.end method
