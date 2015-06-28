.class public Lcom/waze/profile/WelcomeDoneActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "WelcomeDoneActivity.java"


# instance fields
.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 23
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/WelcomeDoneActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/WelcomeDoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/waze/profile/WelcomeDoneActivity;->onDoneAnalytics()V

    return-void
.end method

.method private onDoneAnalytics()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->IsCleanInstallation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 55
    const-string v1, "START_DONE"

    .line 54
    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    :goto_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->logAnalyticsFlush()V

    .line 63
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/waze/profile/WelcomeDoneActivity;->setResult(I)V

    .line 64
    invoke-virtual {p0}, Lcom/waze/profile/WelcomeDoneActivity;->finish()V

    .line 65
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 60
    const-string v1, "SOCIAL_UPGRADE_DONE"

    .line 59
    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f030137

    invoke-virtual {p0, v1}, Lcom/waze/profile/WelcomeDoneActivity;->setContentView(I)V

    .line 31
    const v1, 0x7f090058

    invoke-virtual {p0, v1}, Lcom/waze/profile/WelcomeDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    .line 32
    .local v0, titleBar:Lcom/waze/view/title/TitleBar;
    iget-object v1, p0, Lcom/waze/profile/WelcomeDoneActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_DONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/waze/profile/WelcomeDoneActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->setCloseText(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/waze/view/title/TitleBar;->setUpButtonDisabled()V

    .line 35
    new-instance v1, Lcom/waze/profile/WelcomeDoneActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/profile/WelcomeDoneActivity$1;-><init>(Lcom/waze/profile/WelcomeDoneActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v1, 0x7f0902be

    invoke-virtual {p0, v1}, Lcom/waze/profile/WelcomeDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/WelcomeDoneActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_REMEMBER_THE_MORE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v1, 0x7f0902c1

    invoke-virtual {p0, v1}, Lcom/waze/profile/WelcomeDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/WelcomeDoneActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_DRIVE_SAFE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method
