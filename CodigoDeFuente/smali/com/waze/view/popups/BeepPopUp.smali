.class public Lcom/waze/view/popups/BeepPopUp;
.super Lcom/waze/view/popups/PopUp;
.source "BeepPopUp.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mLayoutManager:Lcom/waze/LayoutManager;


# instance fields
.field private mIsShown:Z

.field private mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

.field private mUserImageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/view/popups/BeepPopUp;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/view/popups/BeepPopUp;->mUserImageUrl:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/view/popups/BeepPopUp;->mIsShown:Z

    .line 106
    sput-object p1, Lcom/waze/view/popups/BeepPopUp;->mContext:Landroid/content/Context;

    .line 107
    sput-object p2, Lcom/waze/view/popups/BeepPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 108
    invoke-direct {p0}, Lcom/waze/view/popups/BeepPopUp;->init()V

    .line 109
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/BeepPopUp;)Lcom/waze/rtalerts/RTAlertsThumbsUpData;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/view/popups/BeepPopUp;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/popups/BeepPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/waze/view/popups/BeepPopUp;->onReply()V

    return-void
.end method

.method private close()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/waze/view/popups/BeepPopUp;->dismiss()V

    .line 46
    return-void
.end method

.method private fillFrom()V
    .locals 6

    .prologue
    const v3, 0x7f0901bb

    .line 113
    const v2, 0x7f0901bd

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    .local v0, descriptiomLabel:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 115
    iget-object v2, p0, Lcom/waze/view/popups/BeepPopUp;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iget-object v2, v2, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/waze/view/popups/BeepPopUp;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iget v2, v2, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mTime:I

    div-int/lit8 v1, v2, 0x3c

    .line 117
    .local v1, nTime:I
    if-nez v1, :cond_1

    .line 119
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/waze/view/popups/BeepPopUp;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iget v4, v4, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mTime:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SECONDS_AGO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_MINUTES_AGO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private fillPopup()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/waze/view/popups/BeepPopUp;->fillFrom()V

    .line 129
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/waze/view/popups/BeepPopUp;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 84
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030024

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_BEEP_BEEP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, titleTxt:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/waze/view/popups/BeepPopUp;->setTitle(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/waze/view/popups/BeepPopUp;->setButtonText()V

    .line 90
    invoke-direct {p0}, Lcom/waze/view/popups/BeepPopUp;->setButtonActions()V

    .line 92
    return-void
.end method

.method private onReply()V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/waze/view/popups/BeepPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 51
    new-instance v0, Lcom/waze/view/popups/BeepPopUp$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/BeepPopUp$1;-><init>(Lcom/waze/view/popups/BeepPopUp;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method private setButtonActions()V
    .locals 2

    .prologue
    .line 63
    const v0, 0x7f0901be

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/BeepPopUp$2;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/BeepPopUp$2;-><init>(Lcom/waze/view/popups/BeepPopUp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method private setButtonText()V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_BEEP_BACK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, replyButtonTxt:Ljava/lang/String;
    const v1, 0x7f0901bf

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 77
    const v1, 0x7f0901bc

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method private setUpforRTL()V
    .locals 8

    .prologue
    const v7, 0x7f09017d

    const/16 v6, 0x8

    const v4, 0x7f09017b

    const/4 v5, 0x0

    .line 174
    iget-object v3, p0, Lcom/waze/view/popups/BeepPopUp;->mUserImageUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 176
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-virtual {p0, v7}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 178
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    .local v0, Userimg:Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    sget-object v3, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v4, p0, Lcom/waze/view/popups/BeepPopUp;->mUserImageUrl:Ljava/lang/String;

    new-instance v5, Lcom/waze/view/popups/BeepPopUp$3;

    invoke-direct {v5, p0, v0}, Lcom/waze/view/popups/BeepPopUp$3;-><init>(Lcom/waze/view/popups/BeepPopUp;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4, v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 209
    .end local v0           #Userimg:Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-virtual {p0, v7}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 200
    const v3, 0x7f090191

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 201
    .local v2, icon:Landroid/widget/ImageView;
    sget-object v3, Lcom/waze/view/popups/BeepPopUp;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/waze/view/popups/BeepPopUp;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    iget-object v4, v4, Lcom/waze/rtalerts/RTAlertsThumbsUpData;->mMood:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/waze/view/popups/BeepPopUp;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public GetView(Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;)Landroid/view/View;
    .locals 11
    .parameter "thumbsUpData"
    .parameter "UserImageUrl"

    .prologue
    const v7, 0x7f090181

    const-wide v9, 0x4020666666666666L

    const v6, 0x7f090173

    const/4 v8, 0x0

    .line 268
    const-string v4, "BEEP_RECV"

    invoke-static {v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 270
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/waze/view/popups/BeepPopUp;->mIsShown:Z

    .line 271
    iput-object p1, p0, Lcom/waze/view/popups/BeepPopUp;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    .line 272
    iput-object p2, p0, Lcom/waze/view/popups/BeepPopUp;->mUserImageUrl:Ljava/lang/String;

    .line 274
    invoke-direct {p0}, Lcom/waze/view/popups/BeepPopUp;->setUpforRTL()V

    .line 275
    invoke-direct {p0}, Lcom/waze/view/popups/BeepPopUp;->fillPopup()V

    .line 277
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 278
    .local v0, dm:Landroid/util/DisplayMetrics;
    sget-object v4, Lcom/waze/view/popups/BeepPopUp;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 279
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 280
    const v4, 0x7f0901be

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 281
    .local v2, replyButton:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v5, 0x2a8

    if-le v4, v5, :cond_0

    .line 284
    invoke-virtual {p0, v6}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020038

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 285
    const v4, 0x7f02003d

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 286
    invoke-virtual {p0, v7}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 287
    invoke-virtual {p0, v6}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v5

    mul-double/2addr v5, v9

    double-to-int v5, v5

    .line 288
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    .line 287
    invoke-virtual {v4, v5, v8, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 289
    const-wide v4, 0x3ff3333333333333L

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v1, v4, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 301
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    return-object p0

    .line 293
    :cond_0
    invoke-virtual {p0, v7}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 294
    invoke-virtual {p0, v6}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020035

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 295
    const v4, 0x7f0202c9

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 296
    invoke-virtual {p0, v6}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 297
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/view/popups/BeepPopUp;->mIsShown:Z

    .line 40
    sget-object v0, Lcom/waze/view/popups/BeepPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 42
    return-void
.end method

.method public getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 212
    invoke-static {p1, p2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/waze/view/popups/BeepPopUp;->mIsShown:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/waze/view/popups/BeepPopUp;->close()V

    .line 309
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/waze/view/popups/BeepPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 36
    return-void
.end method

.method public show(Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;)V
    .locals 12
    .parameter "thumbsUpData"
    .parameter "UserImageUrl"

    .prologue
    const v7, 0x7f090181

    const-wide v10, 0x4020666666666666L

    const v9, 0x7f0901be

    const v6, 0x7f090173

    const/4 v8, 0x0

    .line 217
    if-nez p1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 219
    :cond_0
    const-string v4, "BEEP_RECV"

    invoke-static {v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 221
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/waze/view/popups/BeepPopUp;->mIsShown:Z

    .line 222
    iput-object p1, p0, Lcom/waze/view/popups/BeepPopUp;->mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;

    .line 223
    iput-object p2, p0, Lcom/waze/view/popups/BeepPopUp;->mUserImageUrl:Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Lcom/waze/view/popups/BeepPopUp;->setUpforRTL()V

    .line 226
    invoke-direct {p0}, Lcom/waze/view/popups/BeepPopUp;->fillPopup()V

    .line 238
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 239
    .local v0, dm:Landroid/util/DisplayMetrics;
    sget-object v4, Lcom/waze/view/popups/BeepPopUp;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 240
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 241
    invoke-virtual {p0, v9}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 242
    .local v2, replyButton:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 244
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v5, 0x2a8

    if-le v4, v5, :cond_1

    .line 245
    invoke-virtual {p0, v6}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020038

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 246
    invoke-virtual {p0, v9}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f02003d

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    invoke-virtual {p0, v7}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 248
    invoke-virtual {p0, v6}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v5

    mul-double/2addr v5, v10

    double-to-int v5, v5

    .line 249
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    mul-double/2addr v6, v10

    double-to-int v6, v6

    .line 248
    invoke-virtual {v4, v5, v8, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 250
    const-wide v4, 0x3ff3333333333333L

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v1, v4, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    invoke-virtual {p0, v9}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    sget-object v4, Lcom/waze/view/popups/BeepPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v4, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    goto/16 :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0, v7}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-virtual {p0, v6}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020035

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 256
    invoke-virtual {p0, v9}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0202c9

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 257
    invoke-virtual {p0, v6}, Lcom/waze/view/popups/BeepPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 258
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method
