.class public Lcom/waze/profile/MinimalSignInActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "MinimalSignInActivity.java"


# static fields
.field private static active:Z

.field private static bIsBackFromFBScreen:Z

.field private static bIsFacebookClicked:Z

.field private static bIsNew:Z


# instance fields
.field private facebookButton:Landroid/widget/TextView;

.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field private passView:Landroid/widget/TextView;

.field private signButton:Landroid/widget/TextView;

.field private userView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/waze/profile/MinimalSignInActivity;->active:Z

    .line 34
    sput-boolean v0, Lcom/waze/profile/MinimalSignInActivity;->bIsFacebookClicked:Z

    .line 35
    sput-boolean v0, Lcom/waze/profile/MinimalSignInActivity;->bIsBackFromFBScreen:Z

    .line 36
    sput-boolean v0, Lcom/waze/profile/MinimalSignInActivity;->bIsNew:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 40
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/MinimalSignInActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 41
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/MinimalSignInActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/profile/MinimalSignInActivity;->active:Z

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/MinimalSignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/waze/profile/MinimalSignInActivity;->onRemindClicked()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/profile/MinimalSignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/waze/profile/MinimalSignInActivity;->onSignClicked()V

    return-void
.end method

.method static synthetic access$2(Z)V
    .locals 0
    .parameter

    .prologue
    .line 34
    sput-boolean p0, Lcom/waze/profile/MinimalSignInActivity;->bIsFacebookClicked:Z

    return-void
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/waze/profile/MinimalSignInActivity;->bIsBackFromFBScreen:Z

    return v0
.end method

.method static synthetic access$4(Lcom/waze/profile/MinimalSignInActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/waze/profile/MinimalSignInActivity;->signButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public static isActive()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/waze/profile/MinimalSignInActivity;->active:Z

    return v0
.end method

.method private onRemindClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 165
    const-string v2, "FORGOT_PASSWORD"

    const/4 v3, 0x1

    .line 164
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/profile/ForgotPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/profile/MinimalSignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    return-void
.end method

.method private onSignClicked()V
    .locals 6

    .prologue
    .line 172
    iget-object v4, p0, Lcom/waze/profile/MinimalSignInActivity;->userView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 174
    iget-object v4, p0, Lcom/waze/profile/MinimalSignInActivity;->signButton:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 176
    :cond_0
    iget-object v4, p0, Lcom/waze/profile/MinimalSignInActivity;->userView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, username:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/profile/MinimalSignInActivity;->passView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, password:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/profile/MinimalSignInActivity;->userView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, nickname:Ljava/lang/String;
    new-instance v0, Lcom/waze/profile/MinimalSignInActivity$4;

    invoke-direct {v0, p0}, Lcom/waze/profile/MinimalSignInActivity$4;-><init>(Lcom/waze/profile/MinimalSignInActivity;)V

    .line 192
    .local v0, callback:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
    iget-object v4, p0, Lcom/waze/profile/MinimalSignInActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/waze/mywaze/MyWazeNativeManager;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V

    .line 193
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/profile/MinimalSignInActivity;->bIsFacebookClicked:Z

    .line 201
    if-nez p2, :cond_0

    .line 203
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 205
    :cond_0
    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_1

    .line 207
    if-nez p2, :cond_2

    .line 210
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 211
    const-string v1, "FACEBOOK_CONNECT_BACK"

    .line 210
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 213
    sput-boolean v2, Lcom/waze/profile/MinimalSignInActivity;->bIsBackFromFBScreen:Z

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/profile/MinimalSignInActivity;->setResult(I)V

    .line 218
    invoke-virtual {p0}, Lcom/waze/profile/MinimalSignInActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f090058

    .line 58
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v1, 0x7f030086

    invoke-virtual {p0, v1}, Lcom/waze/profile/MinimalSignInActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0, v4}, Lcom/waze/profile/MinimalSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LOGIN:Lcom/waze/strings/DisplayStrings;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Z)V

    .line 63
    invoke-virtual {p0, v4}, Lcom/waze/profile/MinimalSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    invoke-virtual {v1}, Lcom/waze/view/title/TitleBar;->setUpButtonDisabled()V

    .line 64
    const v1, 0x7f0903fc

    invoke-virtual {p0, v1}, Lcom/waze/profile/MinimalSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/MinimalSignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_EXISTING_USERS_SIGN_IN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v1, 0x7f090041

    invoke-virtual {p0, v1}, Lcom/waze/profile/MinimalSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/MinimalSignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_USERNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v1, 0x7f090382

    invoke-virtual {p0, v1}, Lcom/waze/profile/MinimalSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/MinimalSignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PASSWORD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v1, 0x7f0903fe

    invoke-virtual {p0, v1}, Lcom/waze/profile/MinimalSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    .local v0, remindButton:Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 71
    iget-object v1, p0, Lcom/waze/profile/MinimalSignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_I_FORGOT_MY_PASSWORD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v1, Lcom/waze/profile/MinimalSignInActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/profile/MinimalSignInActivity$1;-><init>(Lcom/waze/profile/MinimalSignInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f0903fd

    invoke-virtual {p0, v1}, Lcom/waze/profile/MinimalSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/profile/MinimalSignInActivity;->signButton:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/waze/profile/MinimalSignInActivity;->signButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/MinimalSignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SIGN_IN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/waze/profile/MinimalSignInActivity;->signButton:Landroid/widget/TextView;

    new-instance v2, Lcom/waze/profile/MinimalSignInActivity$2;

    invoke-direct {v2, p0}, Lcom/waze/profile/MinimalSignInActivity$2;-><init>(Lcom/waze/profile/MinimalSignInActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v1, 0x7f0903ff

    invoke-virtual {p0, v1}, Lcom/waze/profile/MinimalSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/profile/MinimalSignInActivity;->facebookButton:Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/waze/profile/MinimalSignInActivity;->facebookButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/MinimalSignInActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SIGN_UP_WITH_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/waze/profile/MinimalSignInActivity;->facebookButton:Landroid/widget/TextView;

    new-instance v2, Lcom/waze/profile/MinimalSignInActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/profile/MinimalSignInActivity$3;-><init>(Lcom/waze/profile/MinimalSignInActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v1, 0x7f090381

    invoke-virtual {p0, v1}, Lcom/waze/profile/MinimalSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/profile/MinimalSignInActivity;->userView:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f090383

    invoke-virtual {p0, v1}, Lcom/waze/profile/MinimalSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/profile/MinimalSignInActivity;->passView:Landroid/widget/TextView;

    .line 133
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/profile/MinimalSignInActivity;->active:Z

    .line 50
    return-void
.end method

.method public onFacebookTokenSet()V
    .locals 5

    .prologue
    const/16 v4, 0xbb8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 137
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsCleanInstallation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getUserTypeNTV()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/install/InstallFacebookPrivacyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isNew"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    sput-boolean v2, Lcom/waze/profile/MinimalSignInActivity;->bIsNew:Z

    .line 144
    invoke-virtual {p0, v0, v4}, Lcom/waze/profile/MinimalSignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    :goto_0
    return-void

    .line 148
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/install/InstallFacebookPrivacyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "isNew"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    sput-boolean v3, Lcom/waze/profile/MinimalSignInActivity;->bIsNew:Z

    .line 151
    invoke-virtual {p0, v0, v4}, Lcom/waze/profile/MinimalSignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 156
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/install/InstallFacebookPrivacyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "isNew"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    sput-boolean v2, Lcom/waze/profile/MinimalSignInActivity;->bIsNew:Z

    .line 159
    invoke-virtual {p0, v0, v4}, Lcom/waze/profile/MinimalSignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
