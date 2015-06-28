.class public Lcom/waze/profile/ProfileActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "ProfileActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;


# instance fields
.field private allowping:Z

.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field private nickname:Ljava/lang/String;

.field private passView:Landroid/widget/TextView;

.field private password:Ljava/lang/String;

.field private userView:Landroid/widget/TextView;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 28
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/ProfileActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 29
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/ProfileActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 30
    iget-object v0, p0, Lcom/waze/profile/ProfileActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getProfileSettings(Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f0300ba

    invoke-virtual {p0, v0}, Lcom/waze/profile/ProfileActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/waze/profile/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_PROFILE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 40
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/waze/profile/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/ProfileActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_USERNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f090382

    invoke-virtual {p0, v0}, Lcom/waze/profile/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/ProfileActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PASSWORD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v0, 0x7f090556

    invoke-virtual {p0, v0}, Lcom/waze/profile/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/ProfileActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CREDENTIALS_EXPLAINED_TEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const v0, 0x7f090381

    invoke-virtual {p0, v0}, Lcom/waze/profile/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/ProfileActivity;->userView:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f090383

    invoke-virtual {p0, v0}, Lcom/waze/profile/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/ProfileActivity;->passView:Landroid/widget/TextView;

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 64
    iget-object v0, p0, Lcom/waze/profile/ProfileActivity;->userView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/ProfileActivity;->username:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/waze/profile/ProfileActivity;->passView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/ProfileActivity;->password:Ljava/lang/String;

    .line 66
    new-instance v5, Lcom/waze/profile/ProfileActivity$1;

    invoke-direct {v5, p0}, Lcom/waze/profile/ProfileActivity$1;-><init>(Lcom/waze/profile/ProfileActivity;)V

    .line 74
    .local v5, callback:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
    iget-object v0, p0, Lcom/waze/profile/ProfileActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/profile/ProfileActivity;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/profile/ProfileActivity;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/profile/ProfileActivity;->nickname:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/waze/profile/ProfileActivity;->allowping:Z

    invoke-virtual/range {v0 .. v5}, Lcom/waze/mywaze/MyWazeNativeManager;->doLoginOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V

    .line 75
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 76
    return-void
.end method

.method public onProfile(Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 50
    iget-object v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/profile/ProfileActivity;->username:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/profile/ProfileActivity;->password:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->nickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/profile/ProfileActivity;->nickname:Ljava/lang/String;

    .line 53
    iget-boolean v0, p1, Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;->allowPings:Z

    iput-boolean v0, p0, Lcom/waze/profile/ProfileActivity;->allowping:Z

    .line 55
    iget-object v0, p0, Lcom/waze/profile/ProfileActivity;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/waze/profile/ProfileActivity;->userView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/ProfileActivity;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/waze/profile/ProfileActivity;->password:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/waze/profile/ProfileActivity;->passView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/ProfileActivity;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_1
    return-void
.end method
