.class public Lcom/waze/phone/PhoneKeepInMindActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "PhoneKeepInMindActivity.java"


# instance fields
.field private mBodyText:Landroid/widget/TextView;

.field private mFooterText:Landroid/widget/TextView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/LinearLayout;

.field private mNextText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method private initFieldsTexts()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/waze/phone/PhoneKeepInMindActivity;->setTextContent()V

    .line 82
    return-void
.end method

.method private initLayout()V
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f0300a1

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneKeepInMindActivity;->setContentView(I)V

    .line 104
    const v0, 0x7f0904e3

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneKeepInMindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity;->mNextButton:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f0904e4

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneKeepInMindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity;->mNextText:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0904e0

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneKeepInMindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity;->mHeaderText:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0904e1

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneKeepInMindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity;->mBodyText:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0904e2

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneKeepInMindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity;->mFooterText:Landroid/widget/TextView;

    .line 109
    return-void
.end method

.method private setListeners()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/waze/phone/PhoneKeepInMindActivity;->setOnClickListeners()V

    .line 39
    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    .prologue
    .line 43
    const v0, 0x7f0904e6

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneKeepInMindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/phone/PhoneKeepInMindActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneKeepInMindActivity$1;-><init>(Lcom/waze/phone/PhoneKeepInMindActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity;->mNextButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/phone/PhoneKeepInMindActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneKeepInMindActivity$2;-><init>(Lcom/waze/phone/PhoneKeepInMindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method private setTextContent()V
    .locals 3

    .prologue
    .line 85
    const v0, 0x7f0904e6

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneKeepInMindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SKIP_ANYWAY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity;->mHeaderText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 87
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_Q:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity;->mBodyText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 91
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_BY_SKIPPING_THIS_STEP__YOU_MAY_NOT_BE_ABLE_TO_RECOVER_YOUR_ACCOUNT__ALL_EXISTING_DATA_INCLUDING_YOUR_HISTORY__FAVORITES__POINTS_AND_RANK_WILL_BE_LOST_:Lcom/waze/strings/DisplayStrings;

    .line 90
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity;->mFooterText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 94
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_WE_HIGHLY_RECOMMEND_YOU_TAKE_ANMINUTE_TO_REGISTER_YOUR_MOBILE_NUMBER_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/waze/phone/PhoneKeepInMindActivity;->mNextText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 98
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_BACK:Lcom/waze/strings/DisplayStrings;

    .line 97
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 76
    const-string v1, "KEEP_IN_MIND_BACK"

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 27
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-direct {p0}, Lcom/waze/phone/PhoneKeepInMindActivity;->initLayout()V

    .line 29
    invoke-direct {p0}, Lcom/waze/phone/PhoneKeepInMindActivity;->initFieldsTexts()V

    .line 30
    invoke-direct {p0}, Lcom/waze/phone/PhoneKeepInMindActivity;->setListeners()V

    .line 31
    invoke-virtual {p0, v2}, Lcom/waze/phone/PhoneKeepInMindActivity;->setRequestedOrientation(I)V

    .line 33
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 34
    const-string v1, "KEEP_IN_MIND_SHOWN"

    .line 33
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    return-void
.end method
