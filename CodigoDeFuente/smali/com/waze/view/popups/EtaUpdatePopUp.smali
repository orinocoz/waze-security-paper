.class public Lcom/waze/view/popups/EtaUpdatePopUp;
.super Lcom/waze/view/popups/PopUp;
.source "EtaUpdatePopUp.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/waze/view/popups/EtaUpdatePopUp;

.field private static mIsShown:Z

.field private static mLayoutManager:Lcom/waze/LayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/EtaUpdatePopUp;->mIsShown:Z

    .line 16
    sput-object v1, Lcom/waze/view/popups/EtaUpdatePopUp;->mInstance:Lcom/waze/view/popups/EtaUpdatePopUp;

    .line 17
    sput-object v1, Lcom/waze/view/popups/EtaUpdatePopUp;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 23
    sput-object p1, Lcom/waze/view/popups/EtaUpdatePopUp;->mContext:Landroid/content/Context;

    .line 24
    sput-object p2, Lcom/waze/view/popups/EtaUpdatePopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 25
    invoke-direct {p0}, Lcom/waze/view/popups/EtaUpdatePopUp;->init()V

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/EtaUpdatePopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/waze/view/popups/EtaUpdatePopUp;->onClose()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/EtaUpdatePopUp;
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 35
    sget-object v0, Lcom/waze/view/popups/EtaUpdatePopUp;->mInstance:Lcom/waze/view/popups/EtaUpdatePopUp;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/waze/view/popups/EtaUpdatePopUp;

    invoke-direct {v0, p0, p1}, Lcom/waze/view/popups/EtaUpdatePopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    sput-object v0, Lcom/waze/view/popups/EtaUpdatePopUp;->mInstance:Lcom/waze/view/popups/EtaUpdatePopUp;

    .line 38
    :cond_0
    sget-object v0, Lcom/waze/view/popups/EtaUpdatePopUp;->mInstance:Lcom/waze/view/popups/EtaUpdatePopUp;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/waze/view/popups/EtaUpdatePopUp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 104
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030050

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    const v1, 0x7f090297

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/view/popups/EtaUpdatePopUp$1;

    invoke-direct {v2, p0}, Lcom/waze/view/popups/EtaUpdatePopUp$1;-><init>(Lcom/waze/view/popups/EtaUpdatePopUp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method private onClose()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/waze/view/popups/EtaUpdatePopUp;->hide()V

    .line 97
    return-void
.end method

.method private setCloseTimer(I)V
    .locals 2
    .parameter "iTimeOut"

    .prologue
    const v1, 0x7f090298

    .line 81
    invoke-virtual {p0, v1}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->reset()V

    .line 82
    invoke-virtual {p0, v1}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->setWhiteColor()V

    .line 83
    invoke-virtual {p0, v1}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0, p1}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->start()V

    .line 85
    return-void
.end method

.method private setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "body"

    .prologue
    .line 71
    const v0, 0x7f09029b

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v0, 0x7f09029c

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method private setUpBackground(I)V
    .locals 3
    .parameter "style"

    .prologue
    .line 46
    const v2, 0x7f090294

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 47
    .local v1, infoView:Landroid/widget/RelativeLayout;
    const v2, 0x7f09029a

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    .local v0, iconView:Landroid/widget/ImageView;
    if-nez p1, :cond_0

    .line 58
    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 59
    const v2, 0x7f02013c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 62
    const v2, 0x7f020046

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 63
    const v2, 0x7f02013d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 65
    :cond_1
    const v2, 0x7f020044

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 66
    const v2, 0x7f02013b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setUpTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "titleText"

    .prologue
    .line 42
    const v0, 0x7f090296

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method private stopCloseTimer()V
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f090298

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/EtaUpdatePopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 78
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/EtaUpdatePopUp;->mIsShown:Z

    .line 90
    invoke-direct {p0}, Lcom/waze/view/popups/EtaUpdatePopUp;->stopCloseTimer()V

    .line 91
    sget-object v0, Lcom/waze/view/popups/EtaUpdatePopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 92
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/waze/view/popups/EtaUpdatePopUp;->hide()V

    .line 32
    return-void
.end method

.method public show(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "style"
    .parameter "title"
    .parameter "header"
    .parameter "body"
    .parameter "timeout"

    .prologue
    .line 115
    sget-boolean v0, Lcom/waze/view/popups/EtaUpdatePopUp;->mIsShown:Z

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/waze/view/popups/EtaUpdatePopUp;->mInstance:Lcom/waze/view/popups/EtaUpdatePopUp;

    invoke-virtual {v0}, Lcom/waze/view/popups/EtaUpdatePopUp;->hide()V

    .line 119
    :cond_0
    invoke-direct {p0, p2}, Lcom/waze/view/popups/EtaUpdatePopUp;->setUpTitle(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/waze/view/popups/EtaUpdatePopUp;->setUpBackground(I)V

    .line 121
    invoke-direct {p0, p3, p4}, Lcom/waze/view/popups/EtaUpdatePopUp;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/view/popups/EtaUpdatePopUp;->mIsShown:Z

    .line 124
    sget-object v0, Lcom/waze/view/popups/EtaUpdatePopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 125
    invoke-direct {p0, p5}, Lcom/waze/view/popups/EtaUpdatePopUp;->setCloseTimer(I)V

    .line 128
    new-instance v0, Lcom/waze/view/popups/EtaUpdatePopUp$2;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/EtaUpdatePopUp$2;-><init>(Lcom/waze/view/popups/EtaUpdatePopUp;)V

    .line 135
    const-wide/16 v1, 0x1

    .line 128
    invoke-virtual {p0, v0, v1, v2}, Lcom/waze/view/popups/EtaUpdatePopUp;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method
