.class public Lcom/waze/profile/PasswordRecoveryPopup;
.super Landroid/app/Dialog;
.source "PasswordRecoveryPopup.java"


# instance fields
.field private IsValid:Z

.field already_queried:Z

.field h:Landroid/os/Handler;

.field idle_min:J

.field last_text_edit:J

.field private mContext:Landroid/content/Context;

.field private mText:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mWazeData:Lcom/waze/mywaze/MyWazeData;

.field private nativeManager:Lcom/waze/NativeManager;

.field private signButton:Landroid/widget/TextView;

.field private userNameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 43
    const v0, 0x7f06000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object v2, p0, Lcom/waze/profile/PasswordRecoveryPopup;->mContext:Landroid/content/Context;

    .line 31
    iput-object v2, p0, Lcom/waze/profile/PasswordRecoveryPopup;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    .line 32
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->idle_min:J

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->last_text_edit:J

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->h:Landroid/os/Handler;

    .line 35
    iput-object v2, p0, Lcom/waze/profile/PasswordRecoveryPopup;->mText:Ljava/lang/String;

    .line 36
    iput-boolean v3, p0, Lcom/waze/profile/PasswordRecoveryPopup;->already_queried:Z

    .line 37
    iput-object v2, p0, Lcom/waze/profile/PasswordRecoveryPopup;->mUserName:Ljava/lang/String;

    .line 38
    iput-boolean v3, p0, Lcom/waze/profile/PasswordRecoveryPopup;->IsValid:Z

    .line 44
    iput-object p1, p0, Lcom/waze/profile/PasswordRecoveryPopup;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->nativeManager:Lcom/waze/NativeManager;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/PasswordRecoveryPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/waze/profile/PasswordRecoveryPopup;->onContinueClicked()V

    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 64
    const v0, 0x7f03009e

    invoke-virtual {p0, v0}, Lcom/waze/profile/PasswordRecoveryPopup;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/waze/profile/PasswordRecoveryPopup;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 66
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/waze/profile/PasswordRecoveryPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v0, 0x7f0903f5

    invoke-virtual {p0, v0}, Lcom/waze/profile/PasswordRecoveryPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/PasswordRecoveryPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_USER_NAME_IS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f09044f

    invoke-virtual {p0, v0}, Lcom/waze/profile/PasswordRecoveryPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/PasswordRecoveryPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_6_CHARACTERS_MINIMUM:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v0, 0x7f09044e

    invoke-virtual {p0, v0}, Lcom/waze/profile/PasswordRecoveryPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/PasswordRecoveryPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SELECT_YOUR_PASSWORD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/MainActivity;->bToOpenPasswordRecovery:Z

    .line 71
    const v0, 0x7f09044d

    invoke-virtual {p0, v0}, Lcom/waze/profile/PasswordRecoveryPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->userNameView:Landroid/widget/EditText;

    .line 75
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/waze/profile/PasswordRecoveryPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->signButton:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->signButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/PasswordRecoveryPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CHANGE_PASSWORD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->signButton:Landroid/widget/TextView;

    new-instance v1, Lcom/waze/profile/PasswordRecoveryPopup$1;

    invoke-direct {v1, p0}, Lcom/waze/profile/PasswordRecoveryPopup$1;-><init>(Lcom/waze/profile/PasswordRecoveryPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->userNameView:Landroid/widget/EditText;

    new-instance v1, Lcom/waze/profile/PasswordRecoveryPopup$2;

    invoke-direct {v1, p0}, Lcom/waze/profile/PasswordRecoveryPopup$2;-><init>(Lcom/waze/profile/PasswordRecoveryPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 96
    iget-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->userNameView:Landroid/widget/EditText;

    new-instance v1, Lcom/waze/profile/PasswordRecoveryPopup$3;

    invoke-direct {v1, p0}, Lcom/waze/profile/PasswordRecoveryPopup$3;-><init>(Lcom/waze/profile/PasswordRecoveryPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    return-void
.end method

.method private onContinueClicked()V
    .locals 8

    .prologue
    .line 139
    iget-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->userNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, password:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string v4, ""

    .line 148
    .local v4, password1:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, v0, Lcom/waze/mywaze/MyWazeData;->mFirstName:Ljava/lang/String;

    .line 149
    .local v1, firstName:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v2, v0, Lcom/waze/mywaze/MyWazeData;->mLastName:Ljava/lang/String;

    .line 150
    .local v2, lastName:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v3, v0, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    .line 152
    .local v3, username:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/profile/PasswordRecoveryPopup;->userNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    if-eqz v4, :cond_2

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    :cond_2
    const-string v4, ""

    .line 158
    :cond_3
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/waze/mywaze/MyWazeNativeManager;->setNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public OnUpdateResult(Z)V
    .locals 1
    .parameter "bIsSuccess"

    .prologue
    .line 128
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 129
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/waze/profile/PasswordRecoveryPopup;->close()V

    .line 136
    :cond_0
    return-void
.end method

.method public SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V
    .locals 2
    .parameter "Data"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/waze/profile/PasswordRecoveryPopup;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    .line 60
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/waze/profile/PasswordRecoveryPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->EnableOrientation()V

    .line 168
    invoke-virtual {p0}, Lcom/waze/profile/PasswordRecoveryPopup;->dismiss()V

    .line 169
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 123
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/waze/profile/PasswordRecoveryPopup;->close()V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0}, Lcom/waze/profile/PasswordRecoveryPopup;->initLayout()V

    .line 54
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 55
    return-void
.end method
