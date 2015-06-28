.class public Lcom/waze/phone/PhoneLoginActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "PhoneLoginActivity.java"


# static fields
.field private static bIsBackFromFBScreen:Z


# instance fields
.field private bIsVerifyMode:Z

.field private mForgotYourText:Landroid/widget/TextView;

.field private mLoginButton:Landroid/widget/LinearLayout;

.field private mLoginText:Lcom/waze/view/text/WazeTextView;

.field private mLoginWithFacebookButton:Landroid/widget/LinearLayout;

.field private mLoginWithFacebookText:Lcom/waze/view/text/WazeTextView;

.field private mPasswordField:Lcom/waze/phone/PhoneLoginFillInField;

.field private mPhoneNumberField:Lcom/waze/phone/PhoneLoginFillInField;

.field private mUserNameField:Lcom/waze/phone/PhoneLoginFillInField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/phone/PhoneLoginActivity;->bIsBackFromFBScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/phone/PhoneLoginActivity;->bIsVerifyMode:Z

    .line 29
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/waze/phone/PhoneLoginActivity;->bIsBackFromFBScreen:Z

    return v0
.end method

.method static synthetic access$1(Lcom/waze/phone/PhoneLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/waze/phone/PhoneLoginActivity;->onSignClicked()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/phone/PhoneLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/waze/phone/PhoneLoginActivity;->onRemindClicked()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/phone/PhoneLoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/waze/phone/PhoneLoginActivity;->bIsVerifyMode:Z

    return v0
.end method

.method static synthetic access$4(Lcom/waze/phone/PhoneLoginActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mLoginButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private static convertDpToPixels(FLandroid/content/Context;)F
    .locals 2
    .parameter "dp"
    .parameter "context"

    .prologue
    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 368
    .local v0, density:F
    mul-float v1, v0, p0

    return v1
.end method

.method private initFieldsTexts()V
    .locals 3

    .prologue
    .line 79
    const v0, 0x7f0904ef

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 81
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ALREADY_A_WAZER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v0, 0x7f0904f0

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 87
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SIGN_IN_TO_YOUR_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    .line 86
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-direct {p0}, Lcom/waze/phone/PhoneLoginActivity;->initUserNameField()V

    .line 89
    invoke-direct {p0}, Lcom/waze/phone/PhoneLoginActivity;->initPasswordField()V

    .line 90
    invoke-direct {p0}, Lcom/waze/phone/PhoneLoginActivity;->initPhoneNumberField()V

    .line 91
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mLoginWithFacebookText:Lcom/waze/view/text/WazeTextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 92
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CONNECT_WITH_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mLoginText:Lcom/waze/view/text/WazeTextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 94
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SIGN_IN:Lcom/waze/strings/DisplayStrings;

    .line 93
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mForgotYourText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 97
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_FORGOT_YOUR_PASSWORD:Lcom/waze/strings/DisplayStrings;

    .line 96
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method private initMembers()V
    .locals 1

    .prologue
    .line 279
    const v0, 0x7f0904f7

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mLoginButton:Landroid/widget/LinearLayout;

    .line 280
    const v0, 0x7f0904f5

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mForgotYourText:Landroid/widget/TextView;

    .line 281
    const v0, 0x7f0904f3

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneLoginFillInField;

    iput-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mUserNameField:Lcom/waze/phone/PhoneLoginFillInField;

    .line 282
    const v0, 0x7f0904f4

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneLoginFillInField;

    iput-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mPasswordField:Lcom/waze/phone/PhoneLoginFillInField;

    .line 283
    const v0, 0x7f0904f6

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/phone/PhoneLoginFillInField;

    iput-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mPhoneNumberField:Lcom/waze/phone/PhoneLoginFillInField;

    .line 284
    const v0, 0x7f0904f2

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mLoginWithFacebookText:Lcom/waze/view/text/WazeTextView;

    .line 285
    const v0, 0x7f0904f1

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mLoginWithFacebookButton:Landroid/widget/LinearLayout;

    .line 286
    const v0, 0x7f0904f8

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mLoginText:Lcom/waze/view/text/WazeTextView;

    .line 288
    return-void
.end method

.method private initPasswordField()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mPasswordField:Lcom/waze/phone/PhoneLoginFillInField;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 119
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PASSWORD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setLabaleText(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mPasswordField:Lcom/waze/phone/PhoneLoginFillInField;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_PASSWORD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setInputHintText(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mPasswordField:Lcom/waze/phone/PhoneLoginFillInField;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setEditTextDpMarginTop(F)V

    .line 123
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mPasswordField:Lcom/waze/phone/PhoneLoginFillInField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setFocusableInTouchMode(Z)V

    .line 124
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mPasswordField:Lcom/waze/phone/PhoneLoginFillInField;

    invoke-virtual {v0}, Lcom/waze/phone/PhoneLoginFillInField;->setPasswordTextType()V

    .line 125
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mUserNameField:Lcom/waze/phone/PhoneLoginFillInField;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setTextGravity(I)V

    .line 126
    return-void
.end method

.method private initPhoneNumberField()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mPhoneNumberField:Lcom/waze/phone/PhoneLoginFillInField;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 102
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PHONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setLabaleText(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mPhoneNumberField:Lcom/waze/phone/PhoneLoginFillInField;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 104
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_PHONE_NUMBER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setInputHintText(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private initUserNameField()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mUserNameField:Lcom/waze/phone/PhoneLoginFillInField;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 109
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_USERNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setLabaleText(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mUserNameField:Lcom/waze/phone/PhoneLoginFillInField;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 111
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_USERNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setInputHintText(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mUserNameField:Lcom/waze/phone/PhoneLoginFillInField;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setEditTextDpMarginBottom(F)V

    .line 113
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mUserNameField:Lcom/waze/phone/PhoneLoginFillInField;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setImeOptions(I)V

    .line 114
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mUserNameField:Lcom/waze/phone/PhoneLoginFillInField;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setTextGravity(I)V

    .line 115
    return-void
.end method

.method private onRemindClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 291
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 292
    const-string v2, "FORGOT_PASSWORD"

    const/4 v3, 0x1

    .line 291
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/profile/ForgotPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/phone/PhoneLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 296
    return-void
.end method

.method private onSignClicked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 299
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    .line 300
    const-string v5, "LOGIN_WAZER"

    .line 301
    const/4 v6, 0x1

    .line 299
    invoke-virtual {v4, v5, v7, v7, v6}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 303
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginActivity;->mUserNameField:Lcom/waze/phone/PhoneLoginFillInField;

    invoke-virtual {v4}, Lcom/waze/phone/PhoneLoginFillInField;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 304
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginActivity;->mLoginButton:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 306
    :cond_0
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginActivity;->mUserNameField:Lcom/waze/phone/PhoneLoginFillInField;

    invoke-virtual {v4}, Lcom/waze/phone/PhoneLoginFillInField;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, username:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginActivity;->mPasswordField:Lcom/waze/phone/PhoneLoginFillInField;

    invoke-virtual {v4}, Lcom/waze/phone/PhoneLoginFillInField;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, password:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/phone/PhoneLoginActivity;->mUserNameField:Lcom/waze/phone/PhoneLoginFillInField;

    invoke-virtual {v4}, Lcom/waze/phone/PhoneLoginFillInField;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, nickname:Ljava/lang/String;
    new-instance v0, Lcom/waze/phone/PhoneLoginActivity$6;

    invoke-direct {v0, p0}, Lcom/waze/phone/PhoneLoginActivity$6;-><init>(Lcom/waze/phone/PhoneLoginActivity;)V

    .line 344
    .local v0, callback:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/waze/mywaze/MyWazeNativeManager;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V

    .line 346
    return-void
.end method

.method private setKeyboardVisibilityListener()V
    .locals 3

    .prologue
    .line 244
    const v1, 0x7f0904d2

    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, root:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 248
    new-instance v2, Lcom/waze/phone/PhoneLoginActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/waze/phone/PhoneLoginActivity$5;-><init>(Lcom/waze/phone/PhoneLoginActivity;Landroid/view/View;)V

    .line 247
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 275
    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mLoginWithFacebookButton:Landroid/widget/LinearLayout;

    .line 130
    new-instance v1, Lcom/waze/phone/PhoneLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneLoginActivity$1;-><init>(Lcom/waze/phone/PhoneLoginActivity;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mLoginButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/phone/PhoneLoginActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneLoginActivity$2;-><init>(Lcom/waze/phone/PhoneLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mForgotYourText:Landroid/widget/TextView;

    new-instance v1, Lcom/waze/phone/PhoneLoginActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneLoginActivity$3;-><init>(Lcom/waze/phone/PhoneLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/waze/phone/PhoneLoginActivity;->mPhoneNumberField:Lcom/waze/phone/PhoneLoginFillInField;

    new-instance v1, Lcom/waze/phone/PhoneLoginActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneLoginActivity$4;-><init>(Lcom/waze/phone/PhoneLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneLoginFillInField;->setInputTextOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 350
    if-nez p2, :cond_1

    .line 351
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 363
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 364
    return-void

    .line 354
    :cond_1
    const/16 v0, 0x1388

    if-ne p1, v0, :cond_0

    .line 356
    if-ne p2, v1, :cond_0

    .line 358
    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneLoginActivity;->setResult(I)V

    .line 359
    invoke-virtual {p0}, Lcom/waze/phone/PhoneLoginActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 373
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 374
    const-string v1, "LOGIN_BACK"

    const/4 v2, 0x1

    .line 373
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 375
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 376
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0, v3}, Lcom/waze/phone/PhoneLoginActivity;->setRequestedOrientation(I)V

    .line 46
    const v1, 0x7f0300a3

    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneLoginActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/waze/phone/PhoneLoginActivity;->initMembers()V

    .line 49
    iget-object v1, p0, Lcom/waze/phone/PhoneLoginActivity;->mForgotYourText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/phone/PhoneLoginActivity;->mForgotYourText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    .line 50
    or-int/lit8 v2, v2, 0x8

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 52
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 53
    const-string v2, "LOGIN_SHOWN"

    .line 52
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    invoke-virtual {p0}, Lcom/waze/phone/PhoneLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/waze/phone/PhoneLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "verifyMode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, activityType:I
    if-lez v0, :cond_0

    .line 61
    iput-boolean v3, p0, Lcom/waze/phone/PhoneLoginActivity;->bIsVerifyMode:Z

    .line 65
    .end local v0           #activityType:I
    :cond_0
    return-void
.end method

.method public onFacebookTokenSet()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 194
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 196
    iget-boolean v1, p0, Lcom/waze/phone/PhoneLoginActivity;->bIsVerifyMode:Z

    if-nez v1, :cond_0

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v1, "report_start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const-string v1, "fon_shon_rea_son"

    .line 202
    const-string v2, "UPGRADE"

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/waze/phone/PhoneLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneLoginActivity;->setResult(I)V

    .line 210
    invoke-virtual {p0}, Lcom/waze/phone/PhoneLoginActivity;->finish()V

    .line 241
    return-void

    .line 207
    :cond_0
    sput-boolean v2, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 71
    invoke-direct {p0}, Lcom/waze/phone/PhoneLoginActivity;->setOnClickListeners()V

    .line 72
    invoke-direct {p0}, Lcom/waze/phone/PhoneLoginActivity;->initFieldsTexts()V

    .line 73
    invoke-direct {p0}, Lcom/waze/phone/PhoneLoginActivity;->setKeyboardVisibilityListener()V

    .line 74
    return-void
.end method
