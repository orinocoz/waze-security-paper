.class public Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "PhoneVerifyYourAccountSuccessActivity.java"


# instance fields
.field private mNextButton:Landroid/widget/LinearLayout;

.field private mNextText:Landroid/widget/TextView;

.field private mVerifyBodyText:Landroid/widget/TextView;

.field private mVerifyHeaderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method private initFieldsTexts()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->setTextContent()V

    .line 61
    return-void
.end method

.method private initLayout()V
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f0300ab

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->setContentView(I)V

    .line 77
    const v0, 0x7f0904e3

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->mNextButton:Landroid/widget/LinearLayout;

    .line 78
    const v0, 0x7f0904e4

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->mNextText:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f090515

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->mVerifyHeaderText:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f090516

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->mVerifyBodyText:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method private setTextContent()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->mVerifyHeaderText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 65
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HOORAY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->mVerifyBodyText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_ACCOUNT_HAS_BEEN_VERIFIEDE_YOUR_POINTS_FAVORITES_AND_HISTORY_WILL_BE_RESTORED_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->mNextText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 71
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    .line 70
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->initLayout()V

    .line 25
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->initFieldsTexts()V

    .line 27
    invoke-static {}, Lcom/waze/phone/AddressBook;->CreateAccount()V

    .line 29
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;->mNextButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity$1;-><init>(Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 38
    const-string v1, "CONGRATS_DONE"

    const/4 v2, 0x1

    .line 37
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->signup_finished()V

    .line 52
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 53
    return-void
.end method
