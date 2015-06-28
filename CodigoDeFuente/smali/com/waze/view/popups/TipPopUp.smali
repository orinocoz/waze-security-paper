.class public Lcom/waze/view/popups/TipPopUp;
.super Lcom/waze/view/popups/PopUp;
.source "TipPopUp.java"


# static fields
.field private static mInstance:Lcom/waze/view/popups/TipPopUp;

.field private static mIsShown:Z

.field private static mLayoutManager:Lcom/waze/LayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/TipPopUp;->mIsShown:Z

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/view/popups/TipPopUp;->mInstance:Lcom/waze/view/popups/TipPopUp;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 27
    sput-object p2, Lcom/waze/view/popups/TipPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 28
    invoke-direct {p0}, Lcom/waze/view/popups/TipPopUp;->init()V

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/TipPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/waze/view/popups/TipPopUp;->onClose()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/TipPopUp;
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 33
    sget-object v0, Lcom/waze/view/popups/TipPopUp;->mInstance:Lcom/waze/view/popups/TipPopUp;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/waze/view/popups/TipPopUp;

    invoke-direct {v0, p0, p1}, Lcom/waze/view/popups/TipPopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    sput-object v0, Lcom/waze/view/popups/TipPopUp;->mInstance:Lcom/waze/view/popups/TipPopUp;

    .line 36
    :cond_0
    sget-object v0, Lcom/waze/view/popups/TipPopUp;->mInstance:Lcom/waze/view/popups/TipPopUp;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/waze/view/popups/TipPopUp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03011e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    invoke-direct {p0}, Lcom/waze/view/popups/TipPopUp;->setUpButtonsTxt()V

    .line 75
    invoke-direct {p0}, Lcom/waze/view/popups/TipPopUp;->setUpforRTL()V

    .line 77
    const v1, 0x7f090032

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 78
    new-instance v2, Lcom/waze/view/popups/TipPopUp$1;

    invoke-direct {v2, p0}, Lcom/waze/view/popups/TipPopUp$1;-><init>(Lcom/waze/view/popups/TipPopUp;)V

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method private onClose()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/waze/view/popups/TipPopUp;->hide()V

    .line 51
    return-void
.end method

.method private setLongTipText(Ljava/lang/String;)V
    .locals 1
    .parameter "tipText"

    .prologue
    .line 109
    const v0, 0x7f090732

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method private setLongTitleText(Ljava/lang/String;)V
    .locals 1
    .parameter "titleTxt"

    .prologue
    .line 104
    const v0, 0x7f09072e

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method private setRightTipText(Ljava/lang/String;)V
    .locals 1
    .parameter "tipText"

    .prologue
    .line 100
    const v0, 0x7f090739

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method private setRightTitleText(Ljava/lang/String;)V
    .locals 1
    .parameter "titleTxt"

    .prologue
    .line 95
    const v0, 0x7f090735

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method private setTipText(Ljava/lang/String;)V
    .locals 1
    .parameter "tipText"

    .prologue
    .line 91
    const v0, 0x7f09072b

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method private setTitleText(Ljava/lang/String;)V
    .locals 1
    .parameter "titleTxt"

    .prologue
    .line 86
    const v0, 0x7f09072a

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method private setUpButtonsTxt()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method private setUpforRTL()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 54
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const v2, 0x7f09072b

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, addText2:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    const v2, 0x7f09072a

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    .end local v0           #addText2:Landroid/widget/TextView;
    .end local v1           #title:Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/waze/view/popups/TipPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/TipPopUp;->mIsShown:Z

    .line 46
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/waze/view/popups/TipPopUp;->hide()V

    .line 115
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .parameter "title"
    .parameter "tipText"
    .parameter "alignToRight"
    .parameter "icon"

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x0

    const/16 v5, 0x8

    const v4, 0x7f090737

    const v3, 0x7f090730

    .line 118
    sget-boolean v1, Lcom/waze/view/popups/TipPopUp;->mIsShown:Z

    if-eqz v1, :cond_0

    .line 119
    sget-object v1, Lcom/waze/view/popups/TipPopUp;->mInstance:Lcom/waze/view/popups/TipPopUp;

    invoke-virtual {v1}, Lcom/waze/view/popups/TipPopUp;->hide()V

    .line 122
    :cond_0
    if-eqz p3, :cond_2

    .line 123
    const v1, 0x7f090728

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 124
    const v1, 0x7f090733

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-direct {p0, p1}, Lcom/waze/view/popups/TipPopUp;->setRightTitleText(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p2}, Lcom/waze/view/popups/TipPopUp;->setRightTipText(Ljava/lang/String;)V

    .line 127
    const v1, 0x7f090734

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 128
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :goto_0
    const v1, 0x7f090736

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 134
    new-instance v2, Lcom/waze/view/popups/TipPopUp$2;

    invoke-direct {v2, p0}, Lcom/waze/view/popups/TipPopUp$2;-><init>(Lcom/waze/view/popups/TipPopUp;)V

    .line 133
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->reset()V

    .line 141
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->setWhiteColor()V

    .line 142
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1, v7}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 143
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->start()V

    .line 171
    .end local v0           #iv:Landroid/widget/ImageView;
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/waze/view/popups/TipPopUp;->mIsShown:Z

    .line 172
    sget-object v1, Lcom/waze/view/popups/TipPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v1, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 173
    invoke-virtual {p0}, Lcom/waze/view/popups/TipPopUp;->bringToFront()V

    .line 175
    if-eqz p3, :cond_4

    .line 176
    sget-object v1, Lcom/waze/view/popups/TipPopUp;->mInstance:Lcom/waze/view/popups/TipPopUp;

    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x12c

    invoke-static {v1, v2, v3, v4}, Lcom/waze/view/anim/AnimationUtils;->openAnimateFromPoint(Landroid/view/View;FFI)V

    .line 180
    :goto_2
    return-void

    .line 131
    .restart local v0       #iv:Landroid/widget/ImageView;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 146
    .end local v0           #iv:Landroid/widget/ImageView;
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_3

    .line 148
    const v1, 0x7f090728

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 149
    const v1, 0x7f090733

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 150
    const v1, 0x7f09072d

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 151
    invoke-direct {p0, p1}, Lcom/waze/view/popups/TipPopUp;->setLongTitleText(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p2}, Lcom/waze/view/popups/TipPopUp;->setLongTipText(Ljava/lang/String;)V

    .line 154
    const v1, 0x7f09072f

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 155
    new-instance v2, Lcom/waze/view/popups/TipPopUp$3;

    invoke-direct {v2, p0}, Lcom/waze/view/popups/TipPopUp$3;-><init>(Lcom/waze/view/popups/TipPopUp;)V

    .line 154
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->reset()V

    .line 162
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->setWhiteColor()V

    .line 163
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1, v7}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 164
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/TipPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->start()V

    goto/16 :goto_1

    .line 168
    :cond_3
    invoke-direct {p0, p1}, Lcom/waze/view/popups/TipPopUp;->setTitleText(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p2}, Lcom/waze/view/popups/TipPopUp;->setTipText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 178
    :cond_4
    sget-object v1, Lcom/waze/view/popups/TipPopUp;->mInstance:Lcom/waze/view/popups/TipPopUp;

    const/4 v2, 0x0

    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x12c

    invoke-static {v1, v2, v3, v4}, Lcom/waze/view/anim/AnimationUtils;->openAnimateFromPoint(Landroid/view/View;FFI)V

    goto/16 :goto_2
.end method
