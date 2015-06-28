.class public Lcom/waze/install/InstallFacebookPrivacyActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "InstallFacebookPrivacyActivity.java"


# instance fields
.field private bIsFof:Z

.field private isNew:Z

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/install/InstallFacebookPrivacyActivity;->bIsFof:Z

    .line 32
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/install/InstallFacebookPrivacyActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/waze/install/InstallFacebookPrivacyActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/waze/install/InstallFacebookPrivacyActivity;->isNew:Z

    return v0
.end method


# virtual methods
.method public SetMoodInView()V
    .locals 2

    .prologue
    .line 145
    const v0, 0x7f090347

    invoke-virtual {p0, v0}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/waze/MoodManager;->getInstance()Lcom/waze/MoodManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    return-void
.end method

.method public SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V
    .locals 3
    .parameter "Data"

    .prologue
    .line 133
    const v1, 0x7f0901bc

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/waze/mywaze/MyWazeData;->mJoinedStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const v1, 0x7f090345

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/waze/mywaze/MyWazeData;->mFaceBookNickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v1, 0x7f090343

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 141
    .local v0, picture:Landroid/widget/ImageView;
    sget-object v1, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v2, p1, Lcom/waze/mywaze/MyWazeData;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 142
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 129
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/waze/social/facebook/FacebookWrapper;->logout(Landroid/app/Activity;Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;)V

    .line 151
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->facebookDisconnectNow()V

    .line 152
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 153
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f09033d

    const v8, 0x7f090337

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/waze/install/InstallFacebookPrivacyActivity;->requestWindowFeature(I)Z

    .line 39
    const v3, 0x7f03006c

    invoke-virtual {p0, v3}, Lcom/waze/install/InstallFacebookPrivacyActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/waze/install/InstallFacebookPrivacyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isNew"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/waze/install/InstallFacebookPrivacyActivity;->isNew:Z

    .line 42
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsMinimalInstallation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    iget-boolean v3, p0, Lcom/waze/install/InstallFacebookPrivacyActivity;->isNew:Z

    if-eqz v3, :cond_0

    .line 46
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 47
    const-string v4, "THIS_IS_YOU_NEW"

    .line 46
    invoke-virtual {v3, v4, v5, v5, v7}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    :goto_0
    const v3, 0x7f090347

    invoke-virtual {p0, v3}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {}, Lcom/waze/MoodManager;->getInstance()Lcom/waze/MoodManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const v3, 0x7f09033e

    invoke-virtual {p0, v3}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/install/InstallFacebookPrivacyActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_FRIENDS_SEE_YOUR_FULL_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v3, 0x7f09033f

    invoke-virtual {p0, v3}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/install/InstallFacebookPrivacyActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_OTHERS_SEE_YOUR_NICKNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0, v8}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    iget-object v4, p0, Lcom/waze/install/InstallFacebookPrivacyActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_THIS_IS_YOU:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/install/InstallFacebookPrivacyActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v5}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v8}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    invoke-virtual {v3}, Lcom/waze/view/title/TitleBar;->setUpButtonDisabled()V

    .line 77
    new-instance v0, Lcom/waze/install/InstallFacebookPrivacyActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/install/InstallFacebookPrivacyActivity$1;-><init>(Lcom/waze/install/InstallFacebookPrivacyActivity;)V

    .line 106
    .local v0, Click:Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v8}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    invoke-virtual {v3, v0}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v3, 0x7f090348

    invoke-virtual {p0, v3}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/install/InstallFacebookPrivacyActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SEE_MORE_FAMILIAR_FACES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v3, 0x7f090349

    invoke-virtual {p0, v3}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/install/InstallFacebookPrivacyActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_MAKE_IT_MORE_FUN_TO_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_YOU_HAVE_FRIENDS_CONNECTED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, FriendsConnectedTxt:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriends()I

    move-result v2

    .line 114
    .local v2, nFriendsConnected:I
    if-lez v2, :cond_3

    .line 116
    invoke-virtual {p0, v9}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    invoke-virtual {p0, v9}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_1
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 125
    return-void

    .line 51
    .end local v0           #Click:Landroid/view/View$OnClickListener;
    .end local v1           #FriendsConnectedTxt:Ljava/lang/String;
    .end local v2           #nFriendsConnected:I
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 52
    const-string v4, "THIS_IS_YOU_EXISTING"

    .line 51
    invoke-virtual {v3, v4, v5, v5, v7}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 58
    :cond_1
    iget-boolean v3, p0, Lcom/waze/install/InstallFacebookPrivacyActivity;->isNew:Z

    if-eqz v3, :cond_2

    .line 59
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 60
    const-string v4, "THIS_IS_YOU_NEW"

    .line 59
    invoke-virtual {v3, v4, v5, v5, v7}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 62
    :cond_2
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 63
    const-string v4, "THIS_IS_YOU_EXISTING"

    .line 62
    invoke-virtual {v3, v4, v5, v5, v7}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 121
    .restart local v0       #Click:Landroid/view/View$OnClickListener;
    .restart local v1       #FriendsConnectedTxt:Ljava/lang/String;
    .restart local v2       #nFriendsConnected:I
    :cond_3
    invoke-virtual {p0, v9}, Lcom/waze/install/InstallFacebookPrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
