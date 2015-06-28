.class public Lcom/waze/phone/PhoneVerifyYourNumbersActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "PhoneVerifyYourNumbersActivity.java"


# static fields
.field private static final RQ_CODE_ALREADY_A_WAZER:I = 0xd05

.field private static final RQ_CODE_GIVE_UP:I = 0xd06


# instance fields
.field private bIsResend:Z

.field private mAuthNumberOfRetries:I

.field private mContinueButton:Landroid/widget/LinearLayout;

.field private mDisplayOptions:[Ljava/lang/String;

.field private mHash:Ljava/lang/String;

.field private mVerificationCodeEditText:Landroid/widget/EditText;

.field private mVerifyByPhoneCallText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mDisplayOptions:[Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->bIsResend:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mHash:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->getVerificationCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mDisplayOptions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I

    return-void
.end method

.method static synthetic access$4(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->bIsResend:Z

    return-void
.end method

.method static synthetic access$6(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mContinueButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getVerificationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mVerificationCodeEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initFieldsTexts()V
    .locals 3

    .prologue
    .line 59
    const v0, 0x7f090515

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ENTER_VERIFICATION_CODE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v0, 0x7f090516

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TYPE_THE_CODE_WE_SENT_YOU_BY_TEXT_MESSAGE_DIDNT_GET_THE_CODEQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v0, 0x7f090518

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_RESEND_THE_CODE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v0, 0x7f09051c

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method private initMembers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    const v0, 0x7f09051a

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mVerificationCodeEditText:Landroid/widget/EditText;

    .line 222
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mVerificationCodeEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 224
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mVerificationCodeEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ENTER_CODE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mDisplayOptions:[Ljava/lang/String;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SEND_VIA_TEXT_MESSAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 227
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mDisplayOptions:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_RESEND_BY_VOICE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 228
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mDisplayOptions:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_CANCEL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 230
    const v0, 0x7f09051b

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mContinueButton:Landroid/widget/LinearLayout;

    .line 231
    const v0, 0x7f090518

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mVerifyByPhoneCallText:Landroid/widget/TextView;

    .line 232
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mVerifyByPhoneCallText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mVerifyByPhoneCallText:Landroid/widget/TextView;

    .line 233
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 234
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mVerificationCodeEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$3;-><init>(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 248
    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mContinueButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$1;-><init>(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mVerifyByPhoneCallText:Landroid/widget/TextView;

    new-instance v1, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity$2;-><init>(Lcom/waze/phone/PhoneVerifyYourNumbersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void
.end method


# virtual methods
.method public AuthenticateCallback(I)V
    .locals 9
    .parameter "nType"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 73
    if-nez p1, :cond_0

    .line 75
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 76
    const-string v2, "PHONE_STATUS"

    .line 77
    const-string v3, "VAUE"

    const-string v4, "SUCCESS"

    .line 75
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    sput-boolean v6, Lcom/waze/MainActivity;->bToOpenAccountPopup:Z

    .line 80
    invoke-virtual {p0, v8}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->finish()V

    .line 133
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 84
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    sget-boolean v2, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    invoke-virtual {v1, v7, v2, v5, v5}, Lcom/waze/mywaze/MyWazeNativeManager;->setContactsSignIn(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v8}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->setResult(I)V

    .line 86
    invoke-virtual {p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->finish()V

    goto :goto_0

    .line 88
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 90
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 91
    iget-boolean v1, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->bIsResend:Z

    if-eqz v1, :cond_2

    .line 93
    iput-boolean v7, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->bIsResend:Z

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 98
    const-string v2, "PHONE_STATUS"

    .line 99
    const-string v3, "VAUE"

    const-string v4, "FAILURE"

    .line 97
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_INVALID_CODE_TRY_AGAIN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 104
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 106
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 107
    const-string v2, "PHONE_STATUS"

    .line 108
    const-string v3, "VAUE"

    const-string v4, "SUCCESS"

    .line 106
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 110
    const-string v2, "PHONE_EXISTED"

    .line 109
    invoke-virtual {v1, v2, v5, v5, v6}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 113
    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-nez v1, :cond_4

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/phone/PhoneAlreadyAWazerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, i:Landroid/content/Intent;
    const/16 v1, 0xd05

    invoke-virtual {p0, v0, v1}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 120
    .end local v0           #i:Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1, v6, v6, v5, v5}, Lcom/waze/mywaze/MyWazeNativeManager;->setContactsSignIn(ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_5
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 126
    const-string v2, "PHONE_SEND_FAILED"

    .line 127
    const-string v3, "VAUE"

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 130
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 131
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NETWORK_CONNECTION_PROBLEMS__PLEASE_TRY_AGAIN_LATER_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 252
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phoneVerifyYourAccount onActRes requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-ne p2, v3, :cond_0

    .line 255
    invoke-virtual {p0, v3}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->setResult(I)V

    .line 256
    invoke-virtual {p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->finish()V

    .line 263
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 264
    return-void

    .line 259
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 260
    const-string v1, "ENTER_VERIFICATION_SHOWN"

    .line 261
    const-string v2, "VAUE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 259
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 268
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 269
    const-string v1, "PHONE_CODE_BACK"

    .line 270
    const-string v2, "VAUE"

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 268
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I

    .line 275
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 276
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v5}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->setRequestedOrientation(I)V

    .line 45
    const v0, 0x7f0300ac

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->setContentView(I)V

    .line 47
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 48
    const-string v1, "ENTER_VERIFICATION_SHOWN"

    .line 49
    const-string v2, "VAUE"

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mAuthNumberOfRetries:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    invoke-virtual {p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Hash"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->mHash:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->initMembers()V

    .line 53
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->setListeners()V

    .line 54
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->setOnClickListeners()V

    .line 55
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->initFieldsTexts()V

    .line 56
    return-void
.end method

.method public onPinTokenSet()V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/MainActivity;->bToOpenAccountPopup:Z

    .line 140
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->setResult(I)V

    .line 141
    invoke-virtual {p0}, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;->finish()V

    .line 142
    return-void
.end method
