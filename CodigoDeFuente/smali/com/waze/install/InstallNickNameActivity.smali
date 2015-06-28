.class public Lcom/waze/install/InstallNickNameActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "InstallNickNameActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;


# instance fields
.field private allowping:Z

.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field private nickView:Landroid/widget/TextView;

.field private nickname:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 35
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/install/InstallNickNameActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 36
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/install/InstallNickNameActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 37
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getProfileSettings(Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;)V

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/waze/install/InstallNickNameActivity;)Lcom/waze/mywaze/MyWazeNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/waze/install/InstallNickNameActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/install/InstallNickNameActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/waze/install/InstallNickNameActivity;->nickView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/install/InstallNickNameActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/waze/install/InstallNickNameActivity;->nickname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/waze/install/InstallNickNameActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/install/InstallNickNameActivity;->nickname:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f090384

    const v8, 0x7f09003f

    .line 42
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v4, 0x7f030099

    invoke-virtual {p0, v4}, Lcom/waze/install/InstallNickNameActivity;->setContentView(I)V

    .line 45
    new-instance v1, Lcom/waze/install/InstallNickNameActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/install/InstallNickNameActivity$1;-><init>(Lcom/waze/install/InstallNickNameActivity;)V

    .line 61
    .local v1, click:Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/waze/install/InstallNickNameActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v4}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    const v4, 0x7f0904bb

    invoke-virtual {p0, v4}, Lcom/waze/install/InstallNickNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 63
    .local v2, frame:Landroid/view/ViewGroup;
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 64
    .local v3, v:Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    .end local v2           #frame:Landroid/view/ViewGroup;
    .end local v3           #v:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, v8}, Lcom/waze/install/InstallNickNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/title/TitleBar;

    invoke-virtual {v4, v1}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0, v8}, Lcom/waze/install/InstallNickNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/title/TitleBar;

    iget-object v5, p0, Lcom/waze/install/InstallNickNameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_NICKNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/waze/install/InstallNickNameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p0, v5, v6}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v8}, Lcom/waze/install/InstallNickNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/title/TitleBar;

    invoke-virtual {v4}, Lcom/waze/view/title/TitleBar;->setUpButtonDisabled()V

    .line 74
    invoke-virtual {p0, v9}, Lcom/waze/install/InstallNickNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/install/InstallNickNameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_NICKNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v4, 0x7f0904bc

    invoke-virtual {p0, v4}, Lcom/waze/install/InstallNickNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/install/InstallNickNameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_HOW_YOUR_NICKNAME_IS_DISPLAYED_TO_OTHERS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v4, 0x7f0904bd

    invoke-virtual {p0, v4}, Lcom/waze/install/InstallNickNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/install/InstallNickNameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_YOUR_NICKNAME_EXPLAINED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v4, 0x7f0904be

    invoke-virtual {p0, v4}, Lcom/waze/install/InstallNickNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/install/InstallNickNameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_REMEMBER_WAZE_GETS_A_WHOLE_LOT_MORE_FUN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v4, 0x7f090385

    invoke-virtual {p0, v4}, Lcom/waze/install/InstallNickNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/waze/install/InstallNickNameActivity;->nickView:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Lcom/waze/install/InstallNickNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 86
    const-string v4, "com.waze.mywaze.nickname"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/install/InstallNickNameActivity;->nickname:Ljava/lang/String;

    .line 87
    iget-object v4, p0, Lcom/waze/install/InstallNickNameActivity;->nickname:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 88
    iget-object v4, p0, Lcom/waze/install/InstallNickNameActivity;->nickView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/install/InstallNickNameActivity;->nickname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    const-string v4, "com.waze.mywaze.username"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/install/InstallNickNameActivity;->username:Ljava/lang/String;

    .line 91
    const-string v4, "com.waze.mywaze.password"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/install/InstallNickNameActivity;->password:Ljava/lang/String;

    .line 93
    const-string v4, "com.waze.mywaze.pingable"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 96
    :cond_2
    iget-object v4, p0, Lcom/waze/install/InstallNickNameActivity;->nickView:Landroid/widget/TextView;

    new-instance v5, Lcom/waze/install/InstallNickNameActivity$2;

    invoke-direct {v5, p0}, Lcom/waze/install/InstallNickNameActivity$2;-><init>(Lcom/waze/install/InstallNickNameActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 112
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 130
    iget-object v0, p0, Lcom/waze/install/InstallNickNameActivity;->nickView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/install/InstallNickNameActivity;->nickname:Ljava/lang/String;

    .line 131
    new-instance v5, Lcom/waze/install/InstallNickNameActivity$3;

    invoke-direct {v5, p0}, Lcom/waze/install/InstallNickNameActivity$3;-><init>(Lcom/waze/install/InstallNickNameActivity;)V

    .line 139
    .local v5, callback:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
    iget-object v0, p0, Lcom/waze/install/InstallNickNameActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/install/InstallNickNameActivity;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/install/InstallNickNameActivity;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/install/InstallNickNameActivity;->nickname:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/waze/install/InstallNickNameActivity;->allowping:Z

    invoke-virtual/range {v0 .. v5}, Lcom/waze/mywaze/MyWazeNativeManager;->doLoginOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V

    .line 140
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 141
    return-void
.end method

.method public onProfile(Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 115
    iget-object v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/install/InstallNickNameActivity;->username:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/install/InstallNickNameActivity;->password:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->nickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/install/InstallNickNameActivity;->nickname:Ljava/lang/String;

    .line 118
    iget-boolean v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->allowPings:Z

    iput-boolean v0, p0, Lcom/waze/install/InstallNickNameActivity;->allowping:Z

    .line 120
    iget-object v0, p0, Lcom/waze/install/InstallNickNameActivity;->nickView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/install/InstallNickNameActivity;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method
