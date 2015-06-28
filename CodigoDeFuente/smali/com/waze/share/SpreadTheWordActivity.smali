.class public Lcom/waze/share/SpreadTheWordActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SpreadTheWordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/share/SpreadTheWordActivity$OnOkMsgSmsService;
    }
.end annotation


# instance fields
.field private email:Lcom/waze/settings/DrillDownSettingView;

.field private follow:Lcom/waze/settings/DrillDownSettingView;

.field private like:Lcom/waze/settings/DrillDownSettingView;

.field private nativeManager:Lcom/waze/NativeManager;

.field private rate:Lcom/waze/settings/DrillDownSettingView;

.field private share:Lcom/waze/settings/DrillDownSettingView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 35
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/SpreadTheWordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/waze/share/SpreadTheWordActivity;->onShare()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/share/SpreadTheWordActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/share/SpreadTheWordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/waze/share/SpreadTheWordActivity;->onEmail()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/share/SpreadTheWordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/waze/share/SpreadTheWordActivity;->onLike()V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/share/SpreadTheWordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/waze/share/SpreadTheWordActivity;->onFollow()V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/share/SpreadTheWordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/waze/share/SpreadTheWordActivity;->onRate()V

    return-void
.end method

.method private onEmail()V
    .locals 10

    .prologue
    .line 167
    iget-object v8, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_COOL_NEW_COMMUTING_APP_TO_CHECK_OUTE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, subject:Ljava/lang/String;
    const v8, 0x7f070195

    invoke-virtual {p0, v8}, Lcom/waze/share/SpreadTheWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, format:Ljava/lang/String;
    iget-object v8, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_JUST_A_QUICK_NOTE_TO_TELL_YOU_ABOUT_WAZE_H__A_FREE__COMMUNITYHBASED_TRAFFIC_A_NAVIGATION_APP_THAT_I_THOUGHT_YOU_MIGHT_LIKE_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, body1:Ljava/lang/String;
    iget-object v8, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_WHEN_YOU_DOWNLOAD_WAZE__YOU_NOT_ONLY_GET_A_FREE_NAVIGATION__BUT_ALSO_BECOME_PART_OF_THE_LOCAL_DRIVING_COMMUNITY_IN_YOUR_AREA__JOINING_FORCES_WITH_OTHER_DRIVERS_NEARBY_TO_BEAT_TRAFFIC__SAVE_TIME__AND_IMPROVE_EVERYONESS_DAILY_COMMUTE___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, body2:Ljava/lang/String;
    iget-object v8, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_DOWNLOAD_IT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, body3:Ljava/lang/String;
    iget-object v8, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_AND_CHECK_IT_OUT_FOR_YOURSELFE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, body4:Ljava/lang/String;
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const/4 v9, 0x3

    aput-object v4, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, body:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v6, intent:Landroid/content/Intent;
    const-string v8, "text/plain"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v8, "android.intent.extra.SUBJECT"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v8, "android.intent.extra.TEXT"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 180
    const-string v8, "message/rfc822"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v8, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_EMAIL_YOUR_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/waze/share/SpreadTheWordActivity;->startActivity(Landroid/content/Intent;)V

    .line 182
    return-void
.end method

.method private onFollow()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/share/TwitterFollowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/share/SpreadTheWordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 191
    return-void
.end method

.method private onLike()V
    .locals 0

    .prologue
    .line 185
    invoke-static {p0}, Lcom/waze/share/FbLikeLauncher;->start(Lcom/waze/ifs/ui/ActivityBase;)Lcom/waze/share/FbLikeLauncher;

    .line 186
    return-void
.end method

.method private onRate()V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.waze"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/waze/share/SpreadTheWordActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method private onShare()V
    .locals 8

    .prologue
    .line 143
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookLoggedInNTV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/waze/share/ShareFbQueries;->postDialogShow(Landroid/app/Activity;)V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_WAZE_NEED_TO_CONNECT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 150
    const/4 v3, 0x1

    new-instance v4, Lcom/waze/share/SpreadTheWordActivity$OnOkMsgSmsService;

    invoke-direct {v4, p0}, Lcom/waze/share/SpreadTheWordActivity$OnOkMsgSmsService;-><init>(Lcom/waze/share/SpreadTheWordActivity;)V

    iget-object v5, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_CONNECT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_CANCEL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 149
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    .line 40
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030110

    invoke-virtual {p0, v0}, Lcom/waze/share/SpreadTheWordActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/waze/share/SpreadTheWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SHARE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 44
    const-string v0, "SETTINGS_CLICK"

    const-string v1, "VAUE"

    const-string v2, "SPREAD_THE_WORD"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const v0, 0x7f090706

    invoke-virtual {p0, v0}, Lcom/waze/share/SpreadTheWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    iput-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->share:Lcom/waze/settings/DrillDownSettingView;

    .line 47
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->FacebookEnabledNTV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->share:Lcom/waze/settings/DrillDownSettingView;

    iget-object v1, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SHARE_ON_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->share:Lcom/waze/settings/DrillDownSettingView;

    new-instance v1, Lcom/waze/share/SpreadTheWordActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/share/SpreadTheWordActivity$1;-><init>(Lcom/waze/share/SpreadTheWordActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :goto_0
    const v0, 0x7f090707

    invoke-virtual {p0, v0}, Lcom/waze/share/SpreadTheWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    iput-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->email:Lcom/waze/settings/DrillDownSettingView;

    .line 70
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->email:Lcom/waze/settings/DrillDownSettingView;

    iget-object v1, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_EMAIL_YOUR_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->email:Lcom/waze/settings/DrillDownSettingView;

    new-instance v1, Lcom/waze/share/SpreadTheWordActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/share/SpreadTheWordActivity$2;-><init>(Lcom/waze/share/SpreadTheWordActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f090708

    invoke-virtual {p0, v0}, Lcom/waze/share/SpreadTheWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    iput-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->like:Lcom/waze/settings/DrillDownSettingView;

    .line 79
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->FacebookEnabledNTV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->like:Lcom/waze/settings/DrillDownSettingView;

    iget-object v1, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LIKE_OUR_PAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->like:Lcom/waze/settings/DrillDownSettingView;

    new-instance v1, Lcom/waze/share/SpreadTheWordActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/share/SpreadTheWordActivity$3;-><init>(Lcom/waze/share/SpreadTheWordActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :goto_1
    const v0, 0x7f090709

    invoke-virtual {p0, v0}, Lcom/waze/share/SpreadTheWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    iput-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->follow:Lcom/waze/settings/DrillDownSettingView;

    .line 102
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->TwitterEnabledNTV()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->follow:Lcom/waze/settings/DrillDownSettingView;

    iget-object v1, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_FOLLOW_US_ON_TWITTER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->follow:Lcom/waze/settings/DrillDownSettingView;

    new-instance v1, Lcom/waze/share/SpreadTheWordActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/share/SpreadTheWordActivity$4;-><init>(Lcom/waze/share/SpreadTheWordActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :goto_2
    const v0, 0x7f09070a

    invoke-virtual {p0, v0}, Lcom/waze/share/SpreadTheWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    iput-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->rate:Lcom/waze/settings/DrillDownSettingView;

    .line 124
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->MarketEnabledNTV()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->rate:Lcom/waze/settings/DrillDownSettingView;

    iget-object v1, p0, Lcom/waze/share/SpreadTheWordActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_RATE_US:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->rate:Lcom/waze/settings/DrillDownSettingView;

    new-instance v1, Lcom/waze/share/SpreadTheWordActivity$5;

    invoke-direct {v1, p0}, Lcom/waze/share/SpreadTheWordActivity$5;-><init>(Lcom/waze/share/SpreadTheWordActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :goto_3
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->share:Lcom/waze/settings/DrillDownSettingView;

    invoke-virtual {v0, v3}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto/16 :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->like:Lcom/waze/settings/DrillDownSettingView;

    invoke-virtual {v0, v3}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->follow:Lcom/waze/settings/DrillDownSettingView;

    invoke-virtual {v0, v3}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto :goto_2

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/waze/share/SpreadTheWordActivity;->rate:Lcom/waze/settings/DrillDownSettingView;

    invoke-virtual {v0, v3}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto :goto_3
.end method
