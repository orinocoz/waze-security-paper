.class public Lcom/waze/view/popups/SharePopup;
.super Lcom/waze/view/popups/PopUp;
.source "SharePopup.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mLayoutManager:Lcom/waze/LayoutManager;


# instance fields
.field private mIsShown:Z

.field private mLocationText:Ljava/lang/String;

.field private mMeetingID:Ljava/lang/String;

.field private mType:I

.field private mUser:Lcom/waze/user/UserData;

.field private mUserImageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/view/popups/SharePopup;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 2
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 31
    iput-object v0, p0, Lcom/waze/view/popups/SharePopup;->mMeetingID:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/waze/view/popups/SharePopup;->mUserImageUrl:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/waze/view/popups/SharePopup;->mIsShown:Z

    .line 35
    iput v1, p0, Lcom/waze/view/popups/SharePopup;->mType:I

    .line 36
    iput-object v0, p0, Lcom/waze/view/popups/SharePopup;->mLocationText:Ljava/lang/String;

    .line 128
    sput-object p1, Lcom/waze/view/popups/SharePopup;->mContext:Landroid/content/Context;

    .line 129
    sput-object p2, Lcom/waze/view/popups/SharePopup;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 130
    invoke-direct {p0}, Lcom/waze/view/popups/SharePopup;->init()V

    .line 131
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/SharePopup;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/waze/view/popups/SharePopup;->mMeetingID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/popups/SharePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/waze/view/popups/SharePopup;->onReply()V

    return-void
.end method

.method private close()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/waze/view/popups/SharePopup;->dismiss()V

    .line 50
    return-void
.end method

.method private fillFrom()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    .line 135
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    .line 136
    .local v3, nm:Lcom/waze/NativeManager;
    const v5, 0x7f0901bd

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 137
    .local v1, descriptiomLabel:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 139
    iget-object v5, p0, Lcom/waze/view/popups/SharePopup;->mUser:Lcom/waze/user/UserData;

    if-eqz v5, :cond_2

    .line 141
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SENT_FROM_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/waze/view/popups/SharePopup;->mUser:Lcom/waze/user/UserData;

    iget-object v8, v8, Lcom/waze/user/UserData;->mNickName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, fromTxt:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .end local v2           #fromTxt:Ljava/lang/String;
    :cond_0
    :goto_0
    const v5, 0x7f09051e

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    .local v0, descLabel:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 151
    iget-object v5, p0, Lcom/waze/view/popups/SharePopup;->mLocationText:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_1
    const v5, 0x7f0901bb

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    const/4 v4, 0x0

    .line 165
    .local v4, titleTxt:Ljava/lang/String;
    iget v5, p0, Lcom/waze/view/popups/SharePopup;->mType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 167
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_IM_ON_MY_WAY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 173
    :goto_1
    invoke-direct {p0, v4}, Lcom/waze/view/popups/SharePopup;->setTitle(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/waze/view/popups/SharePopup;->setButtonText()V

    .line 176
    invoke-direct {p0}, Lcom/waze/view/popups/SharePopup;->setButtonActions()V

    .line 177
    return-void

    .line 146
    .end local v0           #descLabel:Landroid/widget/TextView;
    .end local v4           #titleTxt:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 171
    .restart local v0       #descLabel:Landroid/widget/TextView;
    .restart local v4       #titleTxt:Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_NEW_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private fillPopup()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/waze/view/popups/SharePopup;->fillFrom()V

    .line 181
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/waze/view/popups/SharePopup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 112
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03010a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 114
    return-void
.end method

.method private onReply()V
    .locals 3

    .prologue
    .line 53
    const-string v0, "POPUP_CLICK"

    .line 54
    const-string v1, "VAUE"

    .line 55
    const-string v2, "SHARED_DRIVE"

    .line 53
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/waze/view/popups/SharePopup;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 59
    new-instance v0, Lcom/waze/view/popups/SharePopup$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/SharePopup$1;-><init>(Lcom/waze/view/popups/SharePopup;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method private setButtonActions()V
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f0901be

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/SharePopup$2;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/SharePopup$2;-><init>(Lcom/waze/view/popups/SharePopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method private setButtonText()V
    .locals 4

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, replyButtonTxt:Ljava/lang/String;
    const v2, 0x7f090189

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, Icon:Landroid/widget/ImageView;
    iget v2, p0, Lcom/waze/view/popups/SharePopup;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 93
    const v2, 0x7f020434

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_VIEW_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 101
    :goto_0
    const v2, 0x7f0901bf

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void

    .line 98
    :cond_0
    const v2, 0x7f020435

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_VIEW_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 105
    const v1, 0x7f0901bc

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method private setUpforRTL()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const v6, 0x7f09017d

    const v4, 0x7f09017b

    const/4 v5, 0x0

    .line 226
    iget-object v3, p0, Lcom/waze/view/popups/SharePopup;->mUserImageUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 229
    invoke-virtual {p0, v6}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 230
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 232
    .local v0, Userimg:Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    sget-object v3, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v4, p0, Lcom/waze/view/popups/SharePopup;->mUserImageUrl:Ljava/lang/String;

    new-instance v5, Lcom/waze/view/popups/SharePopup$3;

    invoke-direct {v5, p0, v0}, Lcom/waze/view/popups/SharePopup$3;-><init>(Lcom/waze/view/popups/SharePopup;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4, v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 269
    .end local v0           #Userimg:Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-virtual {p0, v6}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 252
    const v3, 0x7f090191

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 253
    .local v2, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/waze/view/popups/SharePopup;->mUser:Lcom/waze/user/UserData;

    if-eqz v3, :cond_1

    .line 255
    sget-object v3, Lcom/waze/view/popups/SharePopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/waze/view/popups/SharePopup;->mUser:Lcom/waze/user/UserData;

    iget-object v4, v4, Lcom/waze/user/UserData;->mMood:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/waze/view/popups/SharePopup;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 256
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {p0, v6}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public GetView(Lcom/waze/user/UserData;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 11
    .parameter "thumbsUpData"
    .parameter "nType"
    .parameter "MeetingID"
    .parameter "LocationText"

    .prologue
    .line 332
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/waze/view/popups/SharePopup;->mIsShown:Z

    .line 333
    iput-object p1, p0, Lcom/waze/view/popups/SharePopup;->mUser:Lcom/waze/user/UserData;

    .line 334
    iget-object v4, p0, Lcom/waze/view/popups/SharePopup;->mUser:Lcom/waze/user/UserData;

    if-eqz v4, :cond_0

    .line 336
    iget-object v4, p0, Lcom/waze/view/popups/SharePopup;->mUser:Lcom/waze/user/UserData;

    invoke-virtual {v4}, Lcom/waze/user/UserData;->getImage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/view/popups/SharePopup;->mUserImageUrl:Ljava/lang/String;

    .line 342
    :goto_0
    iput p2, p0, Lcom/waze/view/popups/SharePopup;->mType:I

    .line 343
    iput-object p3, p0, Lcom/waze/view/popups/SharePopup;->mMeetingID:Ljava/lang/String;

    .line 344
    iput-object p4, p0, Lcom/waze/view/popups/SharePopup;->mLocationText:Ljava/lang/String;

    .line 346
    invoke-direct {p0}, Lcom/waze/view/popups/SharePopup;->setUpforRTL()V

    .line 347
    invoke-direct {p0}, Lcom/waze/view/popups/SharePopup;->fillPopup()V

    .line 349
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 350
    .local v0, dm:Landroid/util/DisplayMetrics;
    sget-object v4, Lcom/waze/view/popups/SharePopup;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 351
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 352
    const v4, 0x7f0901be

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 353
    .local v2, replyButton:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 355
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v5, 0x2a8

    if-le v4, v5, :cond_1

    .line 356
    const v4, 0x7f090173

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020038

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 357
    const v4, 0x7f0901be

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f02003d

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 358
    const v4, 0x7f090181

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 359
    const v4, 0x7f090173

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-wide v5, 0x4020666666666666L

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    const/4 v6, 0x0

    .line 360
    const-wide v7, 0x4020666666666666L

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    const/4 v8, 0x0

    .line 359
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 361
    const-wide v4, 0x3ff3333333333333L

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 362
    const v4, 0x7f0901be

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    return-object p0

    .line 340
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #replyButton:Landroid/view/View;
    .end local v3           #wm:Landroid/view/WindowManager;
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/waze/view/popups/SharePopup;->mUserImageUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 364
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2       #replyButton:Landroid/view/View;
    .restart local v3       #wm:Landroid/view/WindowManager;
    :cond_1
    const v4, 0x7f090181

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 365
    const v4, 0x7f090173

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020035

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 366
    const v4, 0x7f0901be

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0202c9

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 367
    const v4, 0x7f090173

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 368
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/view/popups/SharePopup;->mIsShown:Z

    .line 44
    sget-object v0, Lcom/waze/view/popups/SharePopup;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 46
    return-void
.end method

.method public getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 272
    invoke-static {p1, p2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/waze/view/popups/SharePopup;->mIsShown:Z

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/waze/view/popups/SharePopup;->close()V

    .line 379
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/waze/view/popups/SharePopup;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 40
    return-void
.end method

.method public show(Lcom/waze/user/UserData;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "thumbsUpData"
    .parameter "nType"
    .parameter "MeetingID"
    .parameter "LocationText"

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 280
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/waze/view/popups/SharePopup;->mIsShown:Z

    .line 281
    iput-object p1, p0, Lcom/waze/view/popups/SharePopup;->mUser:Lcom/waze/user/UserData;

    .line 282
    iput p2, p0, Lcom/waze/view/popups/SharePopup;->mType:I

    .line 283
    iput-object p3, p0, Lcom/waze/view/popups/SharePopup;->mMeetingID:Ljava/lang/String;

    .line 284
    iput-object p4, p0, Lcom/waze/view/popups/SharePopup;->mLocationText:Ljava/lang/String;

    .line 286
    invoke-direct {p0}, Lcom/waze/view/popups/SharePopup;->setUpforRTL()V

    .line 287
    invoke-direct {p0}, Lcom/waze/view/popups/SharePopup;->fillPopup()V

    .line 299
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 300
    .local v0, dm:Landroid/util/DisplayMetrics;
    sget-object v4, Lcom/waze/view/popups/SharePopup;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 301
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 302
    const v4, 0x7f0901be

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 303
    .local v2, replyButton:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 305
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v5, 0x2a8

    if-le v4, v5, :cond_1

    .line 307
    const v4, 0x7f090173

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020038

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 308
    const v4, 0x7f0901be

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f02003d

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 309
    const v4, 0x7f090181

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 310
    const v4, 0x7f090173

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-wide v5, 0x4020666666666666L

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    const/4 v6, 0x0

    .line 311
    const-wide v7, 0x4020666666666666L

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    const/4 v8, 0x0

    .line 310
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 312
    const-wide v4, 0x3ff3333333333333L

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 313
    const v4, 0x7f0901be

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    sget-object v4, Lcom/waze/view/popups/SharePopup;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v4, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    goto/16 :goto_0

    .line 317
    :cond_1
    const v4, 0x7f090181

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 318
    const v4, 0x7f090173

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020035

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 319
    const v4, 0x7f0901be

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0202c9

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 320
    const v4, 0x7f090173

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/SharePopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 321
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method
