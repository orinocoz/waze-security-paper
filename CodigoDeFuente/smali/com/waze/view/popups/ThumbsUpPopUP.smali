.class public Lcom/waze/view/popups/ThumbsUpPopUP;
.super Lcom/waze/view/popups/PopUp;
.source "ThumbsUpPopUP.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/waze/view/popups/ThumbsUpPopUP;

.field private static mIsShown:Z

.field private static mLayoutManager:Lcom/waze/LayoutManager;

.field private static mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;


# instance fields
.field private mUserImageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mIsShown:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/view/popups/ThumbsUpPopUP;->mUserImageUrl:Ljava/lang/String;

    .line 108
    sput-object p1, Lcom/waze/view/popups/ThumbsUpPopUP;->mContext:Landroid/content/Context;

    .line 109
    sput-object p2, Lcom/waze/view/popups/ThumbsUpPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 110
    return-void
.end method

.method static synthetic access$0()Lcom/waze/rtalerts/RTAlertsThumbsUpData;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/popups/ThumbsUpPopUP;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->onReply()V

    return-void
.end method

.method private close()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->dismiss()V

    .line 39
    return-void
.end method

.method private fillFrom()V
    .locals 2

    .prologue
    .line 125
    const v1, 0x7f090187

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    .local v0, descriptiomLabel:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 127
    sget-object v1, Lcom/waze/view/popups/ThumbsUpPopUP;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iget-object v1, v1, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    return-void
.end method

.method private fillOrigAlertDesc()V
    .locals 2

    .prologue
    .line 131
    const v1, 0x7f09017f

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .local v0, reLabel:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/waze/view/popups/ThumbsUpPopUP;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iget-object v1, v1, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mOrigAlertDescrition:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 133
    sget-object v1, Lcom/waze/view/popups/ThumbsUpPopUP;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iget-object v1, v1, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mOrigAlertDescrition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    return-void
.end method

.method private fillPopup()V
    .locals 5

    .prologue
    const v2, 0x7f090175

    .line 137
    invoke-direct {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->fillOrigAlertDesc()V

    .line 138
    invoke-direct {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->fillFrom()V

    .line 140
    sget-object v1, Lcom/waze/view/popups/ThumbsUpPopUP;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iget v1, v1, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mTime:I

    div-int/lit8 v0, v1, 0x3c

    .line 141
    .local v0, nTime:I
    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0, v2}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/waze/view/popups/ThumbsUpPopUP;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iget v3, v3, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mTime:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SECONDS_AGO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0, v2}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/waze/view/popups/ThumbsUpPopUP;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iget v3, v3, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mTime:I

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_MINUTES_AGO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/ThumbsUpPopUP;
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 98
    sget-object v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mInstance:Lcom/waze/view/popups/ThumbsUpPopUP;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/waze/view/popups/ThumbsUpPopUP;

    invoke-direct {v0, p0, p1}, Lcom/waze/view/popups/ThumbsUpPopUP;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    sput-object v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mInstance:Lcom/waze/view/popups/ThumbsUpPopUP;

    .line 100
    sget-object v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mInstance:Lcom/waze/view/popups/ThumbsUpPopUP;

    invoke-direct {v0}, Lcom/waze/view/popups/ThumbsUpPopUP;->init()V

    .line 102
    :cond_0
    sget-object v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mInstance:Lcom/waze/view/popups/ThumbsUpPopUP;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 86
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03011b

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 88
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_THANKS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, titleTxt:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/waze/view/popups/ThumbsUpPopUP;->setTitle(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->setButtonText()V

    .line 92
    invoke-direct {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->setButtonActions()V

    .line 94
    return-void
.end method

.method private onCLose()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->close()V

    .line 48
    return-void
.end method

.method private onReply()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 53
    new-instance v0, Lcom/waze/view/popups/ThumbsUpPopUP$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/ThumbsUpPopUP$1;-><init>(Lcom/waze/view/popups/ThumbsUpPopUP;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method private setButtonActions()V
    .locals 2

    .prologue
    .line 65
    const v0, 0x7f09018b

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/ThumbsUpPopUP$2;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/ThumbsUpPopUP$2;-><init>(Lcom/waze/view/popups/ThumbsUpPopUP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method private setButtonText()V
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_REPLY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, replyButtonTxt:Ljava/lang/String;
    const v1, 0x7f09018d

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method private setCLoseTimer(I)V
    .locals 2
    .parameter "iTimeOut"

    .prologue
    const v1, 0x7f09019c

    .line 118
    invoke-virtual {p0, v1}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->reset()V

    .line 119
    invoke-virtual {p0, v1}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0, p1}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->setWhiteColor()V

    .line 121
    invoke-virtual {p0, v1}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->start()V

    .line 122
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 79
    const v1, 0x7f09017e

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method private setUpforRTL()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const v5, 0x7f090184

    .line 153
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 154
    .local v0, UserImage:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :cond_0
    iget-object v4, p0, Lcom/waze/view/popups/ThumbsUpPopUP;->mUserImageUrl:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 159
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 161
    .local v1, Userimg:Landroid/widget/ImageView;
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    sget-object v4, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v5, p0, Lcom/waze/view/popups/ThumbsUpPopUP;->mUserImageUrl:Ljava/lang/String;

    new-instance v6, Lcom/waze/view/popups/ThumbsUpPopUP$3;

    invoke-direct {v6, p0, v1}, Lcom/waze/view/popups/ThumbsUpPopUP$3;-><init>(Lcom/waze/view/popups/ThumbsUpPopUP;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5, v6}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 187
    :goto_0
    return-void

    .line 177
    .end local v1           #Userimg:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 178
    .restart local v1       #Userimg:Landroid/widget/ImageView;
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    const v4, 0x7f090183

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 182
    .local v3, icon:Landroid/widget/ImageView;
    sget-object v4, Lcom/waze/view/popups/ThumbsUpPopUP;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/waze/view/popups/ThumbsUpPopUP;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iget-object v5, v5, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mMood:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/waze/view/popups/ThumbsUpPopUP;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 183
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private stopCloseTimer()V
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f09019c

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 115
    return-void
.end method


# virtual methods
.method public GetView(Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "thumbsUpData"
    .parameter "UserImageUrl"

    .prologue
    const/high16 v6, 0x4140

    const v4, 0x7f090173

    const/4 v5, 0x0

    .line 209
    const/4 v2, 0x1

    sput-boolean v2, Lcom/waze/view/popups/ThumbsUpPopUP;->mIsShown:Z

    .line 210
    sput-object p1, Lcom/waze/view/popups/ThumbsUpPopUP;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    .line 211
    iput-object p2, p0, Lcom/waze/view/popups/ThumbsUpPopUP;->mUserImageUrl:Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->setUpforRTL()V

    .line 214
    invoke-direct {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->fillPopup()V

    .line 216
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 217
    .local v0, dm:Landroid/util/DisplayMetrics;
    sget-object v2, Lcom/waze/view/popups/ThumbsUpPopUP;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 218
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 220
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x2a8

    if-le v2, v3, :cond_0

    .line 222
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020038

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 223
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 231
    :goto_0
    return-object p0

    .line 227
    :cond_0
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 228
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/ThumbsUpPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mIsShown:Z

    .line 34
    sget-object v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 35
    return-void
.end method

.method public getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 189
    invoke-static {p1, p2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 236
    sget-boolean v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mIsShown:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->close()V

    .line 238
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 43
    return-void
.end method

.method public show(Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;)V
    .locals 1
    .parameter "thumbsUpData"
    .parameter "UserImageUrl"

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mIsShown:Z

    .line 198
    sput-object p1, Lcom/waze/view/popups/ThumbsUpPopUP;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    .line 199
    iput-object p2, p0, Lcom/waze/view/popups/ThumbsUpPopUP;->mUserImageUrl:Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->setUpforRTL()V

    .line 202
    invoke-direct {p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->fillPopup()V

    .line 204
    sget-object v0, Lcom/waze/view/popups/ThumbsUpPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 205
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/waze/view/popups/ThumbsUpPopUP;->setCLoseTimer(I)V

    goto :goto_0
.end method
