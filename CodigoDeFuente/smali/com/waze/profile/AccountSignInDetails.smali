.class public Lcom/waze/profile/AccountSignInDetails;
.super Landroid/app/Dialog;
.source "AccountSignInDetails.java"


# static fields
.field static final PROFILE_IMAGE_FILE:Ljava/lang/String; = "ProfileImage"

.field private static active:Z

.field private static bIsBackFromFBScreen:Z

.field private static bIsContinueClicked:Z

.field private static bIsFacebookClicked:Z

.field private static bIsNew:Z


# instance fields
.field bIsFacebookConnect:Z

.field private facebookButton:Landroid/widget/TextView;

.field private firstNameView:Landroid/widget/TextView;

.field private lastNameView:Landroid/widget/TextView;

.field private mCtx:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImageTaker:Lcom/waze/profile/ImageTaker;

.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field private signButton:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/waze/profile/AccountSignInDetails;->active:Z

    .line 46
    sput-boolean v0, Lcom/waze/profile/AccountSignInDetails;->bIsFacebookClicked:Z

    .line 48
    sput-boolean v0, Lcom/waze/profile/AccountSignInDetails;->bIsBackFromFBScreen:Z

    .line 49
    sput-boolean v0, Lcom/waze/profile/AccountSignInDetails;->bIsContinueClicked:Z

    .line 50
    sput-boolean v0, Lcom/waze/profile/AccountSignInDetails;->bIsNew:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const v0, 0x7f06000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/profile/AccountSignInDetails;->bIsFacebookConnect:Z

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->mHandler:Landroid/os/Handler;

    .line 58
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->nativeManager:Lcom/waze/NativeManager;

    .line 59
    invoke-static {}, Lcom/waze/phone/AddressBook;->CreateAccount()V

    .line 60
    iput-object p1, p0, Lcom/waze/profile/AccountSignInDetails;->mCtx:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/AccountSignInDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/waze/profile/AccountSignInDetails;->onContinueClicked()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/profile/AccountSignInDetails;Lcom/waze/profile/ImageTaker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/waze/profile/AccountSignInDetails;->mImageTaker:Lcom/waze/profile/ImageTaker;

    return-void
.end method

.method static synthetic access$2(Lcom/waze/profile/AccountSignInDetails;)Lcom/waze/profile/ImageTaker;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->mImageTaker:Lcom/waze/profile/ImageTaker;

    return-object v0
.end method

.method static synthetic access$3(Z)V
    .locals 0
    .parameter

    .prologue
    .line 46
    sput-boolean p0, Lcom/waze/profile/AccountSignInDetails;->bIsFacebookClicked:Z

    return-void
.end method

.method static synthetic access$4(Lcom/waze/profile/AccountSignInDetails;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private close()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 217
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/MainActivity;->bToOpenAccountPopup:Z

    .line 218
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 219
    sget-boolean v0, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    iget-object v2, p0, Lcom/waze/profile/AccountSignInDetails;->firstNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/profile/AccountSignInDetails;->lastNameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/waze/mywaze/MyWazeNativeManager;->setContactsSignIn(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-boolean v0, p0, Lcom/waze/profile/AccountSignInDetails;->bIsFacebookConnect:Z

    if-nez v0, :cond_1

    .line 227
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    iget-object v2, p0, Lcom/waze/profile/AccountSignInDetails;->firstNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/profile/AccountSignInDetails;->lastNameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/waze/mywaze/MyWazeNativeManager;->setContactsSignIn(ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->SuggestUserNameInit()V

    .line 234
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->firstNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/profile/AccountSignInDetails;->lastNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/NativeManager;->SuggestUserNameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initLayout()V
    .locals 6

    .prologue
    const v2, 0x7f09004f

    const/4 v5, 0x0

    const/4 v1, -0x1

    const v4, 0x7f090054

    const/16 v3, 0x8

    .line 77
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/waze/profile/AccountSignInDetails;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/waze/profile/AccountSignInDetails;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 80
    sget-boolean v0, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0, v2}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->nativeManager:Lcom/waze/NativeManager;

    .line 82
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ACCOUNT_DETAILS_CAPITAL_UPGRADE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_VISIBLE_ONLY_TO_YOUR_WAZE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->nativeManager:Lcom/waze/NativeManager;

    .line 91
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_ADD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->firstNameView:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0, v4}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->lastNameView:Landroid/widget/TextView;

    .line 96
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->DisableOrientation()V

    .line 98
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_FIRST_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p0, v4}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LAST_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 101
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->signButton:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->signButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->nativeManager:Lcom/waze/NativeManager;

    .line 103
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->signButton:Landroid/widget/TextView;

    new-instance v1, Lcom/waze/profile/AccountSignInDetails$1;

    invoke-direct {v1, p0}, Lcom/waze/profile/AccountSignInDetails$1;-><init>(Lcom/waze/profile/AccountSignInDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p0, v4}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/waze/profile/AccountSignInDetails$2;

    invoke-direct {v1, p0}, Lcom/waze/profile/AccountSignInDetails$2;-><init>(Lcom/waze/profile/AccountSignInDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 122
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/profile/AccountSignInDetails$3;

    invoke-direct {v1, p0}, Lcom/waze/profile/AccountSignInDetails$3;-><init>(Lcom/waze/profile/AccountSignInDetails;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->facebookButton:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->facebookButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_IMPORT_FROM_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->facebookButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 135
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 137
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookLoggedInNTV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->facebookButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :goto_1
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->facebookButton:Landroid/widget/TextView;

    new-instance v1, Lcom/waze/profile/AccountSignInDetails$4;

    invoke-direct {v1, p0}, Lcom/waze/profile/AccountSignInDetails$4;-><init>(Lcom/waze/profile/AccountSignInDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0, v2}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->nativeManager:Lcom/waze/NativeManager;

    .line 85
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ACCOUNT_DETAILS_CAPITAL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->facebookButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private onContinueClicked()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 192
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 193
    const-string v2, "ACCOUNT_DETAILS_CONTINUE"

    .line 192
    invoke-virtual {v1, v2, v3, v3, v4}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->firstNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->firstNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->lastNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->lastNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_FILL_FIRST_AND_LAST_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 213
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->mImageTaker:Lcom/waze/profile/ImageTaker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->mImageTaker:Lcom/waze/profile/ImageTaker;

    invoke-virtual {v1}, Lcom/waze/profile/ImageTaker;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->mImageTaker:Lcom/waze/profile/ImageTaker;

    invoke-virtual {v1}, Lcom/waze/profile/ImageTaker;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, imageFile:Ljava/io/File;
    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->UploadProfileImage(Ljava/lang/String;)V

    .line 210
    .end local v0           #imageFile:Ljava/io/File;
    :cond_2
    sput-boolean v4, Lcom/waze/profile/AccountSignInDetails;->bIsContinueClicked:Z

    .line 211
    invoke-direct {p0}, Lcom/waze/profile/AccountSignInDetails;->close()V

    goto :goto_0
.end method


# virtual methods
.method public SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V
    .locals 8
    .parameter "Data"

    .prologue
    const v7, 0x7f090054

    const v6, 0x7f090053

    .line 294
    iget-object v4, p1, Lcom/waze/mywaze/MyWazeData;->mFirstName:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/waze/mywaze/MyWazeData;->mFirstName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 296
    invoke-virtual {p0, v6}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p1, Lcom/waze/mywaze/MyWazeData;->mFirstName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    :goto_0
    iget-object v4, p1, Lcom/waze/mywaze/MyWazeData;->mLastName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/waze/mywaze/MyWazeData;->mLastName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 309
    invoke-virtual {p0, v7}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p1, Lcom/waze/mywaze/MyWazeData;->mLastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_1
    :goto_1
    const v4, 0x7f090051

    invoke-virtual {p0, v4}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 323
    .local v0, picture:Landroid/widget/ImageView;
    iget-boolean v4, p1, Lcom/waze/mywaze/MyWazeData;->mFaceBookLoggedIn:Z

    if-eqz v4, :cond_5

    .line 326
    sget-object v4, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v5, p1, Lcom/waze/mywaze/MyWazeData;->mImageUrl:Ljava/lang/String;

    new-instance v6, Lcom/waze/profile/AccountSignInDetails$5;

    invoke-direct {v6, p0, v0}, Lcom/waze/profile/AccountSignInDetails$5;-><init>(Lcom/waze/profile/AccountSignInDetails;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5, v6}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 347
    :cond_2
    :goto_2
    return-void

    .line 300
    .end local v0           #picture:Landroid/widget/ImageView;
    :cond_3
    invoke-static {}, Lcom/waze/phone/AddressBook;->getLocalFirstName()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, sFirstName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p0, v6}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    .end local v1           #sFirstName:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/waze/phone/AddressBook;->getLocalLastName()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, sLastName:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 317
    invoke-virtual {p0, v7}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 340
    .end local v3           #sLastName:Ljava/lang/String;
    .restart local v0       #picture:Landroid/widget/ImageView;
    :cond_5
    invoke-static {}, Lcom/waze/phone/AddressBook;->getLocalImageURI()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, sImage:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 344
    sget-object v4, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v5

    invoke-virtual {v4, v2, v0, v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/waze/ifs/ui/ActivityBase;)V

    goto :goto_2
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/MainActivity;->bToOpenAccountPopup:Z

    .line 242
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 243
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 244
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v2, 0x7f090051

    .line 247
    const/16 v0, 0xde

    if-eq p1, v0, :cond_0

    .line 248
    const/16 v0, 0xdf

    if-ne p1, v0, :cond_1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->mImageTaker:Lcom/waze/profile/ImageTaker;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->mImageTaker:Lcom/waze/profile/ImageTaker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/waze/profile/ImageTaker;->onActivityResult(IILandroid/content/Intent;)V

    .line 251
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails;->mImageTaker:Lcom/waze/profile/ImageTaker;

    invoke-virtual {v0}, Lcom/waze/profile/ImageTaker;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0, v2}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->mImageTaker:Lcom/waze/profile/ImageTaker;

    .line 253
    invoke-virtual {v1}, Lcom/waze/profile/ImageTaker;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    invoke-virtual {p0, v2}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildDrawingCache()V

    .line 258
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/waze/profile/AccountSignInDetails;->initLayout()V

    .line 68
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 69
    const-string v1, "ACCOUNT_DETAILS_SHOWN"

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    return-void
.end method

.method public onFacebookTokenSet()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 261
    sget-boolean v1, Lcom/waze/profile/AccountSignInDetails;->bIsFacebookClicked:Z

    if-eqz v1, :cond_1

    .line 263
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 265
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 266
    iput-boolean v5, p0, Lcom/waze/profile/AccountSignInDetails;->bIsFacebookConnect:Z

    .line 267
    sput-boolean v3, Lcom/waze/profile/AccountSignInDetails;->bIsFacebookClicked:Z

    .line 268
    iget-object v1, p0, Lcom/waze/profile/AccountSignInDetails;->facebookButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lcom/waze/profile/AccountSignInDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 272
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 273
    .local v0, nm:Lcom/waze/NativeManager;
    invoke-virtual {v0}, Lcom/waze/NativeManager;->GetSocialIsFirstTimeNTV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->isJustJoinedNTV()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {v0, v3}, Lcom/waze/NativeManager;->SetSocialIsFirstTime(Z)V

    .line 276
    const-string v1, "START"

    invoke-virtual {v0, v1, v4, v4, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 289
    .end local v0           #nm:Lcom/waze/NativeManager;
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    sget-boolean v1, Lcom/waze/profile/AccountSignInDetails;->bIsContinueClicked:Z

    if-eqz v1, :cond_0

    .line 282
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->SuggestUserNameInit()V

    .line 285
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/profile/AccountSignInDetails;->firstNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/profile/AccountSignInDetails;->lastNameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/waze/NativeManager;->SuggestUserNameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
