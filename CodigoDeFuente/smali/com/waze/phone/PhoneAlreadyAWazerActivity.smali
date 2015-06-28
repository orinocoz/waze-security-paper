.class public Lcom/waze/phone/PhoneAlreadyAWazerActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "PhoneAlreadyAWazerActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;
    }
.end annotation


# instance fields
.field private bIsVerifyClicked:Z

.field private driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

.field private mAlreadyAWazerBodyText:Landroid/widget/TextView;

.field private mAlreadyAWazerHeaderText:Landroid/widget/TextView;

.field private mCreateANewAccountText:Landroid/widget/TextView;

.field private mHomeWorkFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;",
            ">;"
        }
    .end annotation
.end field

.field private mJoinedDate:Landroid/widget/TextView;

.field private mNotYourAccountText:Landroid/widget/TextView;

.field private mUserNameText:Landroid/widget/TextView;

.field private mVerifyMyAccountButton:Landroid/widget/LinearLayout;

.field private mVerifyMyAccountText:Landroid/widget/TextView;

.field private mYourRankText:Landroid/widget/TextView;

.field private mYourScoreText:Landroid/widget/TextView;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->bIsVerifyClicked:Z

    .line 61
    const-class v0, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mHomeWorkFlags:Ljava/util/EnumSet;

    .line 28
    return-void
.end method

.method private SetMood(Lcom/waze/mywaze/MyWazeData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 245
    const v0, 0x7f0904da

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/waze/MoodManager;->getInstance()Lcom/waze/MoodManager;

    move-result-object v1

    iget-object v2, p1, Lcom/waze/mywaze/MyWazeData;->mMood:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/waze/MoodManager;->getMenuMoodDrawableByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    return-void
.end method

.method static synthetic access$0(Lcom/waze/phone/PhoneAlreadyAWazerActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/phone/PhoneAlreadyAWazerActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->bIsVerifyClicked:Z

    return-void
.end method

.method private fillFavoritesFlags()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0, p0}, Lcom/waze/navigate/DriveToNativeManager;->getTopTenFavorites(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 297
    return-void
.end method

.method private initFieldsTexts()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mAlreadyAWazerHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 90
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOU_LOOK_FAMILIAR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mAlreadyAWazerBodyText:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 93
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_PHONE_NUMBER_IS_ALREADY_ASSOCIATED_WITH_AN_EXISTING_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mVerifyMyAccountText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 95
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YES_ITS_ME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mNotYourAccountText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mCreateANewAccountText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 100
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CREATE_A_NEW_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method private initMembers()V
    .locals 1

    .prologue
    .line 205
    const v0, 0x7f0904d4

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mAlreadyAWazerHeaderText:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0904d5

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mAlreadyAWazerBodyText:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f0904d6

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mUserNameText:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f0904d7

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mYourScoreText:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f0904d8

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mYourRankText:Landroid/widget/TextView;

    .line 211
    const v0, 0x7f0904d9

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mJoinedDate:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f0904db

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mVerifyMyAccountButton:Landroid/widget/LinearLayout;

    .line 213
    const v0, 0x7f0904dc

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mVerifyMyAccountText:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0904dd

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mNotYourAccountText:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f0904de

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mCreateANewAccountText:Landroid/widget/TextView;

    .line 217
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 218
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    .line 220
    return-void
.end method

.method private initMyWazeData()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeDataForVerification(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 86
    return-void
.end method

.method private setJoinedString(Lcom/waze/mywaze/MyWazeData;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v1, p1, Lcom/waze/mywaze/MyWazeData;->mJoinedStr:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/waze/mywaze/MyWazeData;->mJoinedStr:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mJoinedDate:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 282
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LAST_CONNECTED_PD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 283
    iget-object v3, p1, Lcom/waze/mywaze/MyWazeData;->mJoinedStr:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 281
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, sJoined:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mJoinedDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .end local v0           #sJoined:Ljava/lang/String;
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mJoinedDate:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setOnClickListeners()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mVerifyMyAccountButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/phone/PhoneAlreadyAWazerActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity$1;-><init>(Lcom/waze/phone/PhoneAlreadyAWazerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mCreateANewAccountText:Landroid/widget/TextView;

    new-instance v1, Lcom/waze/phone/PhoneAlreadyAWazerActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity$2;-><init>(Lcom/waze/phone/PhoneAlreadyAWazerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method private setRank(Lcom/waze/mywaze/MyWazeData;)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 265
    iget v1, p1, Lcom/waze/mywaze/MyWazeData;->mRank:I

    if-lez v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 267
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_RANKC_PD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    .line 268
    iget v3, p1, Lcom/waze/mywaze/MyWazeData;->mRank:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 266
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, rankString:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mYourRankText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    return-void

    .line 270
    .end local v0           #rankString:Ljava/lang/String;
    :cond_0
    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 271
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_YOUR_RANKC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 272
    iget-object v3, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_NSA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 270
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #rankString:Ljava/lang/String;
    goto :goto_0
.end method

.method private setScore(Lcom/waze/mywaze/MyWazeData;)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    iget v1, p1, Lcom/waze/mywaze/MyWazeData;->mRank:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 252
    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 253
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUR_SCOREC_PD_POINTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    .line 254
    iget v3, p1, Lcom/waze/mywaze/MyWazeData;->mPts:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 252
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, rankString:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mYourScoreText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    return-void

    .line 256
    .end local v0           #rankString:Ljava/lang/String;
    :cond_0
    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 257
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_YOUR_SCOREC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 258
    iget-object v3, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_NSA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 256
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #rankString:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public AuthenticateCallback(I)V
    .locals 8
    .parameter "nType"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 180
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 181
    const-string v3, "CONTACTS_RESPONSE"

    .line 182
    const-string v4, "VAUE"

    .line 183
    if-nez p1, :cond_0

    .line 184
    const-string v1, "SUCCESS"

    .line 180
    :goto_0
    invoke-virtual {v2, v3, v4, v1, v6}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    if-nez p1, :cond_1

    .line 189
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    sget-boolean v2, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    invoke-virtual {v1, v5, v2, v7, v7}, Lcom/waze/mywaze/MyWazeNativeManager;->setContactsSignIn(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_1
    return-void

    .line 185
    :cond_0
    const-string v1, "FAILURE"

    goto :goto_0

    .line 191
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v6}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 198
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 199
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

    invoke-static {v1, v2, v5}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mUserNameText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->setScore(Lcom/waze/mywaze/MyWazeData;)V

    .line 238
    invoke-direct {p0, p1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->setRank(Lcom/waze/mywaze/MyWazeData;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->setJoinedString(Lcom/waze/mywaze/MyWazeData;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->SetMood(Lcom/waze/mywaze/MyWazeData;)V

    .line 241
    return-void
.end method

.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 4
    .parameter "ai"

    .prologue
    .line 300
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 318
    iget-object v2, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mHomeWorkFlags:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    new-instance v1, Landroid/content/Intent;

    .line 322
    const-class v2, Lcom/waze/phone/PhoneVerifyYourAccountActivity;

    .line 321
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "homeWorkFlags"

    iget-object v3, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mHomeWorkFlags:Ljava/util/EnumSet;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 324
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 328
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 301
    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 300
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :pswitch_1
    iget-object v2, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mHomeWorkFlags:Ljava/util/EnumSet;

    sget-object v3, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->HOME:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 309
    :pswitch_2
    iget-object v2, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mHomeWorkFlags:Ljava/util/EnumSet;

    sget-object v3, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->WORK:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 225
    if-ne p2, v0, :cond_0

    .line 227
    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->setResult(I)V

    .line 228
    invoke-virtual {p0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->finish()V

    .line 231
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 232
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f0300a0

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->setContentView(I)V

    .line 72
    invoke-direct {p0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->initMembers()V

    .line 73
    invoke-direct {p0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->setOnClickListeners()V

    .line 74
    invoke-direct {p0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->initFieldsTexts()V

    .line 75
    invoke-direct {p0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->initMyWazeData()V

    .line 77
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 78
    const-string v1, "ALREADY_WAZER_SHOWN"

    const/4 v2, 0x1

    .line 77
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    iget-object v0, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mCreateANewAccountText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->mCreateANewAccountText:Landroid/widget/TextView;

    .line 81
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 66
    return-void
.end method

.method public onPinTokenSet()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 137
    iget-boolean v1, p0, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->bIsVerifyClicked:Z

    if-eqz v1, :cond_0

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/phone/PhoneVerifyYourAccountSuccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/waze/MainActivity;->bToOpenAccountPopup:Z

    .line 145
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->setResult(I)V

    .line 146
    invoke-virtual {p0}, Lcom/waze/phone/PhoneAlreadyAWazerActivity;->finish()V

    goto :goto_0
.end method
