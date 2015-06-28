.class public Lcom/waze/install/InstallPickAccountActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "InstallPickAccountActivity.java"


# instance fields
.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 21
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/waze/install/InstallPickAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/waze/install/InstallPickAccountActivity;->onDestroy()V

    return-void
.end method


# virtual methods
.method public SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V
    .locals 5
    .parameter "Data"

    .prologue
    .line 82
    iget-object v1, p1, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_0

    .line 84
    iget-object v1, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TEMPORARY_USER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    .line 87
    :cond_0
    const v1, 0x7f090356

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallPickAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/waze/mywaze/MyWazeData;->mPts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_POINTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_RANK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    iget v3, p1, Lcom/waze/mywaze/MyWazeData;->mRank:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_LAST_LOGIN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TODAY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyConflictingUserData()Lcom/waze/mywaze/MyWazeData;

    move-result-object v0

    .line 92
    .local v0, myConflictingUser:Lcom/waze/mywaze/MyWazeData;
    iget-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_1

    .line 94
    iget-object v1, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TEMPORARY_USER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    .line 97
    :cond_1
    const v1, 0x7f090359

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallPickAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/waze/mywaze/MyWazeData;->mPts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_POINTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_RANK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    iget v3, v0, Lcom/waze/mywaze/MyWazeData;->mRank:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/waze/mywaze/MyWazeData;->mLastSeen:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->facebookDisconnectNow()V

    .line 104
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/waze/social/facebook/FacebookWrapper;->logout(Landroid/app/Activity;Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;)V

    .line 106
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 107
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f090337

    .line 26
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f03006e

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallPickAccountActivity;->setContentView(I)V

    .line 29
    const v1, 0x7f09033e

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallPickAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PICK_YOUR_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0, v4}, Lcom/waze/install/InstallPickAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    iget-object v2, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 33
    new-instance v0, Lcom/waze/install/InstallPickAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/install/InstallPickAccountActivity$1;-><init>(Lcom/waze/install/InstallPickAccountActivity;)V

    .line 41
    .local v0, Click:Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v4}, Lcom/waze/install/InstallPickAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    invoke-virtual {v1, v0}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x7f090348

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallPickAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_YOUR_CREDENTIALS_ARE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v1, 0x7f090354

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallPickAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_CUREENT_USER_ON:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const v1, 0x7f090357

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallPickAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_OTHER_USER_FOUND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v1, 0x7f09035a

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallPickAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/install/InstallPickAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_WE_RECOMMEND_CONNECTION_TO_YOUR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v1, 0x7f090355

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallPickAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/install/InstallPickAccountActivity$2;

    invoke-direct {v2, p0}, Lcom/waze/install/InstallPickAccountActivity$2;-><init>(Lcom/waze/install/InstallPickAccountActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f090358

    invoke-virtual {p0, v1}, Lcom/waze/install/InstallPickAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/install/InstallPickAccountActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/install/InstallPickAccountActivity$3;-><init>(Lcom/waze/install/InstallPickAccountActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 78
    return-void
.end method
