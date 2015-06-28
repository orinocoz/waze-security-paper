.class public Lcom/waze/install/GuidedTourActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "GuidedTourActivity.java"


# static fields
.field private static bIsBackFromFBScreen:Z

.field private static bIsFacebookClicked:Z

.field private static bIsMovieClicked:Z

.field private static bIsNew:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 434
    sput-boolean v0, Lcom/waze/install/GuidedTourActivity;->bIsNew:Z

    .line 435
    sput-boolean v0, Lcom/waze/install/GuidedTourActivity;->bIsFacebookClicked:Z

    .line 436
    sput-boolean v0, Lcom/waze/install/GuidedTourActivity;->bIsBackFromFBScreen:Z

    .line 437
    sput-boolean v0, Lcom/waze/install/GuidedTourActivity;->bIsMovieClicked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method public static IsAlreadyCreactedUser()Z
    .locals 1

    .prologue
    .line 431
    sget-boolean v0, Lcom/waze/install/GuidedTourActivity;->bIsBackFromFBScreen:Z

    return v0
.end method

.method public static IsNewUser()Z
    .locals 1

    .prologue
    .line 426
    sget-boolean v0, Lcom/waze/install/GuidedTourActivity;->bIsNew:Z

    return v0
.end method

.method static synthetic access$0(Z)V
    .locals 0
    .parameter

    .prologue
    .line 435
    sput-boolean p0, Lcom/waze/install/GuidedTourActivity;->bIsFacebookClicked:Z

    return-void
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 436
    sget-boolean v0, Lcom/waze/install/GuidedTourActivity;->bIsBackFromFBScreen:Z

    return v0
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 435
    sget-boolean v0, Lcom/waze/install/GuidedTourActivity;->bIsFacebookClicked:Z

    return v0
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 437
    sget-boolean v0, Lcom/waze/install/GuidedTourActivity;->bIsMovieClicked:Z

    return v0
.end method

.method static synthetic access$4(Z)V
    .locals 0
    .parameter

    .prologue
    .line 437
    sput-boolean p0, Lcom/waze/install/GuidedTourActivity;->bIsMovieClicked:Z

    return-void
.end method


# virtual methods
.method public GoogleTest()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public SetVideoUri()Landroid/widget/VideoView;
    .locals 3

    .prologue
    .line 309
    const v2, 0x7f090352

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 310
    .local v0, video:Landroid/widget/VideoView;
    invoke-virtual {v0}, Landroid/widget/VideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 311
    .local v1, vto:Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/waze/install/GuidedTourActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/waze/install/GuidedTourActivity$6;-><init>(Lcom/waze/install/GuidedTourActivity;Landroid/widget/VideoView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 326
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v5, 0x1388

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 361
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/install/GuidedTourActivity;->bIsFacebookClicked:Z

    .line 363
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsMinimalInstallation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    if-ne p1, v5, :cond_0

    .line 367
    if-ne p2, v4, :cond_1

    .line 369
    invoke-virtual {p0, v4}, Lcom/waze/install/GuidedTourActivity;->setResult(I)V

    .line 370
    invoke-virtual {p0}, Lcom/waze/install/GuidedTourActivity;->finish()V

    .line 421
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 422
    return-void

    .line 372
    :cond_1
    if-nez p2, :cond_0

    .line 374
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    const-string v1, "LOGIN_BACK"

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 380
    :cond_2
    if-nez p2, :cond_3

    .line 382
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 384
    :cond_3
    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_4

    .line 386
    if-nez p2, :cond_6

    .line 389
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsCleanInstallation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 390
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 391
    const-string v1, "FACEBOOK_CONNECT_BACK"

    .line 390
    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 399
    :goto_1
    sput-boolean v3, Lcom/waze/install/GuidedTourActivity;->bIsBackFromFBScreen:Z

    .line 407
    :cond_4
    :goto_2
    if-ne p1, v5, :cond_0

    .line 409
    if-nez p2, :cond_7

    .line 411
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 412
    const-string v1, "NEW_EXISTING_BACK"

    .line 411
    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 394
    :cond_5
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 395
    const-string v1, "FACEBOOK_CONNECT_BACK"

    .line 394
    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 403
    :cond_6
    invoke-virtual {p0, v4}, Lcom/waze/install/GuidedTourActivity;->setResult(I)V

    .line 404
    invoke-virtual {p0}, Lcom/waze/install/GuidedTourActivity;->finish()V

    goto :goto_2

    .line 416
    :cond_7
    invoke-virtual {p0, v4}, Lcom/waze/install/GuidedTourActivity;->setResult(I)V

    .line 417
    invoke-virtual {p0}, Lcom/waze/install/GuidedTourActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f09034e

    const v8, 0x7f09034b

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->requestWindowFeature(I)Z

    .line 35
    const v2, 0x7f03006d

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->setContentView(I)V

    .line 38
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 40
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/LayoutManager;->isSplashVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/LayoutManager;->cancelSplash()V

    .line 46
    :cond_0
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsMinimalInstallation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    const-string v3, "START"

    .line 49
    const/4 v4, 0x1

    .line 48
    invoke-virtual {v2, v3, v6, v6, v4}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    const v2, 0x7f09034d

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_NEW_USERS_START_DRIVING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0, v9}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    const v2, 0x7f09034c

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020279

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    const v2, 0x7f09034c

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 78
    :goto_0
    const v2, 0x7f09034c

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/install/GuidedTourActivity$1;

    invoke-direct {v3, p0}, Lcom/waze/install/GuidedTourActivity$1;-><init>(Lcom/waze/install/GuidedTourActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsMinimalInstallation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    invoke-virtual {p0, v8}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_LOGIN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_1
    invoke-virtual {p0, v8}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/install/GuidedTourActivity$2;

    invoke-direct {v3, p0}, Lcom/waze/install/GuidedTourActivity$2;-><init>(Lcom/waze/install/GuidedTourActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-virtual {p0}, Lcom/waze/install/GuidedTourActivity;->SetVideoUri()Landroid/widget/VideoView;

    move-result-object v1

    .line 233
    .local v1, video:Landroid/widget/VideoView;
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, ctlr:Landroid/widget/MediaController;
    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 235
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 242
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsMinimalInstallation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 244
    const v2, 0x7f090350

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_WELCOME_TO_WAZE_INSTALL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const v2, 0x7f090351

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    :goto_2
    new-instance v2, Lcom/waze/install/GuidedTourActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/install/GuidedTourActivity$3;-><init>(Lcom/waze/install/GuidedTourActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 272
    new-instance v2, Lcom/waze/install/GuidedTourActivity$4;

    invoke-direct {v2, p0}, Lcom/waze/install/GuidedTourActivity$4;-><init>(Lcom/waze/install/GuidedTourActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 282
    const v2, 0x7f09034f

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/install/GuidedTourActivity$5;

    invoke-direct {v3, p0}, Lcom/waze/install/GuidedTourActivity$5;-><init>(Lcom/waze/install/GuidedTourActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/waze/NativeManager;->SetPhoneIsFirstTime(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/waze/install/GuidedTourActivity;->GoogleTest()V

    .line 301
    return-void

    .line 58
    .end local v0           #ctlr:Landroid/widget/MediaController;
    .end local v1           #video:Landroid/widget/VideoView;
    :cond_1
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsCleanInstallation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 61
    const-string v3, "START"

    const/4 v4, 0x1

    .line 60
    invoke-virtual {v2, v3, v6, v6, v4}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    const v2, 0x7f09034d

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SIGN_UP_WITH_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0, v9}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_DONT_WORRY_YOU_CONTROL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0, v9}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 70
    :cond_2
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 71
    const-string v3, "SOCIAL_UPGRADE"

    .line 70
    invoke-virtual {v2, v3, v6, v6, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    const v2, 0x7f09034d

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_CONNECT_TO_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0, v9}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 151
    :cond_3
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsCleanInstallation()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    invoke-virtual {p0, v8}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_CREATE_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 158
    :cond_4
    invoke-virtual {p0, v8}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_GO_SOLO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 249
    .restart local v0       #ctlr:Landroid/widget/MediaController;
    .restart local v1       #video:Landroid/widget/VideoView;
    :cond_5
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsCleanInstallation()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 251
    const v2, 0x7f090350

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_WELCOME_SIGN_IN_TO_GET_STARTED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const v2, 0x7f090351

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_WE_WILL_NEVER_POST_WITHOUT_APPROVAL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 256
    :cond_6
    const v2, 0x7f090350

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_A_WHOLE_NEW_WAZE_AWAITS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const v2, 0x7f090351

    invoke-virtual {p0, v2}, Lcom/waze/install/GuidedTourActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_RECONNECT_EVEN_IF_YOU_DID:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onFacebookTokenSet()V
    .locals 5

    .prologue
    const/16 v4, 0xbb8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 330
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 331
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsCleanInstallation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getUserTypeNTV()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/install/InstallFacebookPrivacyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isNew"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    sput-boolean v2, Lcom/waze/install/GuidedTourActivity;->bIsNew:Z

    .line 338
    invoke-virtual {p0, v0, v4}, Lcom/waze/install/GuidedTourActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 355
    :goto_0
    return-void

    .line 342
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/install/InstallFacebookPrivacyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "isNew"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    sput-boolean v3, Lcom/waze/install/GuidedTourActivity;->bIsNew:Z

    .line 345
    invoke-virtual {p0, v0, v4}, Lcom/waze/install/GuidedTourActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 350
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/install/InstallFacebookPrivacyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "isNew"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    sput-boolean v2, Lcom/waze/install/GuidedTourActivity;->bIsNew:Z

    .line 353
    invoke-virtual {p0, v0, v4}, Lcom/waze/install/GuidedTourActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
