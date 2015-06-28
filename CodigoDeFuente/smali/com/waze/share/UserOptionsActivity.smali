.class public Lcom/waze/share/UserOptionsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "UserOptionsActivity.java"


# instance fields
.field private mFriendsData:Lcom/waze/user/FriendUserData;

.field private mUserData:Lcom/waze/user/UserData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/UserOptionsActivity;Lcom/waze/strings/DisplayStrings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/waze/share/UserOptionsActivity;->showErrorPopup(Lcom/waze/strings/DisplayStrings;)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/share/UserOptionsActivity;)Lcom/waze/user/UserData;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/waze/share/UserOptionsActivity;->mUserData:Lcom/waze/user/UserData;

    return-object v0
.end method

.method private showErrorPopup(Lcom/waze/strings/DisplayStrings;)V
    .locals 4
    .parameter "bodyText"

    .prologue
    .line 101
    new-instance v0, Lcom/waze/share/UserOptionsActivity$3;

    invoke-direct {v0, p0}, Lcom/waze/share/UserOptionsActivity$3;-><init>(Lcom/waze/share/UserOptionsActivity;)V

    .line 111
    .local v0, onclick:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 112
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 114
    invoke-virtual {v2, p1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 115
    const/4 v3, 0x0

    .line 110
    invoke-static {v1, v2, v3, v0}, Lcom/waze/MsgBox;->openMessageBoxWithCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 92
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/share/UserOptionsActivity;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/waze/share/UserOptionsActivity;->finish()V

    .line 97
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f0906c4

    const v4, 0x7f0906c3

    const/16 v3, 0x8

    .line 32
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/share/UserOptionsActivity;->requestWindowFeature(I)Z

    .line 34
    const v0, 0x7f030108

    invoke-virtual {p0, v0}, Lcom/waze/share/UserOptionsActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/waze/share/UserOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "FriendUserData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/user/FriendUserData;

    iput-object v0, p0, Lcom/waze/share/UserOptionsActivity;->mFriendsData:Lcom/waze/user/FriendUserData;

    .line 38
    iget-object v0, p0, Lcom/waze/share/UserOptionsActivity;->mFriendsData:Lcom/waze/user/FriendUserData;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/waze/share/UserOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/user/UserData;

    iput-object v0, p0, Lcom/waze/share/UserOptionsActivity;->mUserData:Lcom/waze/user/UserData;

    .line 47
    :goto_0
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/share/UserOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_OPTIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 48
    invoke-virtual {p0, v5}, Lcom/waze/share/UserOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_MESSAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v4}, Lcom/waze/share/UserOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_BEEP_BEEP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 50
    const v0, 0x7f0906c5

    invoke-virtual {p0, v0}, Lcom/waze/share/UserOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    invoke-virtual {v0, v3}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    .line 51
    const v0, 0x7f0906c7

    invoke-virtual {p0, v0}, Lcom/waze/share/UserOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    const v0, 0x7f0906c2

    invoke-virtual {p0, v0}, Lcom/waze/share/UserOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {p0, v4}, Lcom/waze/share/UserOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/share/UserOptionsActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/share/UserOptionsActivity$1;-><init>(Lcom/waze/share/UserOptionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0, v5}, Lcom/waze/share/UserOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/share/UserOptionsActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/share/UserOptionsActivity$2;-><init>(Lcom/waze/share/UserOptionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/waze/share/UserOptionsActivity;->mFriendsData:Lcom/waze/user/FriendUserData;

    iput-object v0, p0, Lcom/waze/share/UserOptionsActivity;->mUserData:Lcom/waze/user/UserData;

    goto :goto_0
.end method
