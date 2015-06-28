.class public Lcom/waze/profile/MeetYourWazerPopup;
.super Landroid/app/Dialog;
.source "MeetYourWazerPopup.java"


# instance fields
.field private IsValid:Z

.field already_queried:Z

.field private mContext:Landroid/content/Context;

.field private mText:Ljava/lang/String;

.field private nativeManager:Lcom/waze/NativeManager;

.field private signButton:Landroid/widget/TextView;

.field private userNameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    const v0, 0x7f06000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object v2, p0, Lcom/waze/profile/MeetYourWazerPopup;->mContext:Landroid/content/Context;

    .line 29
    iput-object v2, p0, Lcom/waze/profile/MeetYourWazerPopup;->mText:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/waze/profile/MeetYourWazerPopup;->already_queried:Z

    .line 31
    iput-boolean v1, p0, Lcom/waze/profile/MeetYourWazerPopup;->IsValid:Z

    .line 37
    iput-object p1, p0, Lcom/waze/profile/MeetYourWazerPopup;->mContext:Landroid/content/Context;

    .line 38
    sput-boolean v1, Lcom/waze/MainActivity;->bToOpenMeetYourWazer:Z

    .line 39
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/MeetYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/MeetYourWazerPopup;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/waze/profile/MeetYourWazerPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/profile/MeetYourWazerPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/waze/profile/MeetYourWazerPopup;->onContinueClicked()V

    return-void
.end method

.method private initLayout()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const v3, 0x7f090050

    .line 66
    const v0, 0x7f030082

    invoke-virtual {p0, v0}, Lcom/waze/profile/MeetYourWazerPopup;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/waze/profile/MeetYourWazerPopup;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 68
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/waze/profile/MeetYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/MeetYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_MEET_YOUR_WAZER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v0, 0x7f0903f5

    invoke-virtual {p0, v0}, Lcom/waze/profile/MeetYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/MeetYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_WAZER_REPRESENTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/waze/profile/MeetYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/MeetYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ALREADY_A_WAZERQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/waze/profile/MeetYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 72
    const v0, 0x7f0903f7

    invoke-virtual {p0, v0}, Lcom/waze/profile/MeetYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/MeetYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_REPORT_ON_ROAD_CONDITIONS_TO_COLLECT_POINTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->DisableOrientation()V

    .line 77
    invoke-virtual {p0, v3}, Lcom/waze/profile/MeetYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    new-instance v1, Lcom/waze/profile/MeetYourWazerPopup$1;

    invoke-direct {v1, p0}, Lcom/waze/profile/MeetYourWazerPopup$1;-><init>(Lcom/waze/profile/MeetYourWazerPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/waze/profile/MeetYourWazerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/MeetYourWazerPopup;->signButton:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/waze/profile/MeetYourWazerPopup;->signButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/MeetYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;

    .line 98
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_START_DRIVING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/waze/profile/MeetYourWazerPopup;->signButton:Landroid/widget/TextView;

    new-instance v1, Lcom/waze/profile/MeetYourWazerPopup$2;

    invoke-direct {v1, p0}, Lcom/waze/profile/MeetYourWazerPopup$2;-><init>(Lcom/waze/profile/MeetYourWazerPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method private onContinueClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 120
    const-string v1, "MINIMAL_START_DRIVING_CLICKED"

    const/4 v2, 0x1

    .line 119
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->SetPhoneIsFirstTime(Z)V

    .line 122
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->skipSignup()V

    .line 123
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->signup_finished()V

    .line 124
    invoke-virtual {p0}, Lcom/waze/profile/MeetYourWazerPopup;->close()V

    .line 125
    return-void
.end method


# virtual methods
.method protected close()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->SetPhoneIsFirstTime(Z)V

    .line 130
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->EnableOrientation()V

    .line 131
    invoke-virtual {p0}, Lcom/waze/profile/MeetYourWazerPopup;->dismiss()V

    .line 132
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/waze/profile/MeetYourWazerPopup;->close()V

    .line 115
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    const-string v1, "START"

    .line 46
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    invoke-direct {p0}, Lcom/waze/profile/MeetYourWazerPopup;->initLayout()V

    .line 48
    return-void
.end method
