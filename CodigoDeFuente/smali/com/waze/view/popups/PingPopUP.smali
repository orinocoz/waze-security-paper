.class public Lcom/waze/view/popups/PingPopUP;
.super Lcom/waze/view/popups/PopUp;
.source "PingPopUP.java"


# instance fields
.field private mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

.field private mContext:Landroid/content/Context;

.field private mIsPrivatePing:Z

.field private mLayoutManager:Lcom/waze/LayoutManager;

.field private mUserImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/view/popups/PingPopUP;->mContext:Landroid/content/Context;

    .line 117
    iput-object p1, p0, Lcom/waze/view/popups/PingPopUP;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/waze/view/popups/PingPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 120
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/PingPopUP;)Lcom/waze/rtalerts/RTAlertsAlertData;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/waze/view/popups/PingPopUP;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/popups/PingPopUP;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/waze/view/popups/PingPopUP;->onReply()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/view/popups/PingPopUP;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/waze/view/popups/PingPopUP;->onFlag()V

    return-void
.end method

.method private fillDescription()V
    .locals 2

    .prologue
    .line 123
    const v1, 0x7f09051e

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    .local v0, descriptiomLabel:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/waze/view/popups/PingPopUP;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget-object v1, v1, Lcom/waze/rtalerts/RTAlertsAlertData;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method private fillFrom()V
    .locals 2

    .prologue
    .line 131
    const v1, 0x7f090187

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .local v0, descriptiomLabel:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/waze/view/popups/PingPopUP;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget-object v1, v1, Lcom/waze/rtalerts/RTAlertsAlertData;->mReportedBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method private fillPopup()V
    .locals 8

    .prologue
    const v7, 0x7f09017d

    const/16 v6, 0x8

    const v4, 0x7f09017b

    const/4 v5, 0x0

    .line 136
    invoke-direct {p0}, Lcom/waze/view/popups/PingPopUP;->fillDescription()V

    .line 137
    invoke-direct {p0}, Lcom/waze/view/popups/PingPopUP;->fillFrom()V

    .line 139
    iget-object v3, p0, Lcom/waze/view/popups/PingPopUP;->mUserImageUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 142
    invoke-virtual {p0, v7}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 145
    .local v0, Userimg:Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    sget-object v3, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v4, p0, Lcom/waze/view/popups/PingPopUP;->mUserImageUrl:Ljava/lang/String;

    new-instance v5, Lcom/waze/view/popups/PingPopUP$5;

    invoke-direct {v5, p0, v0}, Lcom/waze/view/popups/PingPopUP$5;-><init>(Lcom/waze/view/popups/PingPopUP;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4, v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 175
    .end local v0           #Userimg:Landroid/widget/ImageView;
    :goto_0
    const v3, 0x7f0901bb

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/view/popups/PingPopUP;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget-object v4, v4, Lcom/waze/rtalerts/RTAlertsAlertData;->mTimeRelative:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {p0, v7}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const v3, 0x7f090191

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 166
    .local v2, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/waze/view/popups/PingPopUP;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/waze/view/popups/PingPopUP;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget-object v4, v4, Lcom/waze/rtalerts/RTAlertsAlertData;->mMoodName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/waze/view/popups/PingPopUP;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 167
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/waze/view/popups/PingPopUP;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 97
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0300ae

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    iget-boolean v2, p0, Lcom/waze/view/popups/PingPopUP;->mIsPrivatePing:Z

    if-eqz v2, :cond_0

    .line 101
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_INCOMING_MESSAGE___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, titleTxt:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v1}, Lcom/waze/view/popups/PingPopUP;->setTitle(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/waze/view/popups/PingPopUP;->setButtonText()V

    .line 111
    invoke-direct {p0}, Lcom/waze/view/popups/PingPopUP;->setButtonActions()V

    .line 113
    return-void

    .line 105
    .end local v1           #titleTxt:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_INCOMING_PING___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #titleTxt:Ljava/lang/String;
    goto :goto_0
.end method

.method private onCLose()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/waze/view/popups/PingPopUP;->hide()V

    .line 42
    return-void
.end method

.method private onFlag()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/waze/view/popups/PingPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 58
    new-instance v0, Lcom/waze/view/popups/PingPopUP$2;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/PingPopUP$2;-><init>(Lcom/waze/view/popups/PingPopUP;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method private onReply()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/waze/view/popups/PingPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 47
    new-instance v0, Lcom/waze/view/popups/PingPopUP$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/PingPopUP$1;-><init>(Lcom/waze/view/popups/PingPopUP;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method private setButtonActions()V
    .locals 2

    .prologue
    .line 69
    const v0, 0x7f0901be

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/PingPopUP$3;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/PingPopUP$3;-><init>(Lcom/waze/view/popups/PingPopUP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f090520

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/PingPopUP$4;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/PingPopUP$4;-><init>(Lcom/waze/view/popups/PingPopUP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method private setButtonText()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_REPLY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, replyButtonTxt:Ljava/lang/String;
    const v1, 0x7f0901bf

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 89
    const v1, 0x7f0901bc

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method


# virtual methods
.method public GetView(Lcom/waze/rtalerts/RTAlertsAlertData;ZLjava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "alertData"
    .parameter "bIsPrivatePing"
    .parameter "sUserImageUrl"

    .prologue
    const/high16 v6, 0x4140

    const v4, 0x7f090173

    const/4 v5, 0x0

    .line 233
    iput-boolean p2, p0, Lcom/waze/view/popups/PingPopUP;->mIsPrivatePing:Z

    .line 234
    invoke-direct {p0}, Lcom/waze/view/popups/PingPopUP;->init()V

    .line 236
    iput-object p3, p0, Lcom/waze/view/popups/PingPopUP;->mUserImageUrl:Ljava/lang/String;

    .line 237
    iput-object p1, p0, Lcom/waze/view/popups/PingPopUP;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    .line 238
    invoke-direct {p0}, Lcom/waze/view/popups/PingPopUP;->fillPopup()V

    .line 240
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 241
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/waze/view/popups/PingPopUP;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 242
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 244
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x2a8

    if-le v2, v3, :cond_0

    .line 246
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020038

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 255
    :goto_0
    return-object p0

    .line 251
    :cond_0
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/waze/view/popups/PingPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 33
    return-void
.end method

.method public getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 179
    invoke-static {p1, p2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/waze/view/popups/PingPopUP;->dismiss()V

    .line 37
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/waze/view/popups/PingPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 230
    return-void
.end method

.method public show(Lcom/waze/rtalerts/RTAlertsAlertData;ZLjava/lang/String;)V
    .locals 11
    .parameter "alertData"
    .parameter "bIsPrivatePing"
    .parameter "sUserImageUrl"

    .prologue
    const/high16 v10, 0x4140

    const v8, 0x7f090173

    const/4 v9, 0x0

    .line 183
    iput-boolean p2, p0, Lcom/waze/view/popups/PingPopUP;->mIsPrivatePing:Z

    .line 184
    invoke-direct {p0}, Lcom/waze/view/popups/PingPopUP;->init()V

    .line 186
    iput-object p3, p0, Lcom/waze/view/popups/PingPopUP;->mUserImageUrl:Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lcom/waze/view/popups/PingPopUP;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    .line 188
    invoke-direct {p0}, Lcom/waze/view/popups/PingPopUP;->fillPopup()V

    .line 190
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 191
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/waze/view/popups/PingPopUP;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 192
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 194
    invoke-virtual {p0, v8}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 195
    .local v1, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 196
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/waze/NativeManager;->getNavBarManager()Lcom/waze/NavBarManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/waze/NavBarManager;->getNavBar()Lcom/waze/navbar/NavBar;

    move-result-object v2

    .line 197
    .local v2, navBar:Lcom/waze/navbar/NavBar;
    const/4 v4, 0x0

    .line 198
    .local v4, topMargin:I
    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v2}, Lcom/waze/navbar/NavBar;->getNavBarHeight()I

    move-result v4

    .line 201
    :cond_0
    invoke-virtual {v3, v9, v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 202
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v7, 0x2a8

    if-le v6, v7, :cond_1

    .line 206
    invoke-virtual {p0, v8}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f020038

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 207
    invoke-virtual {p0, v8}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v10

    float-to-int v8, v8

    invoke-virtual {v6, v7, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 225
    :goto_0
    iget-object v6, p0, Lcom/waze/view/popups/PingPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v6, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 226
    return-void

    .line 211
    :cond_1
    invoke-virtual {p0, v8}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f020035

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 212
    invoke-virtual {p0, v8}, Lcom/waze/view/popups/PingPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
