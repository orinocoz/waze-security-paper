.class public Lcom/waze/mywaze/social/FoursquareActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "FoursquareActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Waze"

.field private static activeInstance:Lcom/waze/mywaze/social/FoursquareActivity;


# instance fields
.field private badgeOption:Lcom/waze/settings/SettingsSwitchView;

.field private beforeCheckIn:Z

.field private buttonTitles:[Ljava/lang/String;

.field private connectButton:Landroid/widget/TextView;

.field private connectStatus:Landroid/widget/TextView;

.field private connected:Z

.field private loginOption:Lcom/waze/settings/SettingsSwitchView;

.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field private statusTexts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/mywaze/social/FoursquareActivity;->activeInstance:Lcom/waze/mywaze/social/FoursquareActivity;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 41
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 42
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/social/FoursquareActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 43
    sput-object p0, Lcom/waze/mywaze/social/FoursquareActivity;->activeInstance:Lcom/waze/mywaze/social/FoursquareActivity;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/waze/mywaze/social/FoursquareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/waze/mywaze/social/FoursquareActivity;->onLogin()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/mywaze/social/FoursquareActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/waze/mywaze/social/FoursquareActivity;->onOptionLogin(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/mywaze/social/FoursquareActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/waze/mywaze/social/FoursquareActivity;->onOptionBadge(Z)V

    return-void
.end method

.method private onLogin()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 127
    iget-boolean v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->connected:Z

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->foursquareDisconnect()V

    .line 155
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    const-string v2, "Waze"

    .line 133
    const-string v3, "FourSquareActivity:: onLogin, no network connection"

    .line 132
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v1, Lcom/waze/mywaze/social/FoursquareActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/mywaze/social/FoursquareActivity$4;-><init>(Lcom/waze/mywaze/social/FoursquareActivity;)V

    .line 142
    .local v1, onclick:Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 143
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NO_NETWORK_CONNECTION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 144
    iget-object v3, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 145
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v2, v3, v5, v1}, Lcom/waze/MsgBox;->openMessageBoxWithCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 151
    .end local v1           #onclick:Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/waze/profile/FoursquareConnectActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lcom/waze/mywaze/social/FoursquareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private onOptionBadge(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/waze/mywaze/social/FoursquareActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->foursquareSetTweetBadge(Z)V

    .line 163
    return-void
.end method

.method private onOptionLogin(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/waze/mywaze/social/FoursquareActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->foursquareSetTweetLogin(Z)V

    .line 159
    return-void
.end method

.method public static refreshStatus(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 166
    sget-object v0, Lcom/waze/mywaze/social/FoursquareActivity;->activeInstance:Lcom/waze/mywaze/social/FoursquareActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/mywaze/social/FoursquareActivity;->activeInstance:Lcom/waze/mywaze/social/FoursquareActivity;

    invoke-virtual {v0}, Lcom/waze/mywaze/social/FoursquareActivity;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/waze/mywaze/social/FoursquareActivity;->activeInstance:Lcom/waze/mywaze/social/FoursquareActivity;

    iput-boolean p0, v0, Lcom/waze/mywaze/social/FoursquareActivity;->connected:Z

    .line 168
    sget-object v0, Lcom/waze/mywaze/social/FoursquareActivity;->activeInstance:Lcom/waze/mywaze/social/FoursquareActivity;

    invoke-direct {v0}, Lcom/waze/mywaze/social/FoursquareActivity;->updateStatus()V

    .line 170
    :cond_0
    return-void
.end method

.method private updateStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    iget-boolean v0, p0, Lcom/waze/mywaze/social/FoursquareActivity;->connected:Z

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/waze/mywaze/social/FoursquareActivity;->connectButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/FoursquareActivity;->buttonTitles:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/waze/mywaze/social/FoursquareActivity;->connectStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/FoursquareActivity;->statusTexts:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-boolean v0, p0, Lcom/waze/mywaze/social/FoursquareActivity;->beforeCheckIn:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/waze/mywaze/social/FoursquareActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->foursquareCheckin()V

    .line 117
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/FoursquareActivity;->setResult(I)V

    .line 118
    invoke-virtual {p0}, Lcom/waze/mywaze/social/FoursquareActivity;->finish()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/waze/mywaze/social/FoursquareActivity;->connectButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/FoursquareActivity;->buttonTitles:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/waze/mywaze/social/FoursquareActivity;->connectStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/FoursquareActivity;->statusTexts:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v2, 0x7f030056

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FoursquareActivity;->setContentView(I)V

    .line 57
    iget-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0}, Lcom/waze/mywaze/social/FoursquareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->buttonTitles:[Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0}, Lcom/waze/mywaze/social/FoursquareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->statusTexts:[Ljava/lang/String;

    .line 59
    const v2, 0x7f0902bb

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FoursquareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_FOURSQUARE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, p0, v3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 60
    const v2, 0x7f0902bc

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FoursquareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->connectButton:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0902bd

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FoursquareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->connectStatus:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0902bf

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FoursquareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsSwitchView;

    iput-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->loginOption:Lcom/waze/settings/SettingsSwitchView;

    .line 63
    const v2, 0x7f0902c0

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FoursquareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsSwitchView;

    iput-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->badgeOption:Lcom/waze/settings/SettingsSwitchView;

    .line 65
    const v2, 0x7f0902a0

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FoursquareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/mywaze/social/FoursquareActivity$1;

    invoke-direct {v3, p0}, Lcom/waze/mywaze/social/FoursquareActivity$1;-><init>(Lcom/waze/mywaze/social/FoursquareActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v2, 0x7f0902be

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FoursquareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_AUTOMATICALLY_TWEET_TO_MY_FOLLOWERS_THAT_IC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v2, 0x7f0902c1

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/social/FoursquareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_WESVE_PARTNERED_WITH_FOURSQUARE_TO_GIVE_YOU_QUICK_ACCESS_TO_CHECKING_IN_AT_NEARBY_VENUES_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    iget-object v4, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_WHAT_IS_FOURSQUAREQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_ITSS_A_FUN_WAY_TO_DISCOVER_AND_PROMOTE_COOL_PLACES_IN_YOUR_CITY_AND_BE_REWARDED_FOR_DOING_SO_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    iget-object v4, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_DONST_HAVE_AN_ACCOUNTQ_SIGN_UP_ONC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 77
    iget-object v4, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_WWW_FOURSQUARE_COM:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->loginOption:Lcom/waze/settings/SettingsSwitchView;

    iget-object v3, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_AM_CHECKING_OUT_THIS_INTEGRATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->loginOption:Lcom/waze/settings/SettingsSwitchView;

    new-instance v3, Lcom/waze/mywaze/social/FoursquareActivity$2;

    invoke-direct {v3, p0}, Lcom/waze/mywaze/social/FoursquareActivity$2;-><init>(Lcom/waze/mywaze/social/FoursquareActivity;)V

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 89
    iget-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->badgeOption:Lcom/waze/settings/SettingsSwitchView;

    iget-object v3, p0, Lcom/waze/mywaze/social/FoursquareActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_HAVE_UNLOCKED_THE_ROADWARRIOR_BADGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->badgeOption:Lcom/waze/settings/SettingsSwitchView;

    new-instance v3, Lcom/waze/mywaze/social/FoursquareActivity$3;

    invoke-direct {v3, p0}, Lcom/waze/mywaze/social/FoursquareActivity$3;-><init>(Lcom/waze/mywaze/social/FoursquareActivity;)V

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 100
    invoke-virtual {p0}, Lcom/waze/mywaze/social/FoursquareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 102
    const-string v2, "com.waze.mywaze.foursquaresettings"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;

    .line 103
    .local v1, fs:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;
    iget-boolean v2, v1, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;->loggedIn:Z

    iput-boolean v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->connected:Z

    .line 104
    iget-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->loginOption:Lcom/waze/settings/SettingsSwitchView;

    iget-boolean v3, v1, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;->enableTweetLogin:Z

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 105
    iget-object v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->badgeOption:Lcom/waze/settings/SettingsSwitchView;

    iget-boolean v3, v1, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;->enableTweetBadge:Z

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 106
    iget-boolean v2, v1, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;->checkInAfterLogin:Z

    iput-boolean v2, p0, Lcom/waze/mywaze/social/FoursquareActivity;->beforeCheckIn:Z

    .line 108
    .end local v1           #fs:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;
    :cond_0
    invoke-direct {p0}, Lcom/waze/mywaze/social/FoursquareActivity;->updateStatus()V

    .line 109
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/mywaze/social/FoursquareActivity;->activeInstance:Lcom/waze/mywaze/social/FoursquareActivity;

    .line 49
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 50
    return-void
.end method
