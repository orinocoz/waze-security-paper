.class public Lcom/waze/profile/LoginActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "LoginActivity.java"


# instance fields
.field private allowPings:Z

.field private doneButton:Lcom/waze/view/button/AutoResizeTextButton;

.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field private nickView:Landroid/widget/TextView;

.field private nickname:Ljava/lang/String;

.field private passView:Landroid/widget/TextView;

.field private password:Ljava/lang/String;

.field private userView:Landroid/widget/TextView;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 33
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/LoginActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 34
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/LoginActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/waze/profile/LoginActivity;->conclude()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/profile/LoginActivity;)Lcom/waze/mywaze/MyWazeNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/waze/profile/LoginActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/profile/LoginActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/profile/LoginActivity;->nickView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/profile/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/waze/profile/LoginActivity;->nickname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/waze/profile/LoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/waze/profile/LoginActivity;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/profile/LoginActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/waze/profile/LoginActivity;->userView:Landroid/widget/TextView;

    return-object v0
.end method

.method private conclude()V
    .locals 6

    .prologue
    .line 109
    iget-object v0, p0, Lcom/waze/profile/LoginActivity;->userView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/LoginActivity;->username:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/waze/profile/LoginActivity;->passView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/LoginActivity;->password:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/waze/profile/LoginActivity;->nickView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/LoginActivity;->nickname:Ljava/lang/String;

    .line 113
    new-instance v5, Lcom/waze/profile/LoginActivity$4;

    invoke-direct {v5, p0}, Lcom/waze/profile/LoginActivity$4;-><init>(Lcom/waze/profile/LoginActivity;)V

    .line 121
    .local v5, callback:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
    iget-object v0, p0, Lcom/waze/profile/LoginActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-object v1, p0, Lcom/waze/profile/LoginActivity;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/profile/LoginActivity;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/profile/LoginActivity;->nickname:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/waze/profile/LoginActivity;->allowPings:Z

    invoke-virtual/range {v0 .. v5}, Lcom/waze/mywaze/MyWazeNativeManager;->doLoginOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V

    .line 123
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/profile/LoginActivity;->setResult(I)V

    .line 124
    invoke-virtual {p0}, Lcom/waze/profile/LoginActivity;->finish()V

    .line 125
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/waze/profile/LoginActivity;->conclude()V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f03007a

    invoke-virtual {p0, v1}, Lcom/waze/profile/LoginActivity;->setContentView(I)V

    .line 42
    const v1, 0x7f090380

    invoke-virtual {p0, v1}, Lcom/waze/profile/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/button/AutoResizeTextButton;

    iput-object v1, p0, Lcom/waze/profile/LoginActivity;->doneButton:Lcom/waze/view/button/AutoResizeTextButton;

    .line 43
    iget-object v1, p0, Lcom/waze/profile/LoginActivity;->doneButton:Lcom/waze/view/button/AutoResizeTextButton;

    iget-object v2, p0, Lcom/waze/profile/LoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/view/button/AutoResizeTextButton;->setText(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/waze/profile/LoginActivity;->doneButton:Lcom/waze/view/button/AutoResizeTextButton;

    new-instance v2, Lcom/waze/profile/LoginActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/profile/LoginActivity$1;-><init>(Lcom/waze/profile/LoginActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/view/button/AutoResizeTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v1, 0x7f090283

    invoke-virtual {p0, v1}, Lcom/waze/profile/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/LoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_LOG_IN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v1, 0x7f090041

    invoke-virtual {p0, v1}, Lcom/waze/profile/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/LoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_USER_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v1, 0x7f090382

    invoke-virtual {p0, v1}, Lcom/waze/profile/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/LoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PASSWORD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v1, 0x7f090384

    invoke-virtual {p0, v1}, Lcom/waze/profile/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/LoginActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NICKNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v1, 0x7f090381

    invoke-virtual {p0, v1}, Lcom/waze/profile/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/profile/LoginActivity;->userView:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f090383

    invoke-virtual {p0, v1}, Lcom/waze/profile/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/profile/LoginActivity;->passView:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f090385

    invoke-virtual {p0, v1}, Lcom/waze/profile/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/profile/LoginActivity;->nickView:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Lcom/waze/profile/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 61
    const-string v1, "com.waze.mywaze.nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/profile/LoginActivity;->nickname:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/waze/profile/LoginActivity;->nickname:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/waze/profile/LoginActivity;->nickView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/LoginActivity;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    const-string v1, "com.waze.mywaze.pingable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/profile/LoginActivity;->allowPings:Z

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/waze/profile/LoginActivity;->nickView:Landroid/widget/TextView;

    new-instance v2, Lcom/waze/profile/LoginActivity$2;

    invoke-direct {v2, p0}, Lcom/waze/profile/LoginActivity$2;-><init>(Lcom/waze/profile/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    iget-object v1, p0, Lcom/waze/profile/LoginActivity;->userView:Landroid/widget/TextView;

    new-instance v2, Lcom/waze/profile/LoginActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/profile/LoginActivity$3;-><init>(Lcom/waze/profile/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 99
    return-void
.end method
