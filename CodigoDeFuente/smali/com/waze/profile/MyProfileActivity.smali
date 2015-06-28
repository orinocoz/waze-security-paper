.class public Lcom/waze/profile/MyProfileActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "MyProfileActivity.java"

# interfaces
.implements Lcom/waze/NativeManager$IOnUserNameResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;
    }
.end annotation


# instance fields
.field private mEmailEdit:Landroid/widget/EditText;

.field private mFirstNameEdit:Landroid/widget/EditText;

.field private mIgnoreTextEdits:Z

.field private mImageTaker:Lcom/waze/profile/ImageTaker;

.field private mIsUserNameValid:Z

.field private mLastNameEdit:Landroid/widget/EditText;

.field private mMwnm:Lcom/waze/mywaze/MyWazeNativeManager;

.field private mNm:Lcom/waze/NativeManager;

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mText:Ljava/lang/String;

.field private mUserNameEdit:Landroid/widget/EditText;

.field private mUserNameStr:Ljava/lang/String;

.field private mUserNameSuggested:Ljava/lang/String;

.field private mWasEmailChanged:Z

.field private mWasFirstNameChanged:Z

.field private mWasLastNameChanged:Z

.field private mWasPasswordChanged:Z

.field private mWasUserImageChanged:Z

.field private mWasUserNameChanged:Z

.field private mWazeData:Lcom/waze/mywaze/MyWazeData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 95
    iput-object v1, p0, Lcom/waze/profile/MyProfileActivity;->mUserNameSuggested:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/waze/profile/MyProfileActivity;->mText:Ljava/lang/String;

    .line 97
    iput-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mIsUserNameValid:Z

    .line 98
    iput-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mIgnoreTextEdits:Z

    .line 99
    iput-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mWasFirstNameChanged:Z

    .line 100
    iput-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mWasLastNameChanged:Z

    .line 101
    iput-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mWasPasswordChanged:Z

    .line 102
    iput-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mWasUserNameChanged:Z

    .line 103
    iput-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mWasUserImageChanged:Z

    .line 104
    iput-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mWasEmailChanged:Z

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/MyProfileActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mWasPasswordChanged:Z

    return v0
.end method

.method static synthetic access$1(Lcom/waze/profile/MyProfileActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mWasUserNameChanged:Z

    return v0
.end method

.method static synthetic access$10(Lcom/waze/profile/MyProfileActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/waze/profile/MyProfileActivity;->mIsUserNameValid:Z

    return-void
.end method

.method static synthetic access$11(Lcom/waze/profile/MyProfileActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/waze/profile/MyProfileActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity;->mText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/waze/profile/MyProfileActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity;->mUserNameSuggested:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/waze/profile/MyProfileActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity;->mUserNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$15(Lcom/waze/profile/MyProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/waze/profile/MyProfileActivity;->changePhoneNumber()V

    return-void
.end method

.method static synthetic access$16(Lcom/waze/profile/MyProfileActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/waze/profile/MyProfileActivity;->mWasEmailChanged:Z

    return-void
.end method

.method static synthetic access$2(Lcom/waze/profile/MyProfileActivity;)Lcom/waze/profile/ImageTaker;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity;->mImageTaker:Lcom/waze/profile/ImageTaker;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/profile/MyProfileActivity;Lcom/waze/profile/ImageTaker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity;->mImageTaker:Lcom/waze/profile/ImageTaker;

    return-void
.end method

.method static synthetic access$4(Lcom/waze/profile/MyProfileActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mIgnoreTextEdits:Z

    return v0
.end method

.method static synthetic access$5(Lcom/waze/profile/MyProfileActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/waze/profile/MyProfileActivity;->mWasFirstNameChanged:Z

    return-void
.end method

.method static synthetic access$6(Lcom/waze/profile/MyProfileActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/waze/profile/MyProfileActivity;->mWasPasswordChanged:Z

    return-void
.end method

.method static synthetic access$7(Lcom/waze/profile/MyProfileActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/waze/profile/MyProfileActivity;->mWasLastNameChanged:Z

    return-void
.end method

.method static synthetic access$8(Lcom/waze/profile/MyProfileActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/waze/profile/MyProfileActivity;->mWasUserNameChanged:Z

    return-void
.end method

.method static synthetic access$9(Lcom/waze/profile/MyProfileActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    return-object v0
.end method

.method private changePhoneNumber()V
    .locals 3

    .prologue
    .line 566
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 567
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    const-string v1, "back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 569
    const-string v1, "fon_shon_rea_son"

    .line 570
    const-string v2, "UPDATE"

    .line 569
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const/16 v1, 0x457

    invoke-virtual {p0, v0, v1}, Lcom/waze/profile/MyProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 572
    return-void
.end method

.method private showErrorPopup(Lcom/waze/strings/DisplayStrings;)V
    .locals 4
    .parameter "bodyText"

    .prologue
    .line 552
    new-instance v0, Lcom/waze/profile/MyProfileActivity$15;

    invoke-direct {v0, p0}, Lcom/waze/profile/MyProfileActivity$15;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    .line 560
    .local v0, onclick:Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 561
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v2, p1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 560
    invoke-static {v1, v2, v3, v0}, Lcom/waze/MsgBox;->openMessageBoxWithCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 562
    return-void
.end method


# virtual methods
.method public SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V
    .locals 9
    .parameter "data"

    .prologue
    const v8, 0x7f090429

    const v7, 0x7f090427

    const v6, 0x7f090420

    const v5, 0x7f09041b

    const v4, 0x7f090419

    .line 447
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    .line 449
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/waze/profile/MyProfileActivity;->mIgnoreTextEdits:Z

    .line 450
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v2, v2, Lcom/waze/mywaze/MyWazeData;->mFirstName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v2, v2, Lcom/waze/mywaze/MyWazeData;->mFirstName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 452
    :cond_0
    invoke-virtual {p0, v4}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 453
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_ADD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 459
    :goto_0
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v2, v2, Lcom/waze/mywaze/MyWazeData;->mLastName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v2, v2, Lcom/waze/mywaze/MyWazeData;->mLastName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 461
    :cond_1
    invoke-virtual {p0, v5}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 462
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_ADD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 461
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 468
    :goto_1
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v2, v2, Lcom/waze/mywaze/MyWazeData;->mEmail:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v2, v2, Lcom/waze/mywaze/MyWazeData;->mEmail:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 470
    :cond_2
    invoke-virtual {p0, v8}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 471
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_ADD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 470
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 477
    :goto_2
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 479
    invoke-virtual {p0, v6}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 480
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_ADD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 486
    :goto_3
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v2, v2, Lcom/waze/mywaze/MyWazeData;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 488
    const v2, 0x7f090422

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p1, Lcom/waze/mywaze/MyWazeData;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 491
    :cond_3
    iget-object v2, p1, Lcom/waze/mywaze/MyWazeData;->mPhoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/waze/mywaze/MyWazeData;->mPhoneNumber:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p1, Lcom/waze/mywaze/MyWazeData;->mContactsLoggedIn:Z

    if-nez v2, :cond_a

    .line 493
    :cond_4
    invoke-virtual {p0, v7}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 494
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_ADD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 493
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 500
    :goto_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/waze/profile/MyProfileActivity;->mIgnoreTextEdits:Z

    .line 503
    const v2, 0x7f090416

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 504
    .local v1, userMood:Landroid/widget/ImageView;
    invoke-static {}, Lcom/waze/MoodManager;->getInstance()Lcom/waze/MoodManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/MoodManager;->getBigMoodDrawble()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    const v2, 0x7f090415

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 507
    .local v0, picture:Landroid/widget/ImageView;
    const v2, 0x7f0203a3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 508
    iget-object v2, p1, Lcom/waze/mywaze/MyWazeData;->mImageUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 509
    const v2, 0x7f090417

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 510
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_EDIT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 509
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    sget-object v2, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v3, p1, Lcom/waze/mywaze/MyWazeData;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, p0}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 513
    :cond_5
    return-void

    .line 457
    .end local v0           #picture:Landroid/widget/ImageView;
    .end local v1           #userMood:Landroid/widget/ImageView;
    :cond_6
    invoke-virtual {p0, v4}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p1, Lcom/waze/mywaze/MyWazeData;->mFirstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 466
    :cond_7
    invoke-virtual {p0, v5}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p1, Lcom/waze/mywaze/MyWazeData;->mLastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 475
    :cond_8
    invoke-virtual {p0, v8}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p1, Lcom/waze/mywaze/MyWazeData;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 484
    :cond_9
    invoke-virtual {p0, v6}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p1, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 498
    :cond_a
    invoke-virtual {p0, v7}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    iget-object v3, p1, Lcom/waze/mywaze/MyWazeData;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v2, 0x7f090415

    const/4 v1, -0x1

    .line 527
    const/16 v0, 0x457

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 529
    invoke-virtual {p0, v1}, Lcom/waze/profile/MyProfileActivity;->setResult(I)V

    .line 530
    invoke-virtual {p0}, Lcom/waze/profile/MyProfileActivity;->finish()V

    .line 532
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/profile/MyProfileActivity;->setResult(I)V

    .line 534
    invoke-virtual {p0}, Lcom/waze/profile/MyProfileActivity;->finish()V

    .line 536
    :cond_1
    const/16 v0, 0xde

    if-eq p1, v0, :cond_2

    .line 537
    const/16 v0, 0xdf

    if-ne p1, v0, :cond_3

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity;->mImageTaker:Lcom/waze/profile/ImageTaker;

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity;->mImageTaker:Lcom/waze/profile/ImageTaker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/waze/profile/ImageTaker;->onActivityResult(IILandroid/content/Intent;)V

    .line 540
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity;->mImageTaker:Lcom/waze/profile/ImageTaker;

    invoke-virtual {v0}, Lcom/waze/profile/ImageTaker;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity;->mImageTaker:Lcom/waze/profile/ImageTaker;

    invoke-virtual {v1}, Lcom/waze/profile/ImageTaker;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 542
    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildDrawingCache()V

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mWasUserImageChanged:Z

    .line 548
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 549
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mWasPasswordChanged:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/waze/profile/MyProfileActivity;->mWasUserNameChanged:Z

    if-nez v0, :cond_0

    .line 519
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ENTER_USERNAME_FIRST:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 523
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f09042c

    const v7, 0x7f090429

    const v6, 0x7f090424

    const v5, 0x7f09041f

    const v4, 0x7f090411

    .line 112
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 115
    invoke-virtual {p0}, Lcom/waze/profile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 116
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->requestWindowFeature(I)Z

    .line 117
    const v2, 0x7f03008d

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->setContentView(I)V

    .line 119
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mMwnm:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 120
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mMwnm:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v2, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 121
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->SuggestUserNameInit()V

    .line 124
    invoke-virtual {p0, v4}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MY_PROFILE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, p0, v3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 126
    invoke-virtual {p0, v4}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    new-instance v3, Lcom/waze/profile/MyProfileActivity$1;

    invoke-direct {v3, p0}, Lcom/waze/profile/MyProfileActivity$1;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v2, 0x7f090414

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 143
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_HOW_YOUR_FRIENDS_SEE_YOU:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 145
    const v2, 0x7f09042a

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsSwitchView;

    .line 146
    .local v0, allowEmail:Lcom/waze/settings/SettingsSwitchView;
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_WAZE_CAN_SEND_ME_EMAILS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->GetAllowSendMailNTV()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 148
    new-instance v2, Lcom/waze/profile/MyProfileActivity$2;

    invoke-direct {v2, p0}, Lcom/waze/profile/MyProfileActivity$2;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v0, v2}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 156
    const v2, 0x7f090415

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/profile/MyProfileActivity$3;

    invoke-direct {v3, p0}, Lcom/waze/profile/MyProfileActivity$3;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v2, 0x7f090417

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 169
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_ADD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const v2, 0x7f09042b

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ADVANCED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 173
    const v2, 0x7f090418

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 174
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_FIRST_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const v2, 0x7f09041a

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 176
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_LAST_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const v2, 0x7f09041d

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 178
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_USER_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const v2, 0x7f090421

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 180
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_PASSWORD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const v2, 0x7f090419

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mFirstNameEdit:Landroid/widget/EditText;

    .line 183
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mFirstNameEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mFirstNameEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/waze/profile/MyProfileActivity$4;

    invoke-direct {v3, p0}, Lcom/waze/profile/MyProfileActivity$4;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 200
    const v2, 0x7f090422

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mPasswordEdit:Landroid/widget/EditText;

    .line 201
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mPasswordEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mPasswordEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/waze/profile/MyProfileActivity$5;

    invoke-direct {v3, p0}, Lcom/waze/profile/MyProfileActivity$5;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 218
    const v2, 0x7f09041b

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mLastNameEdit:Landroid/widget/EditText;

    .line 219
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mLastNameEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mLastNameEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/waze/profile/MyProfileActivity$6;

    invoke-direct {v3, p0}, Lcom/waze/profile/MyProfileActivity$6;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 229
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mLastNameEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/waze/profile/MyProfileActivity$7;

    invoke-direct {v3, p0}, Lcom/waze/profile/MyProfileActivity$7;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    const v2, 0x7f090420

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mUserNameEdit:Landroid/widget/EditText;

    .line 246
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mUserNameEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v2, p0}, Lcom/waze/NativeManager;->registerOnUserNameResultListerner(Lcom/waze/NativeManager$IOnUserNameResult;)V

    .line 248
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mUserNameEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/waze/profile/MyProfileActivity$8;

    invoke-direct {v3, p0}, Lcom/waze/profile/MyProfileActivity$8;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 261
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mUserNameEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/waze/profile/MyProfileActivity$9;

    invoke-direct {v3, p0}, Lcom/waze/profile/MyProfileActivity$9;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 305
    invoke-virtual {p0, v5}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 306
    invoke-virtual {p0, v5}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 307
    new-instance v3, Lcom/waze/profile/MyProfileActivity$10;

    invoke-direct {v3, p0}, Lcom/waze/profile/MyProfileActivity$10;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v2, 0x7f090423

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 320
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_YOUR_PHOTO_AND_FULL_NAME_WILL_BE_SHOWN_TO_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {p0, v6}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 324
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_LOGIN_CREDENTIALS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 325
    const v2, 0x7f090426

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 326
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_PHONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const v2, 0x7f090427

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    const v2, 0x7f090425

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/profile/MyProfileActivity$11;

    invoke-direct {v3, p0}, Lcom/waze/profile/MyProfileActivity$11;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    const v2, 0x7f090428

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 336
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_EMAIL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {p0, v7}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {p0, v7}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mEmailEdit:Landroid/widget/EditText;

    .line 340
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mEmailEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/waze/profile/MyProfileActivity$12;

    invoke-direct {v3, p0}, Lcom/waze/profile/MyProfileActivity$12;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 357
    invoke-virtual {p0, v6}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 358
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_LOGIN_CREDENTIALS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0, v8}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/DrillDownSettingView;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 360
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_LOG_OUT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-virtual {v2, v3}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 362
    const v2, 0x7f09042d

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/DrillDownSettingView;

    .line 363
    .local v1, deleteAccountButton:Lcom/waze/settings/DrillDownSettingView;
    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_DELETE_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 364
    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/waze/settings/DrillDownSettingView;->setTextColor(I)V

    .line 366
    invoke-virtual {p0, v8}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/profile/MyProfileActivity$13;

    invoke-direct {v3, p0}, Lcom/waze/profile/MyProfileActivity$13;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    new-instance v2, Lcom/waze/profile/MyProfileActivity$14;

    invoke-direct {v2, p0}, Lcom/waze/profile/MyProfileActivity$14;-><init>(Lcom/waze/profile/MyProfileActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    const v2, 0x7f09042e

    invoke-virtual {p0, v2}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    .line 382
    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 383
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_YOU_CAN_DELETE_YOUR_ACCOUNT_AND_PERSONAL_DATA_ANYTIME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    return-void
.end method

.method protected onDestroy()V
    .locals 15

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 392
    .local v0, onClickYes:Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;
    iget-boolean v6, p0, Lcom/waze/profile/MyProfileActivity;->mWasLastNameChanged:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/waze/profile/MyProfileActivity;->mWasFirstNameChanged:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/waze/profile/MyProfileActivity;->mWasUserNameChanged:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/waze/profile/MyProfileActivity;->mWasPasswordChanged:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/waze/profile/MyProfileActivity;->mWasEmailChanged:Z

    if-eqz v6, :cond_4

    .line 393
    :cond_0
    iget-boolean v6, p0, Lcom/waze/profile/MyProfileActivity;->mIsUserNameValid:Z

    if-eqz v6, :cond_8

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mText:Ljava/lang/String;

    .line 394
    .local v3, username:Ljava/lang/String;
    :goto_0
    const-string v4, ""

    .line 395
    .local v4, password:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/waze/profile/MyProfileActivity;->mWasUserNameChanged:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/waze/profile/MyProfileActivity;->mWasPasswordChanged:Z

    if-nez v6, :cond_1

    .line 397
    const-string v3, ""

    .line 400
    :cond_1
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 401
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v1, v6, Lcom/waze/mywaze/MyWazeData;->mFirstName:Ljava/lang/String;

    .line 404
    .local v1, firstName:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 405
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v2, v6, Lcom/waze/mywaze/MyWazeData;->mLastName:Ljava/lang/String;

    .line 409
    .local v2, lastName:Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 410
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v5, v6, Lcom/waze/mywaze/MyWazeData;->mEmail:Ljava/lang/String;

    .line 412
    .local v5, email:Ljava/lang/String;
    :goto_3
    iget-boolean v6, p0, Lcom/waze/profile/MyProfileActivity;->mWasPasswordChanged:Z

    if-eqz v6, :cond_2

    .line 414
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 417
    :cond_2
    if-nez v0, :cond_3

    .line 418
    new-instance v0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;

    .end local v0           #onClickYes:Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;
    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;-><init>(Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;)V

    .line 420
    .restart local v0       #onClickYes:Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;
    :cond_3
    invoke-virtual/range {v0 .. v5}, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->setNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .end local v1           #firstName:Ljava/lang/String;
    .end local v2           #lastName:Ljava/lang/String;
    .end local v3           #username:Ljava/lang/String;
    .end local v4           #password:Ljava/lang/String;
    .end local v5           #email:Ljava/lang/String;
    :cond_4
    iget-boolean v6, p0, Lcom/waze/profile/MyProfileActivity;->mWasUserImageChanged:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mImageTaker:Lcom/waze/profile/ImageTaker;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mImageTaker:Lcom/waze/profile/ImageTaker;

    invoke-virtual {v6}, Lcom/waze/profile/ImageTaker;->hasImage()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 425
    new-instance v14, Ljava/io/File;

    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mImageTaker:Lcom/waze/profile/ImageTaker;

    invoke-virtual {v6}, Lcom/waze/profile/ImageTaker;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v14, imageFile:Ljava/io/File;
    if-nez v0, :cond_5

    .line 428
    new-instance v0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;

    .end local v0           #onClickYes:Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;
    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;-><init>(Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;)V

    .line 430
    .restart local v0       #onClickYes:Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;
    :cond_5
    invoke-virtual {v0, v14}, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->setImage(Ljava/io/File;)V

    .line 433
    .end local v14           #imageFile:Ljava/io/File;
    :cond_6
    if-eqz v0, :cond_7

    .line 434
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v6

    .line 435
    iget-object v7, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_Q:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 436
    iget-object v8, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_CHANGE_YOUR_DETAILSQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 437
    iget-object v10, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    .line 438
    iget-object v10, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_CANCEL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    move-object v10, v0

    .line 434
    invoke-virtual/range {v6 .. v13}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 440
    :cond_7
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->SuggestUserNameTerminate(Ljava/lang/String;)V

    .line 441
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v6, p0}, Lcom/waze/NativeManager;->unregisterOnUserNameResultListerner(Lcom/waze/NativeManager$IOnUserNameResult;)V

    .line 442
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 443
    return-void

    .line 393
    :cond_8
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mWazeData:Lcom/waze/mywaze/MyWazeData;

    iget-object v3, v6, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    goto/16 :goto_0

    .line 402
    .restart local v3       #username:Ljava/lang/String;
    .restart local v4       #password:Ljava/lang/String;
    :cond_9
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 406
    .restart local v1       #firstName:Ljava/lang/String;
    :cond_a
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 411
    .restart local v2       #lastName:Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lcom/waze/profile/MyProfileActivity;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3
.end method

.method public onUserNameResult(ILjava/lang/String;)V
    .locals 7
    .parameter "nType"
    .parameter "username"

    .prologue
    const/16 v6, 0x8

    const v5, 0x7f080030

    .line 576
    const/4 v2, 0x0

    .line 577
    .local v2, errorText:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 578
    iput-object p2, p0, Lcom/waze/profile/MyProfileActivity;->mUserNameStr:Ljava/lang/String;

    .line 580
    const v3, 0x7f09041e

    invoke-virtual {p0, v3}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 581
    .local v0, errCode1:Landroid/widget/TextView;
    const v3, 0x7f09041f

    invoke-virtual {p0, v3}, Lcom/waze/profile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 583
    .local v1, errCode2:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 623
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    .end local v0           #errCode1:Landroid/widget/TextView;
    .end local v1           #errCode2:Landroid/widget/TextView;
    :cond_0
    return-void

    .line 585
    .restart local v0       #errCode1:Landroid/widget/TextView;
    .restart local v1       #errCode2:Landroid/widget/TextView;
    :pswitch_0
    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_LOOKS_GOOD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 586
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/waze/profile/MyProfileActivity;->mIsUserNameValid:Z

    .line 587
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 588
    const v4, 0x7f080031

    .line 587
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 590
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 593
    :pswitch_1
    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_YOUR_USER_NAME_IS_TOO_SHORT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 595
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 598
    :pswitch_2
    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_USERNAME_IS_TOO_LONG:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 599
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 600
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 604
    :pswitch_3
    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_INVALID_CHARACTER_USE_ONLY_LETTERS_AND_NUMBERS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 606
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 609
    :pswitch_4
    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_THATS_TAKEN_TRY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 610
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 612
    iput-object p2, p0, Lcom/waze/profile/MyProfileActivity;->mUserNameSuggested:Ljava/lang/String;

    .line 613
    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mUserNameSuggested:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 616
    :pswitch_5
    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;

    .line 617
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_YOU_CANT_USE_THIS_USERNAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
