.class public Lcom/waze/social/KeepYourFriendsDialog;
.super Landroid/app/Dialog;
.source "KeepYourFriendsDialog.java"


# instance fields
.field private mActivity:Lcom/waze/ifs/ui/ActivityBase;

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mFud:Lcom/waze/user/FriendUserData;

.field private mImageResource:I

.field private mNatMgr:Lcom/waze/NativeManager;

.field private mOnGetStarted:Landroid/view/View$OnClickListener;

.field private mShowAgain:Z

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;Ljava/lang/String;ILcom/waze/user/FriendUserData;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "act"
    .parameter "title"
    .parameter "text"
    .parameter "imageResource"
    .parameter "fud"
    .parameter "onGetStarted"

    .prologue
    .line 48
    const v0, 0x7f060058

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 49
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mNatMgr:Lcom/waze/NativeManager;

    .line 50
    iput-object p1, p0, Lcom/waze/social/KeepYourFriendsDialog;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    .line 51
    iput-object p2, p0, Lcom/waze/social/KeepYourFriendsDialog;->mTitle:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/waze/social/KeepYourFriendsDialog;->mText:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/waze/social/KeepYourFriendsDialog;->mImageResource:I

    .line 54
    iput-object p6, p0, Lcom/waze/social/KeepYourFriendsDialog;->mOnGetStarted:Landroid/view/View$OnClickListener;

    .line 55
    iput-object p5, p0, Lcom/waze/social/KeepYourFriendsDialog;->mFud:Lcom/waze/user/FriendUserData;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/waze/social/KeepYourFriendsDialog;)Lcom/waze/user/FriendUserData;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mFud:Lcom/waze/user/FriendUserData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/social/KeepYourFriendsDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mOnGetStarted:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/social/KeepYourFriendsDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/waze/social/KeepYourFriendsDialog;->mShowAgain:Z

    return-void
.end method

.method static synthetic access$3(Lcom/waze/social/KeepYourFriendsDialog;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mShowAgain:Z

    return v0
.end method

.method static synthetic access$4(Lcom/waze/social/KeepYourFriendsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public animate(II)V
    .locals 18
    .parameter "x"
    .parameter "y"

    .prologue
    .line 171
    const v4, 0x7f090362

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 172
    .local v16, dialog:Landroid/view/View;
    const v4, 0x7f090361

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 174
    .local v14, bg:Landroid/view/View;
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 175
    .local v12, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 176
    invoke-virtual {v14, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v13, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 181
    .local v13, as:Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3c23d70a

    const/high16 v3, 0x3f80

    const v4, 0x3c23d70a

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    .line 182
    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    .line 181
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 183
    .local v1, sa:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 184
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 185
    invoke-virtual {v13, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 188
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/high16 v3, -0x3fc0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    .line 189
    const/high16 v8, 0x3f00

    .line 188
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 190
    .local v2, ra:Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 191
    new-instance v4, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 192
    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 194
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 195
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v17, v0

    .line 196
    .local v17, location:[I
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 197
    const/4 v4, 0x0

    aget v5, v17, v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    aput v5, v17, v4

    .line 198
    const/4 v4, 0x1

    aget v5, v17, v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    aput v5, v17, v4

    .line 200
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v17, v5

    sub-int v5, p1, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    .line 201
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget v9, v17, v9

    sub-int v9, p2, v9

    int-to-float v9, v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 200
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 202
    .local v3, ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 203
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    invoke-virtual {v13, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 207
    .end local v3           #ta:Landroid/view/animation/TranslateAnimation;
    .end local v17           #location:[I
    :cond_1
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    .end local v12           #aa:Landroid/view/animation/AlphaAnimation;
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 208
    .restart local v12       #aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x64

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 209
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 211
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    const v4, 0x7f09036b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 214
    .local v15, close:Landroid/view/View;
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    .end local v12           #aa:Landroid/view/animation/AlphaAnimation;
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 215
    .restart local v12       #aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x12c

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 216
    const-wide/16 v4, 0x1f4

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 217
    invoke-virtual {v15, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 218
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    .line 226
    const v2, 0x7f090361

    invoke-virtual {p0, v2}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, bg:Landroid/view/View;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 228
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 230
    new-instance v2, Lcom/waze/social/KeepYourFriendsDialog$6;

    invoke-direct {v2, p0}, Lcom/waze/social/KeepYourFriendsDialog$6;-><init>(Lcom/waze/social/KeepYourFriendsDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 244
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    return-void
.end method

.method public dismissNow()V
    .locals 0

    .prologue
    .line 221
    #calls: Landroid/app/Dialog;->dismiss()V
    invoke-static {p0}, Lcom/waze/social/KeepYourFriendsDialog;->access$4(Lcom/waze/social/KeepYourFriendsDialog;)V

    .line 222
    return-void
.end method

.method public initLayout()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 65
    const v0, 0x7f030070

    invoke-virtual {p0, v0}, Lcom/waze/social/KeepYourFriendsDialog;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/waze/social/KeepYourFriendsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 68
    const v0, 0x7f090368

    invoke-virtual {p0, v0}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 70
    .local v8, illustration:Landroid/widget/ImageView;
    const v0, 0x7f090366

    invoke-virtual {p0, v0}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/social/KeepYourFriendsDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x7f090367

    invoke-virtual {p0, v0}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/social/KeepYourFriendsDialog;->mText:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mImageResource:I

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    const v0, 0x7f090369

    invoke-virtual {p0, v0}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 75
    .local v7, getStartedButton:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mFud:Lcom/waze/user/FriendUserData;

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_GET_STARTED_BUTTON:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    new-instance v0, Lcom/waze/social/KeepYourFriendsDialog$1;

    invoke-direct {v0, p0}, Lcom/waze/social/KeepYourFriendsDialog$1;-><init>(Lcom/waze/social/KeepYourFriendsDialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v6, Lcom/waze/social/KeepYourFriendsDialog$2;

    invoke-direct {v6, p0}, Lcom/waze/social/KeepYourFriendsDialog$2;-><init>(Lcom/waze/social/KeepYourFriendsDialog;)V

    .line 111
    .local v6, closeClick:Landroid/view/View$OnClickListener;
    const v0, 0x7f09036b

    invoke-virtual {p0, v0}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f090361

    invoke-virtual {p0, v0}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f090362

    invoke-virtual {p0, v0}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/waze/social/KeepYourFriendsDialog$3;

    invoke-direct {v4, p0}, Lcom/waze/social/KeepYourFriendsDialog$3;-><init>(Lcom/waze/social/KeepYourFriendsDialog;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f09036a

    invoke-virtual {p0, v0}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mCheckBox:Landroid/widget/CompoundButton;

    .line 120
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mCheckBox:Landroid/widget/CompoundButton;

    iget-object v4, p0, Lcom/waze/social/KeepYourFriendsDialog;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_DONT_SHOW_AGAIN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, p0, Lcom/waze/social/KeepYourFriendsDialog;->mCheckBox:Landroid/widget/CompoundButton;

    iget-boolean v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mShowAgain:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mCheckBox:Landroid/widget/CompoundButton;

    new-instance v4, Lcom/waze/social/KeepYourFriendsDialog$4;

    invoke-direct {v4, p0}, Lcom/waze/social/KeepYourFriendsDialog$4;-><init>(Lcom/waze/social/KeepYourFriendsDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mFud:Lcom/waze/user/FriendUserData;

    if-eqz v0, :cond_0

    .line 143
    const v0, 0x7f090364

    invoke-virtual {p0, v0}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    const v0, 0x7f090365

    invoke-virtual {p0, v0}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 145
    .local v3, iv:Landroid/widget/ImageView;
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v1, p0, Lcom/waze/social/KeepYourFriendsDialog;->mFud:Lcom/waze/user/FriendUserData;

    invoke-virtual {v1}, Lcom/waze/user/FriendUserData;->getImage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/waze/social/KeepYourFriendsDialog;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual/range {v0 .. v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 146
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mCheckBox:Landroid/widget/CompoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 148
    .end local v3           #iv:Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 78
    .end local v6           #closeClick:Landroid/view/View$OnClickListener;
    :cond_1
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SEND_ETA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .restart local v6       #closeClick:Landroid/view/View$OnClickListener;
    :cond_2
    move v0, v2

    .line 121
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/waze/social/KeepYourFriendsDialog;->initLayout()V

    .line 62
    return-void
.end method

.method public setShowAgain(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/waze/social/KeepYourFriendsDialog;->mShowAgain:Z

    .line 253
    iget-object v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mCheckBox:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/waze/social/KeepYourFriendsDialog;->mCheckBox:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 256
    :cond_0
    return-void

    .line 254
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldShowAgain()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/waze/social/KeepYourFriendsDialog;->mShowAgain:Z

    return v0
.end method

.method public show(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 153
    iget-object v1, p0, Lcom/waze/social/KeepYourFriendsDialog;->mFud:Lcom/waze/user/FriendUserData;

    if-nez v1, :cond_0

    .line 154
    const-string v1, "SHARE_DRIVE_ETA_TIP_SHOWN"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 159
    :goto_0
    const v1, 0x7f090362

    invoke-virtual {p0, v1}, Lcom/waze/social/KeepYourFriendsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, dialog:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/waze/social/KeepYourFriendsDialog$5;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/waze/social/KeepYourFriendsDialog$5;-><init>(Lcom/waze/social/KeepYourFriendsDialog;Landroid/view/View;II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 168
    return-void

    .line 156
    .end local v0           #dialog:Landroid/view/View;
    :cond_0
    const-string v1, "SHARE_LOCATION_BACK_SHOWN"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
