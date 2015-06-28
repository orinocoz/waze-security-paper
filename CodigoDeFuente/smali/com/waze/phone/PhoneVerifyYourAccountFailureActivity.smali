.class public Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "PhoneVerifyYourAccountFailureActivity.java"


# static fields
.field private static final SEARCH_ACTIVITY_REQUEST_CODE:I = 0x1


# instance fields
.field private mNextButton:Landroid/widget/LinearLayout;

.field private mNextText:Landroid/widget/TextView;

.field private mVerifyBodyText:Landroid/widget/TextView;

.field private mVerifyHeaderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method private initFieldsTexts()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->setTextContent()V

    .line 113
    return-void
.end method

.method private initLayout()V
    .locals 1

    .prologue
    .line 128
    const v0, 0x7f0300aa

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->setContentView(I)V

    .line 129
    const v0, 0x7f0904e3

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->mNextButton:Landroid/widget/LinearLayout;

    .line 130
    const v0, 0x7f0904e4

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->mNextText:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f090515

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->mVerifyHeaderText:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f090516

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->mVerifyBodyText:Landroid/widget/TextView;

    .line 133
    return-void
.end method

.method private setListeners()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->setOnClickListeners()V

    .line 41
    return-void
.end method

.method private setOnClickListeners()V
    .locals 4

    .prologue
    const v3, 0x7f090517

    .line 44
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->mNextButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity$1;-><init>(Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0, v3}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ALREADY_A_WAZER_LOGIN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, v3}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 61
    invoke-virtual {p0, v3}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity$2;-><init>(Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private setTextContent()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->mVerifyHeaderText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 117
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_BAD_NEWS_BUCKOE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->mVerifyBodyText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 120
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_WE_CANST_RECOVER_YOUR_ACCOUNT_NIT_MUST_BE_HANGING_OUT_WITH_SOME_OTHER_LONGOLOAT_FRIENDS_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->mNextText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 123
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CREATE_A_NEW_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    .line 122
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 138
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phoneVerifyYourAccount onActRes requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/16 v0, 0x10e1

    if-ne p1, v0, :cond_0

    if-ne p2, v3, :cond_0

    .line 143
    sput-boolean v4, Lcom/waze/MainActivity;->bToOpenAccountPopup:Z

    .line 144
    invoke-virtual {p0, v3}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->setResult(I)V

    .line 145
    invoke-virtual {p0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->finish()V

    .line 163
    :goto_0
    return-void

    .line 149
    :cond_0
    if-ne p2, v3, :cond_1

    .line 150
    if-ne p1, v4, :cond_1

    .line 152
    if-eqz p3, :cond_1

    .line 153
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    const-string v1, "AddressItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 153
    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 161
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->initLayout()V

    .line 32
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->initFieldsTexts()V

    .line 33
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;->setListeners()V

    .line 35
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 36
    const-string v1, "CONTACTS_FAILED_SHOWN"

    const/4 v2, 0x1

    .line 35
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    return-void
.end method

.method public onPinTokenSet()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 109
    return-void
.end method
