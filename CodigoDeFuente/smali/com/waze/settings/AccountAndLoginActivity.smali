.class public Lcom/waze/settings/AccountAndLoginActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "AccountAndLoginActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;


# instance fields
.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 32
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 33
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/AccountAndLoginActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/waze/settings/AccountAndLoginActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/settings/AccountAndLoginActivity;)Lcom/waze/mywaze/MyWazeNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/settings/AccountAndLoginActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    return-object v0
.end method


# virtual methods
.method public SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V
    .locals 7
    .parameter "Data"

    .prologue
    const v6, 0x7f090046

    const/4 v5, 0x0

    const v1, 0x7f090041

    const v4, 0x7f090042

    .line 136
    iget-object v0, p0, Lcom/waze/settings/AccountAndLoginActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-boolean v0, p1, Lcom/waze/mywaze/MyWazeData;->mFaceBookLoggedIn:Z

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0, v1}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_WAZE_USERNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0, v4}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :goto_0
    iget-boolean v0, p1, Lcom/waze/mywaze/MyWazeData;->mFaceBookLoggedIn:Z

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p0, v6}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CONNECTED_TO_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_1
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0, v1}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TEMPORARY_USER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0, v4}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    invoke-virtual {p0, v4}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOU_ARE_NOT_CONNECTED_TO_WAZE_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0, v1}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_USER_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0, v4}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    invoke-virtual {p0, v4}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/waze/mywaze/MyWazeData;->mJoinedStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0, v6}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CONNECT_TO_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 38
    if-ne p2, v0, :cond_0

    .line 40
    invoke-virtual {p0, v0}, Lcom/waze/settings/AccountAndLoginActivity;->setResult(I)V

    .line 41
    invoke-virtual {p0}, Lcom/waze/settings/AccountAndLoginActivity;->finish()V

    .line 43
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f09004a

    const/16 v7, 0x8

    const v6, 0x7f090045

    .line 48
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->requestWindowFeature(I)Z

    .line 50
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->setContentView(I)V

    .line 52
    iget-object v3, p0, Lcom/waze/settings/AccountAndLoginActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v3, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 54
    const-string v3, "SETTINGS_CLICK"

    const-string v4, "VAUE"

    const-string v5, "ACCOUNT AND LOGIN"

    invoke-static {v3, v4, v5}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const v3, 0x7f09003f

    invoke-virtual {p0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ACCOUNT_AND_SETTINGS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, p0, v4}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 58
    const v3, 0x7f090040

    invoke-virtual {p0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_YOUR_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v3, 0x7f090049

    invoke-virtual {p0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_YOUR_WAZE_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0, v8}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_AN_ACCOUNT_IS_CREATED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v3, 0x7f090044

    invoke-virtual {p0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_USERNAME_AND_PASSWORD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v3, 0x7f090048

    invoke-virtual {p0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "Disconnect phone"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v3, 0x7f09004d

    invoke-virtual {p0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_DELETE_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0, v8}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_AN_ACCOUNT_IS_CREATED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v3, 0x7f09004b

    invoke-virtual {p0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_YOUR_POINTS_RANK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v2, Lcom/waze/settings/AccountAndLoginActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/settings/AccountAndLoginActivity$1;-><init>(Lcom/waze/settings/AccountAndLoginActivity;)V

    .line 81
    .local v2, click3:Landroid/view/View$OnClickListener;
    const v3, 0x7f090047

    invoke-virtual {p0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 90
    const v3, 0x7f09004c

    invoke-virtual {p0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance v0, Lcom/waze/settings/AccountAndLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/waze/settings/AccountAndLoginActivity$2;-><init>(Lcom/waze/settings/AccountAndLoginActivity;)V

    .line 113
    .local v0, click:Landroid/view/View$OnClickListener;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->FacebookEnabledNTV()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {p0, v6}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :goto_0
    const v3, 0x7f090043

    invoke-virtual {p0, v3}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v1, Lcom/waze/settings/AccountAndLoginActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/settings/AccountAndLoginActivity$3;-><init>(Lcom/waze/settings/AccountAndLoginActivity;)V

    .line 131
    .local v1, click2:Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v6}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void

    .line 118
    .end local v1           #click2:Landroid/view/View$OnClickListener;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/waze/settings/AccountAndLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 182
    return-void
.end method

.method public onFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/mywaze/social/FacebookActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.waze.mywaze.facebooksettings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/settings/AccountAndLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    return-void
.end method
