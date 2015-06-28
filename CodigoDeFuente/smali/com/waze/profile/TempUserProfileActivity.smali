.class public Lcom/waze/profile/TempUserProfileActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "TempUserProfileActivity.java"


# instance fields
.field private mMwnm:Lcom/waze/mywaze/MyWazeNativeManager;

.field private mNm:Lcom/waze/NativeManager;

.field private mWazeData:Lcom/waze/mywaze/MyWazeData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/TempUserProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/waze/profile/TempUserProfileActivity;->changePhoneNumber()V

    return-void
.end method

.method private changePhoneNumber()V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v1, "back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v1, "fon_shon_rea_son"

    .line 146
    const-string v2, "UPDATE"

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/16 v1, 0x457

    invoke-virtual {p0, v0, v1}, Lcom/waze/profile/TempUserProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
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

    .line 128
    if-ne p2, v0, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lcom/waze/profile/TempUserProfileActivity;->setResult(I)V

    .line 131
    invoke-virtual {p0}, Lcom/waze/profile/TempUserProfileActivity;->finish()V

    .line 133
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/profile/TempUserProfileActivity;->setResult(I)V

    .line 135
    invoke-virtual {p0}, Lcom/waze/profile/TempUserProfileActivity;->finish()V

    .line 137
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 124
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f09042c

    const v4, 0x7f090424

    const v3, 0x7f090411

    .line 33
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/profile/TempUserProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 36
    invoke-virtual {p0}, Lcom/waze/profile/TempUserProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 37
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/waze/profile/TempUserProfileActivity;->requestWindowFeature(I)Z

    .line 38
    const v1, 0x7f030115

    invoke-virtual {p0, v1}, Lcom/waze/profile/TempUserProfileActivity;->setContentView(I)V

    .line 40
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/profile/TempUserProfileActivity;->mMwnm:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 41
    iget-object v1, p0, Lcom/waze/profile/TempUserProfileActivity;->mMwnm:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v1, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 42
    iget-object v1, p0, Lcom/waze/profile/TempUserProfileActivity;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->SuggestUserNameInit()V

    .line 45
    invoke-virtual {p0, v3}, Lcom/waze/profile/TempUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_MY_PROFILE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, p0, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 47
    invoke-virtual {p0, v3}, Lcom/waze/profile/TempUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    new-instance v2, Lcom/waze/profile/TempUserProfileActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/profile/TempUserProfileActivity$1;-><init>(Lcom/waze/profile/TempUserProfileActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v1, 0x7f09042b

    invoke-virtual {p0, v1}, Lcom/waze/profile/TempUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsTitleText;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ADVANCED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 66
    const v1, 0x7f090423

    invoke-virtual {p0, v1}, Lcom/waze/profile/TempUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/text/WazeTextView;

    iget-object v2, p0, Lcom/waze/profile/TempUserProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 67
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_REGISTER_TO_GET_MOST_OUT_OF:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0, v4}, Lcom/waze/profile/TempUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsTitleText;

    iget-object v2, p0, Lcom/waze/profile/TempUserProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 71
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SIGN_UP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 72
    const v1, 0x7f090426

    invoke-virtual {p0, v1}, Lcom/waze/profile/TempUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/text/WazeTextView;

    iget-object v2, p0, Lcom/waze/profile/TempUserProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 73
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_CREATE_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v1, 0x7f090425

    invoke-virtual {p0, v1}, Lcom/waze/profile/TempUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/profile/TempUserProfileActivity$2;

    invoke-direct {v2, p0}, Lcom/waze/profile/TempUserProfileActivity$2;-><init>(Lcom/waze/profile/TempUserProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0, v4}, Lcom/waze/profile/TempUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsTitleText;

    iget-object v2, p0, Lcom/waze/profile/TempUserProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 84
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ACCOUNT_DETAILS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v5}, Lcom/waze/profile/TempUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/DrillDownSettingView;

    iget-object v2, p0, Lcom/waze/profile/TempUserProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 86
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SWITCH_ACCOUNTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 88
    const v1, 0x7f09042d

    invoke-virtual {p0, v1}, Lcom/waze/profile/TempUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    .line 89
    .local v0, deleteAccountButton:Lcom/waze/settings/DrillDownSettingView;
    iget-object v1, p0, Lcom/waze/profile/TempUserProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_DELETE_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 90
    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setTextColor(I)V

    .line 92
    invoke-virtual {p0, v5}, Lcom/waze/profile/TempUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/profile/TempUserProfileActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/profile/TempUserProfileActivity$3;-><init>(Lcom/waze/profile/TempUserProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v1, Lcom/waze/profile/TempUserProfileActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/profile/TempUserProfileActivity$4;-><init>(Lcom/waze/profile/TempUserProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f09042e

    invoke-virtual {p0, v1}, Lcom/waze/profile/TempUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/text/WazeTextView;

    .line 108
    iget-object v2, p0, Lcom/waze/profile/TempUserProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 109
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_YOU_CAN_DELETE_YOUR_ACCOUNT_AND_PERSONAL_DATA_ANYTIME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 117
    return-void
.end method
