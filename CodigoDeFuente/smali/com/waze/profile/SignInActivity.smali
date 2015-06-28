.class public Lcom/waze/profile/SignInActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SignInActivity.java"


# static fields
.field private static active:Z


# instance fields
.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field private passView:Landroid/widget/TextView;

.field private signButton:Landroid/widget/TextView;

.field private userView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/profile/SignInActivity;->active:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 32
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/SignInActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 33
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/SignInActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/profile/SignInActivity;->active:Z

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/SignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/waze/profile/SignInActivity;->onSkipClicked()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/profile/SignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/waze/profile/SignInActivity;->onJoinClicked()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/profile/SignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/waze/profile/SignInActivity;->onRemindClicked()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/profile/SignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/waze/profile/SignInActivity;->onSignClicked()V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/profile/SignInActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/waze/profile/SignInActivity;->signButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public static isActive()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/waze/profile/SignInActivity;->active:Z

    return v0
.end method

.method private onJoinClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 122
    const-string v2, "NEW_EXISTING_JOIN"

    const/4 v3, 0x1

    .line 121
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/profile/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/profile/SignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    return-void
.end method

.method private onRemindClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 129
    const-string v2, "FORGOT_PASSWORD"

    const/4 v3, 0x1

    .line 128
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/profile/ForgotPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/profile/SignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    return-void
.end method

.method private onSignClicked()V
    .locals 6

    .prologue
    .line 136
    iget-object v4, p0, Lcom/waze/profile/SignInActivity;->userView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    iget-object v4, p0, Lcom/waze/profile/SignInActivity;->signButton:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 140
    :cond_0
    iget-object v4, p0, Lcom/waze/profile/SignInActivity;->userView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, username:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/profile/SignInActivity;->passView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, password:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/profile/SignInActivity;->userView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, nickname:Ljava/lang/String;
    new-instance v0, Lcom/waze/profile/SignInActivity$5;

    invoke-direct {v0, p0}, Lcom/waze/profile/SignInActivity$5;-><init>(Lcom/waze/profile/SignInActivity;)V

    .line 156
    .local v0, callback:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
    iget-object v4, p0, Lcom/waze/profile/SignInActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/waze/mywaze/MyWazeNativeManager;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V

    .line 157
    return-void
.end method

.method private onSkipClicked()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/waze/profile/SignInActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->skipSignup()V

    .line 118
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 161
    if-ne p2, v0, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lcom/waze/profile/SignInActivity;->setResult(I)V

    .line 164
    invoke-virtual {p0}, Lcom/waze/profile/SignInActivity;->finish()V

    .line 166
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f090058

    const/4 v6, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v3, 0x7f03010b

    invoke-virtual {p0, v3}, Lcom/waze/profile/SignInActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0, v5}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SIGN_IN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, p0, v4, v6}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Z)V

    .line 55
    invoke-virtual {p0, v5}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    invoke-virtual {v3}, Lcom/waze/view/title/TitleBar;->setUpButtonDisabled()V

    .line 56
    const v3, 0x7f0906e4

    invoke-virtual {p0, v3}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/profile/SignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_NEW_TO_WAZEQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v3, 0x7f0903fc

    invoke-virtual {p0, v3}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/profile/SignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_ALREADY_A_WAZERQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v3, 0x7f0902be

    invoke-virtual {p0, v3}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/profile/SignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_REGISTERING_IS_SUPERHQUICK_AND_LETS_YOU_ENJOY_ALL_THAT_WAZE_HAS_TO_OFFER_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v3, 0x7f090041

    invoke-virtual {p0, v3}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/profile/SignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_USERNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v3, 0x7f090382

    invoke-virtual {p0, v3}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/profile/SignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_PASSWORD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 64
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/LayoutManager;->isSplashVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/LayoutManager;->cancelSplash()V

    .line 70
    :cond_0
    const v3, 0x7f0906e5

    invoke-virtual {p0, v3}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 71
    .local v2, skipButton:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/waze/profile/SignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SKIP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v3, p0, Lcom/waze/profile/SignInActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/waze/install/GuidedTourActivity;->IsAlreadyCreactedUser()Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :goto_0
    new-instance v3, Lcom/waze/profile/SignInActivity$1;

    invoke-direct {v3, p0}, Lcom/waze/profile/SignInActivity$1;-><init>(Lcom/waze/profile/SignInActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v3, 0x7f0906e6

    invoke-virtual {p0, v3}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, joinButton:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/waze/profile/SignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_JOIN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v3, Lcom/waze/profile/SignInActivity$2;

    invoke-direct {v3, p0}, Lcom/waze/profile/SignInActivity$2;-><init>(Lcom/waze/profile/SignInActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v3, 0x7f0906e7

    invoke-virtual {p0, v3}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, remindButton:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/waze/profile/SignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_REMIND_ME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v3, Lcom/waze/profile/SignInActivity$3;

    invoke-direct {v3, p0}, Lcom/waze/profile/SignInActivity$3;-><init>(Lcom/waze/profile/SignInActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v3, 0x7f0903fd

    invoke-virtual {p0, v3}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/waze/profile/SignInActivity;->signButton:Landroid/widget/TextView;

    .line 104
    iget-object v3, p0, Lcom/waze/profile/SignInActivity;->signButton:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/profile/SignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SIGN_IN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v3, p0, Lcom/waze/profile/SignInActivity;->signButton:Landroid/widget/TextView;

    new-instance v4, Lcom/waze/profile/SignInActivity$4;

    invoke-direct {v4, p0}, Lcom/waze/profile/SignInActivity$4;-><init>(Lcom/waze/profile/SignInActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v3, 0x7f090381

    invoke-virtual {p0, v3}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/waze/profile/SignInActivity;->userView:Landroid/widget/TextView;

    .line 111
    const v3, 0x7f090383

    invoke-virtual {p0, v3}, Lcom/waze/profile/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/waze/profile/SignInActivity;->passView:Landroid/widget/TextView;

    .line 113
    return-void

    .line 78
    .end local v0           #joinButton:Landroid/widget/TextView;
    .end local v1           #remindButton:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/profile/SignInActivity;->active:Z

    .line 42
    return-void
.end method
