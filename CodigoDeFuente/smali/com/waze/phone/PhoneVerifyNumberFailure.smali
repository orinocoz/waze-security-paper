.class public Lcom/waze/phone/PhoneVerifyNumberFailure;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "PhoneVerifyNumberFailure.java"


# instance fields
.field private mAuthNumberOfRetries:I

.field private mGotItButton:Landroid/widget/LinearLayout;

.field private mGotItText:Lcom/waze/view/text/WazeTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/phone/PhoneVerifyNumberFailure;->mAuthNumberOfRetries:I

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/waze/phone/PhoneVerifyNumberFailure;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/waze/phone/PhoneVerifyNumberFailure;->mAuthNumberOfRetries:I

    return v0
.end method

.method private initFieldsTexts()V
    .locals 3

    .prologue
    .line 44
    const v0, 0x7f09050f

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyNumberFailure;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 46
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    .line 45
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v0, 0x7f090510

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyNumberFailure;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 51
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_WE_COULDNT_VERIFY_YOUR_PHONE_NUMBER_CONTINUE_TO_MAP:Lcom/waze/strings/DisplayStrings;

    .line 50
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyNumberFailure;->mGotItText:Lcom/waze/view/text/WazeTextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 53
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SKIP_TO_MAP:Lcom/waze/strings/DisplayStrings;

    .line 52
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method private initMembers()V
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f090512

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyNumberFailure;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyNumberFailure;->mGotItText:Lcom/waze/view/text/WazeTextView;

    .line 78
    const v0, 0x7f090511

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyNumberFailure;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyNumberFailure;->mGotItButton:Landroid/widget/LinearLayout;

    .line 80
    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyNumberFailure;->mGotItButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/phone/PhoneVerifyNumberFailure$1;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneVerifyNumberFailure$1;-><init>(Lcom/waze/phone/PhoneVerifyNumberFailure;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/waze/phone/PhoneVerifyNumberFailure;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 29
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 30
    const-string v1, "AuthNumberOfRetries"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string v1, "AuthNumberOfRetries"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/waze/phone/PhoneVerifyNumberFailure;->mAuthNumberOfRetries:I

    .line 35
    :cond_0
    const v1, 0x7f0300a8

    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneVerifyNumberFailure;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyNumberFailure;->initMembers()V

    .line 38
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyNumberFailure;->setOnClickListeners()V

    .line 39
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyNumberFailure;->initFieldsTexts()V

    .line 40
    return-void
.end method
