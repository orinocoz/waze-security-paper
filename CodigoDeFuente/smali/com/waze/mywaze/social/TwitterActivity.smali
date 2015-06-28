.class public Lcom/waze/mywaze/social/TwitterActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "TwitterActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Waze"

.field private static final SOCIAL_DESTINATION_MODE_CITY:I = 0x1

.field private static final SOCIAL_DESTINATION_MODE_DISABLED:I = 0x0

.field private static final SOCIAL_DESTINATION_MODE_FULL:I = 0x3

.field private static activeInstance:Lcom/waze/mywaze/social/TwitterActivity;


# instance fields
.field private buttonTitles:[Ljava/lang/String;

.field private connectButton:Landroid/widget/TextView;

.field private connectStatus:Landroid/widget/TextView;

.field private connected:Z

.field private drivingMenu:Landroid/view/View;

.field private drivingOption:Lcom/waze/settings/SettingsSwitchView;

.field private drivingStyle:[Landroid/widget/CheckedTextView;

.field private drivingStyleTexts:[Ljava/lang/String;

.field private munchingOption:Lcom/waze/settings/SettingsSwitchView;

.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field private reportsOption:Lcom/waze/settings/SettingsSwitchView;

.field private statusTexts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/mywaze/social/TwitterActivity;->activeInstance:Lcom/waze/mywaze/social/TwitterActivity;

    .line 253
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingStyle:[Landroid/widget/CheckedTextView;

    .line 45
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 46
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 47
    sput-object p0, Lcom/waze/mywaze/social/TwitterActivity;->activeInstance:Lcom/waze/mywaze/social/TwitterActivity;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/waze/mywaze/social/TwitterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/waze/mywaze/social/TwitterActivity;->onLogin()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/mywaze/social/TwitterActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/waze/mywaze/social/TwitterActivity;->onOptionReports(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/mywaze/social/TwitterActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/waze/mywaze/social/TwitterActivity;->onOptionDriving(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/mywaze/social/TwitterActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/waze/mywaze/social/TwitterActivity;->onDrivingStyle(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/mywaze/social/TwitterActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/waze/mywaze/social/TwitterActivity;->onOptionMunching(Z)V

    return-void
.end method

.method private onDrivingStyle(I)V
    .locals 2
    .parameter "selection"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/waze/mywaze/social/TwitterActivity;->showDrivingStyle(I)V

    .line 236
    iget-object v1, p0, Lcom/waze/mywaze/social/TwitterActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 237
    if-lez p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterSetDrivingMode(I)V

    .line 239
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onLogin()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 187
    iget-boolean v2, p0, Lcom/waze/mywaze/social/TwitterActivity;->connected:Z

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/waze/mywaze/social/TwitterActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterDisconnect()V

    .line 216
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    const-string v2, "Waze"

    .line 193
    const-string v3, "TwitterActivity:: onLogin, no network connection"

    .line 192
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v1, Lcom/waze/mywaze/social/TwitterActivity$6;

    invoke-direct {v1, p0}, Lcom/waze/mywaze/social/TwitterActivity$6;-><init>(Lcom/waze/mywaze/social/TwitterActivity;)V

    .line 202
    .local v1, onclick:Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 203
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NO_NETWORK_CONNECTION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 204
    iget-object v3, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 205
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-static {v2, v3, v5, v1}, Lcom/waze/MsgBox;->openMessageBoxWithCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 211
    .end local v1           #onclick:Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/waze/profile/TwitterConnectActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.waze.twitter.frommenu"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0, v5}, Lcom/waze/mywaze/social/TwitterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private onOptionDriving(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v0, 0x1

    .line 223
    invoke-direct {p0, p1}, Lcom/waze/mywaze/social/TwitterActivity;->showOptionDriving(Z)V

    .line 224
    iget-object v1, p0, Lcom/waze/mywaze/social/TwitterActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 225
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingStyle:[Landroid/widget/CheckedTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterSetDrivingMode(I)V

    .line 228
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onOptionMunching(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterSetMunchingMode(Z)V

    .line 232
    return-void
.end method

.method private onOptionReports(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterSetReportMode(Z)V

    .line 220
    return-void
.end method

.method public static refreshStatus(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 57
    sget-object v0, Lcom/waze/mywaze/social/TwitterActivity;->activeInstance:Lcom/waze/mywaze/social/TwitterActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/mywaze/social/TwitterActivity;->activeInstance:Lcom/waze/mywaze/social/TwitterActivity;

    invoke-virtual {v0}, Lcom/waze/mywaze/social/TwitterActivity;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/waze/mywaze/social/TwitterActivity;->activeInstance:Lcom/waze/mywaze/social/TwitterActivity;

    iput-boolean p0, v0, Lcom/waze/mywaze/social/TwitterActivity;->connected:Z

    .line 59
    sget-object v0, Lcom/waze/mywaze/social/TwitterActivity;->activeInstance:Lcom/waze/mywaze/social/TwitterActivity;

    invoke-direct {v0}, Lcom/waze/mywaze/social/TwitterActivity;->updateStatus()V

    .line 61
    :cond_0
    return-void
.end method

.method private showDrivingStyle(I)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 242
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingStyle:[Landroid/widget/CheckedTextView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 245
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingStyle:[Landroid/widget/CheckedTextView;

    aget-object v2, v1, v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showOptionDriving(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingMenu:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 249
    return-void

    .line 248
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateDriving(I)V
    .locals 3
    .parameter "drivingMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    if-lez p1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingOption:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v0, v2}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 173
    invoke-direct {p0, v2}, Lcom/waze/mywaze/social/TwitterActivity;->showOptionDriving(Z)V

    .line 174
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 175
    invoke-direct {p0, v2}, Lcom/waze/mywaze/social/TwitterActivity;->showDrivingStyle(I)V

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0, v1}, Lcom/waze/mywaze/social/TwitterActivity;->showDrivingStyle(I)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingOption:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 181
    invoke-direct {p0, v1}, Lcom/waze/mywaze/social/TwitterActivity;->showOptionDriving(Z)V

    .line 182
    invoke-direct {p0, v1}, Lcom/waze/mywaze/social/TwitterActivity;->showDrivingStyle(I)V

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    iget-boolean v0, p0, Lcom/waze/mywaze/social/TwitterActivity;->connected:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity;->connectButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/TwitterActivity;->buttonTitles:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity;->connectStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/TwitterActivity;->statusTexts:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity;->connectButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/TwitterActivity;->buttonTitles:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/waze/mywaze/social/TwitterActivity;->connectStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/TwitterActivity;->statusTexts:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v4, 0x7f03012b

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->setContentView(I)V

    .line 68
    const v4, 0x7f09076b

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/title/TitleBar;

    .line 69
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_TWITTER:Lcom/waze/strings/DisplayStrings;

    .line 68
    invoke-virtual {v4, p0, v6}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 71
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0}, Lcom/waze/mywaze/social/TwitterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 72
    const v7, 0x7f0c0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-virtual {v4, v6}, Lcom/waze/NativeManager;->getLanguageStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->buttonTitles:[Ljava/lang/String;

    .line 73
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0}, Lcom/waze/mywaze/social/TwitterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 74
    const v7, 0x7f0c0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-virtual {v4, v6}, Lcom/waze/NativeManager;->getLanguageStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->statusTexts:[Ljava/lang/String;

    .line 75
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0}, Lcom/waze/mywaze/social/TwitterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 76
    const v7, 0x7f0c0004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v4, v6}, Lcom/waze/NativeManager;->getLanguageStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingStyleTexts:[Ljava/lang/String;

    .line 78
    const v4, 0x7f0902bc

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->connectButton:Landroid/widget/TextView;

    .line 79
    const v4, 0x7f0902bd

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->connectStatus:Landroid/widget/TextView;

    .line 80
    const v4, 0x7f0906ec

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->reportsOption:Lcom/waze/settings/SettingsSwitchView;

    .line 81
    const v4, 0x7f0906ee

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingOption:Lcom/waze/settings/SettingsSwitchView;

    .line 82
    const v4, 0x7f0906ef

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingMenu:Landroid/view/View;

    .line 83
    iget-object v6, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingStyle:[Landroid/widget/CheckedTextView;

    const v4, 0x7f0906f0

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    aput-object v4, v6, v5

    .line 84
    iget-object v6, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingStyle:[Landroid/widget/CheckedTextView;

    const/4 v7, 0x1

    const v4, 0x7f0906f1

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    aput-object v4, v6, v7

    .line 85
    const v4, 0x7f0906f4

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsSwitchView;

    iput-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->munchingOption:Lcom/waze/settings/SettingsSwitchView;

    .line 88
    invoke-virtual {p0}, Lcom/waze/mywaze/social/TwitterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 91
    const-string v4, "com.waze.mywaze.twittersettings"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 90
    check-cast v3, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;

    .line 92
    .local v3, ts:Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;
    iget-boolean v4, v3, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;->loggedIn:Z

    iput-boolean v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->connected:Z

    .line 93
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->reportsOption:Lcom/waze/settings/SettingsSwitchView;

    iget-boolean v6, v3, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;->postReports:Z

    invoke-virtual {v4, v6}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 94
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->munchingOption:Lcom/waze/settings/SettingsSwitchView;

    iget-boolean v6, v3, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;->postMunching:Z

    invoke-virtual {v4, v6}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 95
    iget v4, v3, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;->postDriving:I

    invoke-direct {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->updateDriving(I)V

    .line 96
    const v4, 0x7f0906f3

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 97
    iget-boolean v4, v3, Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;->showMunching:Z

    if-eqz v4, :cond_1

    move v4, v5

    .line 96
    :goto_0
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .end local v3           #ts:Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;
    :cond_0
    invoke-direct {p0}, Lcom/waze/mywaze/social/TwitterActivity;->updateStatus()V

    .line 101
    const v4, 0x7f0902a0

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/mywaze/social/TwitterActivity$1;

    invoke-direct {v5, p0}, Lcom/waze/mywaze/social/TwitterActivity$1;-><init>(Lcom/waze/mywaze/social/TwitterActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v4, 0x7f0906eb

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 108
    iget-object v5, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 109
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_AUTOMATICALLY_TWEET_TO_MY_FOLLOWERSC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->reportsOption:Lcom/waze/settings/SettingsSwitchView;

    iget-object v5, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_MY_ROAD_REPORTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 112
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->reportsOption:Lcom/waze/settings/SettingsSwitchView;

    new-instance v5, Lcom/waze/mywaze/social/TwitterActivity$2;

    invoke-direct {v5, p0}, Lcom/waze/mywaze/social/TwitterActivity$2;-><init>(Lcom/waze/mywaze/social/TwitterActivity;)V

    invoke-virtual {v4, v5}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 120
    const v4, 0x7f0906ed

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_EXC__JUST_REPORTED_A_TRAFFIC_JAM_ON_GEARY_ST__SF__CA_USING_AWAZE_SOCIAL_GPS_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingOption:Lcom/waze/settings/SettingsSwitchView;

    iget-object v5, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_MY_DESTINATION_AND_ETA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 123
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingOption:Lcom/waze/settings/SettingsSwitchView;

    new-instance v5, Lcom/waze/mywaze/social/TwitterActivity$3;

    invoke-direct {v5, p0}, Lcom/waze/mywaze/social/TwitterActivity$3;-><init>(Lcom/waze/mywaze/social/TwitterActivity;)V

    invoke-virtual {v4, v5}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 131
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingStyle:[Landroid/widget/CheckedTextView;

    array-length v4, v4

    if-lt v1, v4, :cond_2

    .line 141
    const v4, 0x7f0906f2

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 142
    iget-object v5, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 143
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_SHARE_YOUR_DESTINATION_ETA_AND_ROUTE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->munchingOption:Lcom/waze/settings/SettingsSwitchView;

    iget-object v5, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_MY_ROAD_MUNCHING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->munchingOption:Lcom/waze/settings/SettingsSwitchView;

    new-instance v5, Lcom/waze/mywaze/social/TwitterActivity$5;

    invoke-direct {v5, p0}, Lcom/waze/mywaze/social/TwitterActivity$5;-><init>(Lcom/waze/mywaze/social/TwitterActivity;)V

    invoke-virtual {v4, v5}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 156
    const v4, 0x7f0906f5

    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/TwitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/mywaze/social/TwitterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_EXC__JUST_MUNCHED_A_SWAZE_ROAD_GOODIES_WORTH_200_POINTS_ON_GEARY_ST__SF_DRIVING_WITH_AWAZE_SOCIAL_GPS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void

    .line 97
    .end local v1           #i:I
    .restart local v3       #ts:Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;
    :cond_1
    const/16 v4, 0x8

    goto/16 :goto_0

    .line 132
    .end local v3           #ts:Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;
    .restart local v1       #i:I
    :cond_2
    move v2, v1

    .line 133
    .local v2, j:I
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingStyle:[Landroid/widget/CheckedTextView;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingStyleTexts:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v4, p0, Lcom/waze/mywaze/social/TwitterActivity;->drivingStyle:[Landroid/widget/CheckedTextView;

    aget-object v4, v4, v1

    new-instance v5, Lcom/waze/mywaze/social/TwitterActivity$4;

    invoke-direct {v5, p0, v2}, Lcom/waze/mywaze/social/TwitterActivity$4;-><init>(Lcom/waze/mywaze/social/TwitterActivity;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/mywaze/social/TwitterActivity;->activeInstance:Lcom/waze/mywaze/social/TwitterActivity;

    .line 53
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 54
    return-void
.end method
