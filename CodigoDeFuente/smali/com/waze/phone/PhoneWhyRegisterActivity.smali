.class public Lcom/waze/phone/PhoneWhyRegisterActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "PhoneWhyRegisterActivity.java"


# instance fields
.field private mGotItButton:Landroid/widget/LinearLayout;

.field private mGotItText:Lcom/waze/view/text/WazeTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method private initFieldsTexts()V
    .locals 3

    .prologue
    .line 37
    const v0, 0x7f09050f

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneWhyRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 39
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_WHY_REGISTERQ:Lcom/waze/strings/DisplayStrings;

    .line 38
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v0, 0x7f090510

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneWhyRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 44
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HELP_US_KEEP_YOUR_ACCOUNT_SAFE_BY_ENTERING_YOUR_PHONE_NUMBER__THIS_ALLOWS_YOU_TO_RESTORE_YOUR_ACCOUNT_AT_ANY_TIME__AND_ENJOY_THE_FULL_WAZE_EXPERIENCE_:Lcom/waze/strings/DisplayStrings;

    .line 43
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/waze/phone/PhoneWhyRegisterActivity;->mGotItText:Lcom/waze/view/text/WazeTextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 46
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_GOT_IT:Lcom/waze/strings/DisplayStrings;

    .line 45
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method private initMembers()V
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f090512

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneWhyRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneWhyRegisterActivity;->mGotItText:Lcom/waze/view/text/WazeTextView;

    .line 65
    const v0, 0x7f090511

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneWhyRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/phone/PhoneWhyRegisterActivity;->mGotItButton:Landroid/widget/LinearLayout;

    .line 67
    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/waze/phone/PhoneWhyRegisterActivity;->mGotItButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/phone/PhoneWhyRegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneWhyRegisterActivity$1;-><init>(Lcom/waze/phone/PhoneWhyRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 23
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0, v2}, Lcom/waze/phone/PhoneWhyRegisterActivity;->setRequestedOrientation(I)V

    .line 25
    const v0, 0x7f0300ad

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneWhyRegisterActivity;->setContentView(I)V

    .line 27
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 28
    const-string v1, "WHY_REGISTER_SHOWN"

    .line 27
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    invoke-direct {p0}, Lcom/waze/phone/PhoneWhyRegisterActivity;->initMembers()V

    .line 31
    invoke-direct {p0}, Lcom/waze/phone/PhoneWhyRegisterActivity;->setOnClickListeners()V

    .line 32
    invoke-direct {p0}, Lcom/waze/phone/PhoneWhyRegisterActivity;->initFieldsTexts()V

    .line 33
    return-void
.end method
