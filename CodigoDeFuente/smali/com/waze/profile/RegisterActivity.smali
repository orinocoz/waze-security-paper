.class public Lcom/waze/profile/RegisterActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "RegisterActivity.java"


# instance fields
.field private EmailBody:Landroid/widget/TextView;

.field private EmailTitile:Landroid/widget/TextView;

.field private emailView:Landroid/widget/TextView;

.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field private nextButton:Landroid/widget/TextView;

.field private nickView:Landroid/widget/TextView;

.field private passView:Landroid/widget/TextView;

.field private userView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 33
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/RegisterActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 34
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/RegisterActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity;->userView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity;->passView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity;->nickView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity;->emailView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/profile/RegisterActivity;)Lcom/waze/mywaze/MyWazeNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/profile/RegisterActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity;->nextButton:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public OnResponse(Z)V
    .locals 4
    .parameter "bIsSuccess"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 117
    if-nez p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity;->nextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 124
    const-string v1, "JOIN_NEXT"

    .line 123
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f090058

    .line 39
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0300be

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0, v3}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_PROFILE:Lcom/waze/strings/DisplayStrings;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Z)V

    .line 44
    invoke-virtual {p0, v3}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    invoke-virtual {v0}, Lcom/waze/view/title/TitleBar;->setUpButtonDisabled()V

    .line 45
    const v0, 0x7f09055f

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/RegisterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_DETAILS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/RegisterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_USERNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v0, 0x7f090382

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/RegisterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PASSWORD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f090384

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/RegisterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NICKNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v0, 0x7f090563

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/RegisterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_EMAIL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v0, 0x7f090564

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/RegisterActivity;->nextButton:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity;->nextButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/RegisterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v0, 0x7f090381

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/RegisterActivity;->userView:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f090383

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/RegisterActivity;->passView:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f090561

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/RegisterActivity;->EmailTitile:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity;->EmailTitile:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/RegisterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SIGN_UP_EMAIL_ADDRESS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v0, 0x7f090560

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/RegisterActivity;->nickView:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0904d0

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/RegisterActivity;->emailView:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f090562

    invoke-virtual {p0, v0}, Lcom/waze/profile/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/RegisterActivity;->EmailBody:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity;->EmailBody:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/waze/profile/RegisterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SIGN_UP_EMAIL_BODY1:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/profile/RegisterActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SIGN_UP_EMAIL_BODY2:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity;->nextButton:Landroid/widget/TextView;

    new-instance v1, Lcom/waze/profile/RegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/profile/RegisterActivity$1;-><init>(Lcom/waze/profile/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/waze/profile/RegisterActivity;->userView:Landroid/widget/TextView;

    new-instance v1, Lcom/waze/profile/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/profile/RegisterActivity$2;-><init>(Lcom/waze/profile/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    return-void
.end method

.method public openWelcome()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/waze/profile/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/waze/AppService;->showActivity(Landroid/content/Intent;)V

    .line 112
    invoke-virtual {p0}, Lcom/waze/profile/RegisterActivity;->finish()V

    .line 113
    return-void
.end method
