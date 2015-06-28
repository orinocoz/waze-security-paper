.class public Lcom/waze/mywaze/NicknameActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "NicknameActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;


# instance fields
.field private allowping:Z

.field private lastnickname:Ljava/lang/String;

.field private m_IsInstallation:Z

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
    .line 31
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/mywaze/NicknameActivity;->m_IsInstallation:Z

    .line 32
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 33
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 34
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getProfileSettings(Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;)V

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/waze/mywaze/NicknameActivity;)Lcom/waze/mywaze/MyWazeNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/mywaze/NicknameActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->nickView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/mywaze/NicknameActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/waze/mywaze/NicknameActivity;->nickname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/waze/mywaze/NicknameActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->nickname:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/waze/mywaze/NicknameActivity;->m_IsInstallation:Z

    if-nez v0, :cond_0

    .line 99
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 101
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f090384

    .line 39
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v3, 0x7f030099

    invoke-virtual {p0, v3}, Lcom/waze/mywaze/NicknameActivity;->setContentView(I)V

    .line 42
    iget-object v3, p0, Lcom/waze/mywaze/NicknameActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v3}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const v3, 0x7f0904bb

    invoke-virtual {p0, v3}, Lcom/waze/mywaze/NicknameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 44
    .local v1, frame:Landroid/view/ViewGroup;
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 45
    .local v2, v:Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    .end local v1           #frame:Landroid/view/ViewGroup;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    const v3, 0x7f09003f

    invoke-virtual {p0, v3}, Lcom/waze/mywaze/NicknameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_MY_NICKNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, p0, v4}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 51
    invoke-virtual {p0, v5}, Lcom/waze/mywaze/NicknameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/mywaze/NicknameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_NICKNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v3, 0x7f0904bc

    invoke-virtual {p0, v3}, Lcom/waze/mywaze/NicknameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/mywaze/NicknameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_HOW_YOUR_NICKNAME_IS_DISPLAYED_TO_OTHERS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v3, 0x7f0904bd

    invoke-virtual {p0, v3}, Lcom/waze/mywaze/NicknameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/mywaze/NicknameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_YOUR_NICKNAME_EXPLAINED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v3, 0x7f0904be

    invoke-virtual {p0, v3}, Lcom/waze/mywaze/NicknameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/mywaze/NicknameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_REMEMBER_WAZE_GETS_A_WHOLE_LOT_MORE_FUN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v3, 0x7f090385

    invoke-virtual {p0, v3}, Lcom/waze/mywaze/NicknameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/waze/mywaze/NicknameActivity;->nickView:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lcom/waze/mywaze/NicknameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "IsInstallation"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/waze/mywaze/NicknameActivity;->m_IsInstallation:Z

    .line 63
    invoke-virtual {p0}, Lcom/waze/mywaze/NicknameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 65
    const-string v3, "com.waze.mywaze.nickname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/mywaze/NicknameActivity;->nickname:Ljava/lang/String;

    .line 66
    iget-object v3, p0, Lcom/waze/mywaze/NicknameActivity;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 68
    iget-object v3, p0, Lcom/waze/mywaze/NicknameActivity;->nickView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/mywaze/NicknameActivity;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p0, Lcom/waze/mywaze/NicknameActivity;->nickname:Ljava/lang/String;

    iput-object v3, p0, Lcom/waze/mywaze/NicknameActivity;->lastnickname:Ljava/lang/String;

    .line 71
    :cond_1
    const-string v3, "com.waze.mywaze.username"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/mywaze/NicknameActivity;->username:Ljava/lang/String;

    .line 72
    const-string v3, "com.waze.mywaze.password"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/mywaze/NicknameActivity;->password:Ljava/lang/String;

    .line 74
    const-string v3, "com.waze.mywaze.pingable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/waze/mywaze/NicknameActivity;->nickView:Landroid/widget/TextView;

    new-instance v4, Lcom/waze/mywaze/NicknameActivity$1;

    invoke-direct {v4, p0}, Lcom/waze/mywaze/NicknameActivity$1;-><init>(Lcom/waze/mywaze/NicknameActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 114
    iget-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->nickView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->nickname:Ljava/lang/String;

    .line 115
    new-instance v5, Lcom/waze/mywaze/NicknameActivity$2;

    invoke-direct {v5, p0}, Lcom/waze/mywaze/NicknameActivity$2;-><init>(Lcom/waze/mywaze/NicknameActivity;)V

    .line 124
    .local v5, callback:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
    iget-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->nickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/waze/mywaze/NicknameActivity;->lastnickname:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/mywaze/NicknameActivity;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/mywaze/NicknameActivity;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/mywaze/NicknameActivity;->nickname:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/waze/mywaze/NicknameActivity;->allowping:Z

    invoke-virtual/range {v0 .. v5}, Lcom/waze/mywaze/MyWazeNativeManager;->doLoginOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 129
    return-void
.end method

.method public onProfile(Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 104
    iget-object v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->username:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->password:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->nickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->nickname:Ljava/lang/String;

    .line 107
    iget-boolean v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->allowPings:Z

    iput-boolean v0, p0, Lcom/waze/mywaze/NicknameActivity;->allowping:Z

    .line 109
    iget-object v0, p0, Lcom/waze/mywaze/NicknameActivity;->nickView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/NicknameActivity;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method
