.class public Lcom/waze/profile/NameYourWazerPopup;
.super Landroid/app/Dialog;
.source "NameYourWazerPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/profile/NameYourWazerPopup$UserSuggestionType;
    }
.end annotation


# static fields
.field private static bIsFirstTime:I


# instance fields
.field private IsValid:Z

.field already_queried:Z

.field h:Landroid/os/Handler;

.field idle_min:J

.field last_text_edit:J

.field private mContext:Landroid/content/Context;

.field private mText:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private nativeManager:Lcom/waze/NativeManager;

.field private signButton:Landroid/widget/TextView;

.field private userNameView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    const v0, 0x7f06000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object v2, p0, Lcom/waze/profile/NameYourWazerPopup;->mContext:Landroid/content/Context;

    .line 36
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/waze/profile/NameYourWazerPopup;->idle_min:J

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/waze/profile/NameYourWazerPopup;->last_text_edit:J

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waze/profile/NameYourWazerPopup;->h:Landroid/os/Handler;

    .line 39
    iput-object v2, p0, Lcom/waze/profile/NameYourWazerPopup;->mText:Ljava/lang/String;

    .line 40
    iput-boolean v3, p0, Lcom/waze/profile/NameYourWazerPopup;->already_queried:Z

    .line 41
    iput-object v2, p0, Lcom/waze/profile/NameYourWazerPopup;->mUserName:Ljava/lang/String;

    .line 42
    iput-boolean v3, p0, Lcom/waze/profile/NameYourWazerPopup;->IsValid:Z

    .line 57
    iput-object p1, p0, Lcom/waze/profile/NameYourWazerPopup;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/NameYourWazerPopup;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/profile/NameYourWazerPopup;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/profile/NameYourWazerPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/waze/profile/NameYourWazerPopup;->onContinueClicked()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/profile/NameYourWazerPopup;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/profile/NameYourWazerPopup;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/profile/NameYourWazerPopup;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/waze/profile/NameYourWazerPopup;->IsValid:Z

    return-void
.end method

.method static synthetic access$6(Lcom/waze/profile/NameYourWazerPopup;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/waze/profile/NameYourWazerPopup;->mText:Ljava/lang/String;

    return-void
.end method

.method private initLayout()V
    .locals 5

    .prologue
    const v4, 0x7f09044f

    const v3, 0x7f0903f5

    const/4 v2, -0x1

    .line 86
    const v1, 0x7f030090

    invoke-virtual {p0, v1}, Lcom/waze/profile/NameYourWazerPopup;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/waze/profile/NameYourWazerPopup;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 88
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NAME_YOUR_WAZER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, Title:Ljava/lang/String;
    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInit:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInit:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UPDATE_YOUR_WAZER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_1
    const v1, 0x7f09004f

    invoke-virtual {p0, v1}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInit:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInit:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-eqz v1, :cond_3

    .line 97
    :cond_2
    invoke-virtual {p0, v3}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_YOUR_USERNAME_WILL_REPLACE_YOUR_NICKNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    invoke-virtual {p0, v4}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 105
    const v1, 0x7f09044d

    invoke-virtual {p0, v1}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;

    .line 107
    invoke-virtual {p0, v4}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/waze/profile/NameYourWazerPopup$1;

    invoke-direct {v2, p0}, Lcom/waze/profile/NameYourWazerPopup$1;-><init>(Lcom/waze/profile/NameYourWazerPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v1, 0x7f090057

    invoke-virtual {p0, v1}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->signButton:Landroid/widget/TextView;

    .line 120
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->signButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    .line 121
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->signButton:Landroid/widget/TextView;

    new-instance v2, Lcom/waze/profile/NameYourWazerPopup$2;

    invoke-direct {v2, p0}, Lcom/waze/profile/NameYourWazerPopup$2;-><init>(Lcom/waze/profile/NameYourWazerPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;

    new-instance v2, Lcom/waze/profile/NameYourWazerPopup$3;

    invoke-direct {v2, p0}, Lcom/waze/profile/NameYourWazerPopup$3;-><init>(Lcom/waze/profile/NameYourWazerPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;

    new-instance v2, Lcom/waze/profile/NameYourWazerPopup$4;

    invoke-direct {v2, p0}, Lcom/waze/profile/NameYourWazerPopup$4;-><init>(Lcom/waze/profile/NameYourWazerPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    return-void

    .line 101
    :cond_3
    invoke-virtual {p0, v3}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_VISIBLE_TO_ALL_ON_MAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onContinueClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 267
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 268
    const-string v1, "USERNAME_CONTINUE"

    .line 267
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 270
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->SuggestUserNameTerminate(Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Username is invalid"

    invoke-static {v0, v1, v2}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public OnUpdateResult(Z)V
    .locals 2
    .parameter "bIsSuccess"

    .prologue
    .line 283
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 284
    if-eqz p1, :cond_0

    .line 286
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->EnableOrientation()V

    .line 287
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->SetPhoneIsFirstTime(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/waze/profile/NameYourWazerPopup;->dismiss()V

    .line 289
    sget-boolean v0, Lcom/waze/MainActivity;->bToOpenPasswordRecovery:Z

    if-eqz v0, :cond_1

    .line 291
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->openPasswordRecovery()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->openAddFriendPopup()V

    goto :goto_0
.end method

.method protected close()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 191
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lcom/waze/profile/NameYourWazerPopup;->initLayout()V

    .line 66
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 67
    const-string v1, "SELECT_USERNAME_SHOWN"

    const/4 v2, 0x1

    .line 66
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public onUserNameResult(ILjava/lang/String;)V
    .locals 7
    .parameter "nType"
    .parameter "username"

    .prologue
    const/16 v6, 0x8

    const v3, 0x7f080030

    const v5, 0x7f09044f

    const v4, 0x7f09044e

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, Text:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 198
    iput-object p2, p0, Lcom/waze/profile/NameYourWazerPopup;->mUserName:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/waze/profile/NameYourWazerPopup;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->userNameView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/waze/profile/NameYourWazerPopup;->mUserName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 205
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 262
    :goto_0
    invoke-virtual {p0, v4}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_2
    return-void

    .line 207
    :pswitch_0
    sget v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    .line 209
    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInit:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInit:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-eqz v1, :cond_4

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CONFIRM_YOUR_EXISTING_USERNAME_OR_CHANGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_1
    sget v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    .line 223
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/profile/NameYourWazerPopup;->IsValid:Z

    .line 224
    invoke-virtual {p0, v4}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    invoke-virtual {p0, v5}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 215
    :cond_4
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_DONT_LIKE_IT_TRY_SOMETHING_ELSE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 221
    :cond_5
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LOOKS_GOOD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 229
    :pswitch_1
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_USER_NAME_IS_TOO_SHORT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v4}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    invoke-virtual {p0, v5}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    sget v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    goto/16 :goto_0

    .line 235
    :pswitch_2
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_USERNAME_IS_TOO_LONG:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p0, v4}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    invoke-virtual {p0, v5}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    sget v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    goto/16 :goto_0

    .line 241
    :pswitch_3
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_INVALID_CHARACTER_USE_ONLY_LETTERS_AND_NUMBERS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {p0, v4}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    invoke-virtual {p0, v5}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    sget v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    goto/16 :goto_0

    .line 247
    :pswitch_4
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_THATS_TAKEN_TRY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {p0, v5}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    invoke-virtual {p0, v4}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    invoke-virtual {p0, v5}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    sget v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    goto/16 :goto_0

    .line 254
    :pswitch_5
    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    .line 255
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOU_CANT_USE_THIS_USERNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v4}, Lcom/waze/profile/NameYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    sget v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/waze/profile/NameYourWazerPopup;->bIsFirstTime:I

    goto/16 :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
