.class public Lcom/waze/profile/LaterActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "LaterActivity.java"


# instance fields
.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 24
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/LaterActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 25
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/LaterActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 26
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v2, 0x7f030072

    invoke-virtual {p0, v2}, Lcom/waze/profile/LaterActivity;->setContentView(I)V

    .line 33
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lcom/waze/profile/LaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    .line 34
    .local v1, titleBar:Lcom/waze/view/title/TitleBar;
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PERSONALIZE_LATER:Lcom/waze/strings/DisplayStrings;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Z)V

    .line 35
    invoke-virtual {v1}, Lcom/waze/view/title/TitleBar;->setUpButtonDisabled()V

    .line 36
    new-instance v2, Lcom/waze/profile/LaterActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/profile/LaterActivity$1;-><init>(Lcom/waze/profile/LaterActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v2, 0x7f0902be

    invoke-virtual {p0, v2}, Lcom/waze/profile/LaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/profile/LaterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_YOU_CAN_PERSONALIZE_YOUR_ACCOUNT_FROM_SETTINGSHGPROFILE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v2, 0x7f09036e

    invoke-virtual {p0, v2}, Lcom/waze/profile/LaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    .local v0, closeButton:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/waze/profile/LaterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_CLOSE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v2, Lcom/waze/profile/LaterActivity$2;

    invoke-direct {v2, p0}, Lcom/waze/profile/LaterActivity$2;-><init>(Lcom/waze/profile/LaterActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 68
    invoke-static {}, Lcom/waze/install/GuidedTourActivity;->IsAlreadyCreactedUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/waze/profile/LaterActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->skipSignup()V

    .line 72
    :cond_0
    return-void
.end method
