.class public Lcom/waze/mywaze/social/FacebookActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "FacebookActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;


# static fields
.field public static INTENT_FROM_WHERE:Ljava/lang/String;

.field private static activeInstance:Lcom/waze/mywaze/social/FacebookActivity;


# instance fields
.field private buttonTitles:[Ljava/lang/String;

.field private connectButton:Landroid/widget/Button;

.field private connected:Z

.field private modified:Z

.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/mywaze/social/FacebookActivity;->activeInstance:Lcom/waze/mywaze/social/FacebookActivity;

    .line 31
    const-string v0, "INTENT_FROM_WHERE"

    sput-object v0, Lcom/waze/mywaze/social/FacebookActivity;->INTENT_FROM_WHERE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/mywaze/social/FacebookActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/waze/mywaze/social/FacebookActivity;->onLogin()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/mywaze/social/FacebookActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/waze/mywaze/social/FacebookActivity;->connected:Z

    return v0
.end method

.method private onLogin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-boolean v0, p0, Lcom/waze/mywaze/social/FacebookActivity;->connected:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->facebookDisconnect()V

    .line 130
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/waze/social/facebook/FacebookWrapper;->logout(Landroid/app/Activity;Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v0, "FACEBOOK_CONNECT_CLICK"

    const-string v1, "VAUE"

    const-string v2, "SETTINGS_SCREEN"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v3, v1}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    goto :goto_0
.end method

.method public static refreshStatus(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 48
    sget-object v0, Lcom/waze/mywaze/social/FacebookActivity;->activeInstance:Lcom/waze/mywaze/social/FacebookActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/mywaze/social/FacebookActivity;->activeInstance:Lcom/waze/mywaze/social/FacebookActivity;

    invoke-virtual {v0}, Lcom/waze/mywaze/social/FacebookActivity;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/waze/mywaze/social/FacebookActivity;->activeInstance:Lcom/waze/mywaze/social/FacebookActivity;

    iput-boolean p0, v0, Lcom/waze/mywaze/social/FacebookActivity;->connected:Z

    .line 50
    sget-object v0, Lcom/waze/mywaze/social/FacebookActivity;->activeInstance:Lcom/waze/mywaze/social/FacebookActivity;

    invoke-direct {v0}, Lcom/waze/mywaze/social/FacebookActivity;->updateStatus()V

    .line 52
    :cond_0
    sget-object v0, Lcom/waze/mywaze/social/FacebookActivity;->activeInstance:Lcom/waze/mywaze/social/FacebookActivity;

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/waze/mywaze/social/FacebookActivity;->activeInstance:Lcom/waze/mywaze/social/FacebookActivity;

    invoke-virtual {v0}, Lcom/waze/mywaze/social/FacebookActivity;->UpdateCheckBox()V

    .line 56
    :cond_1
    return-void
.end method

.method private updateStatus()V
    .locals 3

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/waze/mywaze/social/FacebookActivity;->connected:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookActivity;->connectButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookActivity;->buttonTitles:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookActivity;->connectButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookActivity;->buttonTitles:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public UpdateCheckBox()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;)V

    .line 61
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 139
    if-ne p2, v0, :cond_0

    .line 140
    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/FacebookActivity;->setResult(I)V

    .line 141
    invoke-virtual {p0}, Lcom/waze/mywaze/social/FacebookActivity;->finish()V

    .line 143
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f0902a0

    .line 69
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v2, 0x7f030051

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FacebookActivity;->setContentView(I)V

    .line 72
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/mywaze/social/FacebookActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 73
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/mywaze/social/FacebookActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 74
    sput-object p0, Lcom/waze/mywaze/social/FacebookActivity;->activeInstance:Lcom/waze/mywaze/social/FacebookActivity;

    .line 75
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/waze/mywaze/social/FacebookActivity;->modified:Z

    .line 77
    iget-object v2, p0, Lcom/waze/mywaze/social/FacebookActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0}, Lcom/waze/mywaze/social/FacebookActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/mywaze/social/FacebookActivity;->buttonTitles:[Ljava/lang/String;

    .line 79
    const v2, 0x7f09029d

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, p0, v3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 80
    invoke-virtual {p0, v5}, Lcom/waze/mywaze/social/FacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/waze/mywaze/social/FacebookActivity;->connectButton:Landroid/widget/Button;

    .line 83
    invoke-virtual {p0}, Lcom/waze/mywaze/social/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 85
    const-string v2, "com.waze.mywaze.facebooksettings"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;

    .line 86
    .local v1, fs:Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;
    iget-boolean v2, v1, Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;->loggedIn:Z

    iput-boolean v2, p0, Lcom/waze/mywaze/social/FacebookActivity;->connected:Z

    .line 88
    .end local v1           #fs:Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;
    :cond_0
    invoke-direct {p0}, Lcom/waze/mywaze/social/FacebookActivity;->updateStatus()V

    .line 90
    invoke-virtual {p0, v5}, Lcom/waze/mywaze/social/FacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/mywaze/social/FacebookActivity$1;

    invoke-direct {v3, p0}, Lcom/waze/mywaze/social/FacebookActivity$1;-><init>(Lcom/waze/mywaze/social/FacebookActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v2, 0x7f0902a1

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    const v2, 0x7f0902a2

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/mywaze/social/FacebookActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_NO_ONE_CAN_ACTIVELY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v2, 0x7f09029f

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 100
    iget-object v3, p0, Lcom/waze/mywaze/social/FacebookActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 101
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ONE_TAP_NAVIGATION_TO_FACEBOOK_EVENTS_WITH_NO_NEED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v2, 0x7f0902a3

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    iget-object v3, p0, Lcom/waze/mywaze/social/FacebookActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_MANAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 103
    const v2, 0x7f0902a5

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/mywaze/social/FacebookActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_BLOCKED_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const v2, 0x7f0902a4

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/mywaze/social/FacebookActivity$2;

    invoke-direct {v3, p0}, Lcom/waze/mywaze/social/FacebookActivity$2;-><init>(Lcom/waze/mywaze/social/FacebookActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/mywaze/social/FacebookActivity;->activeInstance:Lcom/waze/mywaze/social/FacebookActivity;

    .line 41
    iget-boolean v0, p0, Lcom/waze/mywaze/social/FacebookActivity;->modified:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->facebookPostConnect()V

    .line 44
    :cond_0
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 45
    return-void
.end method

.method public onFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 64
    iget-boolean v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;->loggedIn:Z

    iput-boolean v0, p0, Lcom/waze/mywaze/social/FacebookActivity;->connected:Z

    .line 65
    return-void
.end method
