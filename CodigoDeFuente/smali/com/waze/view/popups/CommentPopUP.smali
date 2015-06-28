.class public Lcom/waze/view/popups/CommentPopUP;
.super Lcom/waze/view/popups/PopUp;
.source "CommentPopUP.java"


# instance fields
.field private mCommentData:Lcom/waze/rtalerts/RTAlertsCommentData;

.field private mContext:Landroid/content/Context;

.field private mLayoutManager:Lcom/waze/LayoutManager;

.field private mUserImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/view/popups/CommentPopUP;->mContext:Landroid/content/Context;

    .line 104
    iput-object p1, p0, Lcom/waze/view/popups/CommentPopUP;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/waze/view/popups/CommentPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 106
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/CommentPopUP;)Lcom/waze/rtalerts/RTAlertsCommentData;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/waze/view/popups/CommentPopUP;->mCommentData:Lcom/waze/rtalerts/RTAlertsCommentData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/popups/CommentPopUP;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/waze/view/popups/CommentPopUP;->onReply()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/view/popups/CommentPopUP;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/waze/view/popups/CommentPopUP;->onFlag()V

    return-void
.end method

.method private fillDescription()V
    .locals 3

    .prologue
    .line 115
    const v1, 0x7f0901bb

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    const v1, 0x7f09051e

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    .local v0, descriptiomLabel:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/waze/view/popups/CommentPopUP;->mCommentData:Lcom/waze/rtalerts/RTAlertsCommentData;

    iget-object v1, v1, Lcom/waze/rtalerts/RTAlertsCommentData;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method private fillFrom()V
    .locals 9

    .prologue
    const v8, 0x7f09017d

    const/16 v7, 0x8

    const v5, 0x7f09017b

    const/4 v6, 0x0

    .line 122
    const v4, 0x7f090187

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    .local v1, descriptiomLabel:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/waze/view/popups/CommentPopUP;->mCommentData:Lcom/waze/rtalerts/RTAlertsCommentData;

    iget-object v4, v4, Lcom/waze/rtalerts/RTAlertsCommentData;->mReportedBy:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v4, p0, Lcom/waze/view/popups/CommentPopUP;->mUserImageUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-virtual {p0, v8}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    .local v0, Userimg:Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    sget-object v4, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v5, p0, Lcom/waze/view/popups/CommentPopUP;->mUserImageUrl:Ljava/lang/String;

    new-instance v6, Lcom/waze/view/popups/CommentPopUP$5;

    invoke-direct {v6, p0, v0}, Lcom/waze/view/popups/CommentPopUP$5;-><init>(Lcom/waze/view/popups/CommentPopUP;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5, v6}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 159
    .end local v0           #Userimg:Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {p0, v8}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 151
    const v4, 0x7f090191

    invoke-virtual {p0, v4}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 152
    .local v3, icon:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/waze/view/popups/CommentPopUP;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/waze/view/popups/CommentPopUP;->mCommentData:Lcom/waze/rtalerts/RTAlertsCommentData;

    iget-object v5, v5, Lcom/waze/rtalerts/RTAlertsCommentData;->mMood:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/waze/view/popups/CommentPopUP;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 153
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private fillOrigAlertDesc()V
    .locals 4

    .prologue
    .line 165
    const v1, 0x7f090565

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    .local v0, reLabel:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/waze/view/popups/CommentPopUP;->mCommentData:Lcom/waze/rtalerts/RTAlertsCommentData;

    iget-object v1, v1, Lcom/waze/rtalerts/RTAlertsCommentData;->mOrigAlertDescrition:Ljava/lang/String;

    const-string v2, ",  "

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method private fillPopup()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/waze/view/popups/CommentPopUP;->fillOrigAlertDesc()V

    .line 171
    invoke-direct {p0}, Lcom/waze/view/popups/CommentPopUP;->fillDescription()V

    .line 172
    invoke-direct {p0}, Lcom/waze/view/popups/CommentPopUP;->fillFrom()V

    .line 173
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/waze/view/popups/CommentPopUP;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 92
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0300bf

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 95
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_REPLY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, titleTxt:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/waze/view/popups/CommentPopUP;->setTitle(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/waze/view/popups/CommentPopUP;->setButtonText()V

    .line 98
    invoke-direct {p0}, Lcom/waze/view/popups/CommentPopUP;->setButtonActions()V

    .line 100
    return-void
.end method

.method private onCLose()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/waze/view/popups/CommentPopUP;->hide()V

    .line 41
    return-void
.end method

.method private onFlag()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/waze/view/popups/CommentPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 56
    new-instance v0, Lcom/waze/view/popups/CommentPopUP$2;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/CommentPopUP$2;-><init>(Lcom/waze/view/popups/CommentPopUP;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method private onReply()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/waze/view/popups/CommentPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 46
    new-instance v0, Lcom/waze/view/popups/CommentPopUP$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/CommentPopUP$1;-><init>(Lcom/waze/view/popups/CommentPopUP;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method private setButtonActions()V
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f0901be

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/CommentPopUP$3;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/CommentPopUP$3;-><init>(Lcom/waze/view/popups/CommentPopUP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f090520

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/CommentPopUP$4;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/CommentPopUP$4;-><init>(Lcom/waze/view/popups/CommentPopUP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method private setButtonText()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_REPLY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, replyButtonTxt:Ljava/lang/String;
    const v1, 0x7f0901bf

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 86
    const v1, 0x7f0901bc

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method


# virtual methods
.method public GetView(Lcom/waze/rtalerts/RTAlertsCommentData;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "commentsData"
    .parameter "UserImageUrl"

    .prologue
    const/high16 v6, 0x4140

    const v4, 0x7f090173

    const/4 v5, 0x0

    .line 190
    invoke-direct {p0}, Lcom/waze/view/popups/CommentPopUP;->init()V

    .line 192
    iput-object p2, p0, Lcom/waze/view/popups/CommentPopUP;->mUserImageUrl:Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lcom/waze/view/popups/CommentPopUP;->mCommentData:Lcom/waze/rtalerts/RTAlertsCommentData;

    .line 194
    invoke-direct {p0}, Lcom/waze/view/popups/CommentPopUP;->fillPopup()V

    .line 196
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 197
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/waze/view/popups/CommentPopUP;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 198
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 200
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x2a8

    if-le v2, v3, :cond_0

    .line 202
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020038

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 203
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 211
    :goto_0
    return-object p0

    .line 207
    :cond_0
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/CommentPopUP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/waze/view/popups/CommentPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 31
    return-void
.end method

.method public getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 161
    invoke-static {p1, p2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/waze/view/popups/CommentPopUP;->dismiss()V

    .line 36
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/waze/view/popups/CommentPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 187
    return-void
.end method

.method public show(Lcom/waze/rtalerts/RTAlertsCommentData;Ljava/lang/String;)V
    .locals 1
    .parameter "commentsData"
    .parameter "UserImageUrl"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/waze/view/popups/CommentPopUP;->init()V

    .line 178
    iput-object p2, p0, Lcom/waze/view/popups/CommentPopUP;->mUserImageUrl:Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/waze/view/popups/CommentPopUP;->mCommentData:Lcom/waze/rtalerts/RTAlertsCommentData;

    .line 180
    invoke-direct {p0}, Lcom/waze/view/popups/CommentPopUP;->fillPopup()V

    .line 182
    iget-object v0, p0, Lcom/waze/view/popups/CommentPopUP;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 183
    return-void
.end method
