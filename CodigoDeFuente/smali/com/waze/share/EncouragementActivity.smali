.class public Lcom/waze/share/EncouragementActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "EncouragementActivity.java"


# instance fields
.field private buttonClicked:Z

.field private closeCallback:J

.field private mAnalyticsTypeString:Ljava/lang/String;

.field private mType:I

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 36
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/share/EncouragementActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/EncouragementActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/waze/share/EncouragementActivity;->buttonClicked:Z

    return-void
.end method

.method static synthetic access$1(Lcom/waze/share/EncouragementActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity;->mAnalyticsTypeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/share/EncouragementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/waze/share/EncouragementActivity;->onSendLocation()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/share/EncouragementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/waze/share/EncouragementActivity;->onRate()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/share/EncouragementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/waze/share/EncouragementActivity;->onShare()V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/share/EncouragementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/waze/share/EncouragementActivity;->onLike()V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/share/EncouragementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/waze/share/EncouragementActivity;->onFollow()V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/share/EncouragementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/waze/share/EncouragementActivity;->onMapEditor()V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/share/EncouragementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/waze/share/EncouragementActivity;->onFacebook()V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/share/EncouragementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/waze/share/EncouragementActivity;->onSendETA()V

    return-void
.end method

.method static synthetic access$9(Lcom/waze/share/EncouragementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/waze/share/EncouragementActivity;->onAddHome()V

    return-void
.end method

.method private onAddHome()V
    .locals 3

    .prologue
    .line 294
    const-string v1, "ENC_ADD_HOME_CLICK"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/AddHomeWorkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AddressType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/waze/share/EncouragementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 299
    return-void
.end method

.method private onFacebook()V
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    new-instance v1, Lcom/waze/share/EncouragementActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/share/EncouragementActivity$2;-><init>(Lcom/waze/share/EncouragementActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;)V

    .line 280
    return-void
.end method

.method private onFollow()V
    .locals 2

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/share/TwitterFollowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/share/EncouragementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 311
    return-void
.end method

.method private onLike()V
    .locals 0

    .prologue
    .line 283
    invoke-static {p0}, Lcom/waze/share/FbLikeLauncher;->start(Lcom/waze/ifs/ui/ActivityBase;)Lcom/waze/share/FbLikeLauncher;

    .line 284
    return-void
.end method

.method private onMapEditor()V
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->GetIsShowHowToEditNTV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const-string v1, "ENC_MAP_EDITOR_CLICK_VIDEO"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/ifs/ui/VideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "landscape"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    const-string v1, "url"

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->GetEditorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v0}, Lcom/waze/share/EncouragementActivity;->startActivity(Landroid/content/Intent;)V

    .line 321
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onRate()V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.waze"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 325
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/waze/share/EncouragementActivity;->startActivity(Landroid/content/Intent;)V

    .line 326
    return-void
.end method

.method private onSendETA()V
    .locals 1

    .prologue
    .line 287
    const-string v0, "ENC_SEND_ETA_CLICK"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 289
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/share/EncouragementActivity;->setResult(I)V

    .line 290
    invoke-virtual {p0}, Lcom/waze/share/EncouragementActivity;->finish()V

    .line 291
    return-void
.end method

.method private onSendLocation()V
    .locals 1

    .prologue
    .line 302
    const-string v0, "ENC_SEND_LOCATION_CLICK"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 304
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/share/EncouragementActivity;->setResult(I)V

    .line 305
    invoke-virtual {p0}, Lcom/waze/share/EncouragementActivity;->finish()V

    .line 306
    return-void
.end method

.method private onShare()V
    .locals 2

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/share/FacebookShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/share/EncouragementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 258
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f090289

    const/4 v12, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v8, 0x7f03004c

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/waze/share/EncouragementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 44
    .local v7, type:I
    invoke-virtual {p0}, Lcom/waze/share/EncouragementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "callback"

    const-wide/16 v10, -0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/waze/share/EncouragementActivity;->closeCallback:J

    .line 46
    iput v7, p0, Lcom/waze/share/EncouragementActivity;->mType:I

    .line 47
    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    .line 49
    const v8, 0x7f090058

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/waze/view/title/TitleBar;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_WAZE_TIP:Lcom/waze/strings/DisplayStrings;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_SKIP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, p0, v9, v10}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    .line 68
    :goto_0
    iput-boolean v12, p0, Lcom/waze/share/EncouragementActivity;->buttonClicked:Z

    .line 69
    invoke-virtual {p0, v13}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/share/EncouragementActivity$1;

    invoke-direct {v9, p0, v7}, Lcom/waze/share/EncouragementActivity$1;-><init>(Lcom/waze/share/EncouragementActivity;I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const/4 v3, 0x0

    .line 112
    .local v3, paramResource:I
    const/4 v1, 0x0

    .line 113
    .local v1, doFormat:Z
    const-string v8, "UNKNOWN"

    iput-object v8, p0, Lcom/waze/share/EncouragementActivity;->mAnalyticsTypeString:Ljava/lang/String;

    .line 117
    packed-switch v7, :pswitch_data_0

    .line 212
    :pswitch_0
    const v8, 0x7f090286

    :try_start_0
    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f020318

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    const v6, 0x7f0701bf

    .line 214
    .local v6, titleResource:I
    const v4, 0x7f0701c4

    .line 215
    .local v4, text1Resource:I
    const v0, 0x7f0701ba

    .line 219
    .local v0, buttonResource:I
    :goto_1
    const-string v8, "ENC_POPUP_SHOWN"

    .line 220
    const-string v9, "TYPE"

    iget-object v10, p0, Lcom/waze/share/EncouragementActivity;->mAnalyticsTypeString:Ljava/lang/String;

    .line 219
    invoke-static {v8, v9, v10}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const v8, 0x7f090287

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/waze/share/EncouragementActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0, v6}, Lcom/waze/share/EncouragementActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    if-eqz v1, :cond_4

    .line 224
    const v8, 0x7f090288

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/waze/share/EncouragementActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0, v4}, Lcom/waze/share/EncouragementActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/waze/share/EncouragementActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0, v3}, Lcom/waze/share/EncouragementActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :goto_2
    const v8, 0x7f09028a

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/waze/share/EncouragementActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0, v0}, Lcom/waze/share/EncouragementActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const v8, 0x7f09028a

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0           #buttonResource:I
    .end local v4           #text1Resource:I
    .end local v6           #titleResource:I
    :goto_3
    return-void

    .line 51
    .end local v1           #doFormat:Z
    .end local v3           #paramResource:I
    :cond_0
    const/16 v8, 0xb

    if-ne v7, v8, :cond_1

    .line 53
    const v8, 0x7f090058

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/waze/view/title/TitleBar;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_WAZE_TIP:Lcom/waze/strings/DisplayStrings;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_SKIP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, p0, v9, v10}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    goto/16 :goto_0

    .line 55
    :cond_1
    const/16 v8, 0xc

    if-ne v7, v8, :cond_2

    .line 57
    const v8, 0x7f090058

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/waze/view/title/TitleBar;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_WAZE_TIP:Lcom/waze/strings/DisplayStrings;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_SKIP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, p0, v9, v10}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    goto/16 :goto_0

    .line 59
    :cond_2
    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    .line 61
    const v8, 0x7f090058

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/waze/view/title/TitleBar;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_RATE_US:Lcom/waze/strings/DisplayStrings;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_SKIP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, p0, v9, v10}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    goto/16 :goto_0

    .line 65
    :cond_3
    const v8, 0x7f090058

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/waze/view/title/TitleBar;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_CONNECT:Lcom/waze/strings/DisplayStrings;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_SKIP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, p0, v9, v10}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    goto/16 :goto_0

    .line 119
    .restart local v1       #doFormat:Z
    .restart local v3       #paramResource:I
    :pswitch_1
    const v8, 0x7f090286

    :try_start_1
    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f020318

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    const v6, 0x7f0701bf

    .line 121
    .restart local v6       #titleResource:I
    const v4, 0x7f0701c4

    .line 122
    .restart local v4       #text1Resource:I
    const v3, 0x7f0701c5

    .line 123
    const/4 v1, 0x1

    .line 124
    const v0, 0x7f0701ba

    .line 125
    .restart local v0       #buttonResource:I
    goto/16 :goto_1

    .line 127
    .end local v0           #buttonResource:I
    .end local v4           #text1Resource:I
    .end local v6           #titleResource:I
    :pswitch_2
    const-string v8, "NEW_VERSION"

    iput-object v8, p0, Lcom/waze/share/EncouragementActivity;->mAnalyticsTypeString:Ljava/lang/String;

    .line 128
    const v8, 0x7f090286

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f020318

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    const v6, 0x7f0701c0

    .line 130
    .restart local v6       #titleResource:I
    const v4, 0x7f0701c7

    .line 131
    .restart local v4       #text1Resource:I
    const v0, 0x7f0701bb

    .line 132
    .restart local v0       #buttonResource:I
    goto/16 :goto_1

    .line 134
    .end local v0           #buttonResource:I
    .end local v4           #text1Resource:I
    .end local v6           #titleResource:I
    :pswitch_3
    const v6, 0x7f0701c1

    .line 135
    .restart local v6       #titleResource:I
    const v4, 0x7f0701c9

    .line 136
    .restart local v4       #text1Resource:I
    const v0, 0x7f0701bc

    .line 137
    .restart local v0       #buttonResource:I
    goto/16 :goto_1

    .line 139
    .end local v0           #buttonResource:I
    .end local v4           #text1Resource:I
    .end local v6           #titleResource:I
    :pswitch_4
    const-string v8, "FB_LIKE"

    iput-object v8, p0, Lcom/waze/share/EncouragementActivity;->mAnalyticsTypeString:Ljava/lang/String;

    .line 140
    const v8, 0x7f090286

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f02022a

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    const v6, 0x7f0701c2

    .line 142
    .restart local v6       #titleResource:I
    const v4, 0x7f0701cb

    .line 143
    .restart local v4       #text1Resource:I
    const v0, 0x7f0701bd

    .line 144
    .restart local v0       #buttonResource:I
    goto/16 :goto_1

    .line 146
    .end local v0           #buttonResource:I
    .end local v4           #text1Resource:I
    .end local v6           #titleResource:I
    :pswitch_5
    const v6, 0x7f0701c3

    .line 147
    .restart local v6       #titleResource:I
    const v4, 0x7f0701cd

    .line 148
    .restart local v4       #text1Resource:I
    const v5, 0x7f0701ce

    .line 149
    .local v5, text2Resource:I
    const v0, 0x7f0701be

    .line 150
    .restart local v0       #buttonResource:I
    goto/16 :goto_1

    .line 152
    .end local v0           #buttonResource:I
    .end local v4           #text1Resource:I
    .end local v5           #text2Resource:I
    .end local v6           #titleResource:I
    :pswitch_6
    const-string v8, "MAP_EDITOR"

    iput-object v8, p0, Lcom/waze/share/EncouragementActivity;->mAnalyticsTypeString:Ljava/lang/String;

    .line 153
    const v8, 0x7f090286

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f020252

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    const v6, 0x7f0701b6

    .line 155
    .restart local v6       #titleResource:I
    const v4, 0x7f0701b7

    .line 156
    .restart local v4       #text1Resource:I
    const v0, 0x7f0701b8

    .line 157
    .restart local v0       #buttonResource:I
    const-string v8, "ENC_MAP_EDITOR_SHOWN"

    invoke-static {v8}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 232
    .end local v0           #buttonResource:I
    .end local v4           #text1Resource:I
    .end local v6           #titleResource:I
    :catch_0
    move-exception v2

    .line 234
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "Exception in EncouragmentActivity"

    invoke-static {v8, v2}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 160
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_7
    :try_start_2
    const-string v8, "FB_CONNECT"

    iput-object v8, p0, Lcom/waze/share/EncouragementActivity;->mAnalyticsTypeString:Ljava/lang/String;

    .line 161
    const v6, 0x7f0701aa

    .line 162
    .restart local v6       #titleResource:I
    const v4, 0x7f0701ab

    .line 163
    .restart local v4       #text1Resource:I
    const v0, 0x7f0701ac

    .line 165
    .restart local v0       #buttonResource:I
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v8

    const-string v9, "DRIVE_WITH_FRIENDS_POPUP"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    const v8, 0x7f090286

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f02014a

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    const v8, 0x7f090289

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f02008a

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    const v8, 0x7f09028a

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    const v8, 0x7f090289

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .line 173
    .end local v0           #buttonResource:I
    .end local v4           #text1Resource:I
    .end local v6           #titleResource:I
    :pswitch_8
    const-string v8, "SEND_ETA"

    iput-object v8, p0, Lcom/waze/share/EncouragementActivity;->mAnalyticsTypeString:Ljava/lang/String;

    .line 174
    const v6, 0x7f0701ad

    .line 175
    .restart local v6       #titleResource:I
    const v4, 0x7f0701ae

    .line 176
    .restart local v4       #text1Resource:I
    const v0, 0x7f0701af

    .line 178
    .restart local v0       #buttonResource:I
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v8

    const-string v9, "ENC_SEND_ETA_SHOWN"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    const v8, 0x7f090286

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f02034c

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    const v8, 0x7f090289

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f02038e

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 182
    const v8, 0x7f09028a

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    const v8, 0x7f090289

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .line 186
    .end local v0           #buttonResource:I
    .end local v4           #text1Resource:I
    .end local v6           #titleResource:I
    :pswitch_9
    const-string v8, "ADD_HOME"

    iput-object v8, p0, Lcom/waze/share/EncouragementActivity;->mAnalyticsTypeString:Ljava/lang/String;

    .line 187
    const v6, 0x7f0701b3

    .line 188
    .restart local v6       #titleResource:I
    const v4, 0x7f0701b4

    .line 189
    .restart local v4       #text1Resource:I
    const v0, 0x7f0701b5

    .line 191
    .restart local v0       #buttonResource:I
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v8

    const-string v9, "ENC_ADD_HOME_SHOWN"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    const v8, 0x7f090286

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f02000f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    const v8, 0x7f090289

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f02038e

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 195
    const v8, 0x7f09028a

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    const v8, 0x7f090289

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .line 199
    .end local v0           #buttonResource:I
    .end local v4           #text1Resource:I
    .end local v6           #titleResource:I
    :pswitch_a
    const-string v8, "SEND_LOCATION"

    iput-object v8, p0, Lcom/waze/share/EncouragementActivity;->mAnalyticsTypeString:Ljava/lang/String;

    .line 200
    const v6, 0x7f0701b0

    .line 201
    .restart local v6       #titleResource:I
    const v4, 0x7f0701b1

    .line 202
    .restart local v4       #text1Resource:I
    const v0, 0x7f0701b2

    .line 204
    .restart local v0       #buttonResource:I
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v8

    const-string v9, "ENC_SEND_LOCATION_SHOWN"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    const v8, 0x7f090286

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f020352

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    const v8, 0x7f090289

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f02038e

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    const v8, 0x7f09028a

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    const v8, 0x7f090289

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .line 227
    :cond_4
    const v8, 0x7f090288

    invoke-virtual {p0, v8}, Lcom/waze/share/EncouragementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/waze/share/EncouragementActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0, v4}, Lcom/waze/share/EncouragementActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 241
    iget v0, p0, Lcom/waze/share/EncouragementActivity;->mType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 243
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    const-string v1, "DRIVE_WITH_FRIENDS_POPUP_SKIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 246
    :cond_0
    iget-wide v0, p0, Lcom/waze/share/EncouragementActivity;->closeCallback:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 247
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/waze/share/EncouragementActivity;->closeCallback:J

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->encouragementCloseCallback(J)V

    .line 250
    :cond_1
    iget-boolean v0, p0, Lcom/waze/share/EncouragementActivity;->buttonClicked:Z

    if-nez v0, :cond_2

    .line 251
    const-string v0, "ENC_POPUP_SKIP"

    .line 252
    const-string v1, "TYPE"

    iget-object v2, p0, Lcom/waze/share/EncouragementActivity;->mAnalyticsTypeString:Ljava/lang/String;

    .line 251
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_2
    return-void
.end method
