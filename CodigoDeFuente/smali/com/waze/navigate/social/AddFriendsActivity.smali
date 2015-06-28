.class public Lcom/waze/navigate/social/AddFriendsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "AddFriendsActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;


# static fields
.field private static final ACTIVITY_RESULT_ADD_FROM_CONTACTS:I = 0x3e9

.field private static final ACTIVITY_RESULT_ADD_FROM_FB:I = 0x3eb

.field private static final ACTIVITY_RESULT_LOGIN_CONTACTS:I = 0x3ea

.field private static final ACTIVITY_RESULT_LOGIN_FB:I = 0x3ec

.field private static final SHOW_FRIENDS_ADDED_YOU:Z = false

.field protected static final TIMEOUT_BETWEEN_EVENTS:J = 0x64L


# instance fields
.field private AddedFriendsLayout:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field protected mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

.field private mFriendsSuggestionLayout:Landroid/widget/LinearLayout;

.field private nativeManager:Lcom/waze/NativeManager;

.field private viewToConfirm:Landroid/view/View;

.field private viewToRemove:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/waze/navigate/social/AddFriendsActivity;->viewToRemove:Landroid/view/View;

    .line 49
    iput-object v0, p0, Lcom/waze/navigate/social/AddFriendsActivity;->viewToConfirm:Landroid/view/View;

    .line 34
    return-void
.end method

.method private PendingAddFriend(Lcom/waze/user/FriendUserData;)V
    .locals 5
    .parameter "friend"

    .prologue
    .line 293
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, friendLayoutInListLayout:Landroid/view/View;
    iget v2, p1, Lcom/waze/user/FriendUserData;->mContactID:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 297
    iget v2, p1, Lcom/waze/user/FriendUserData;->mContactID:I

    invoke-static {v2}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v1

    .line 299
    .local v1, mPerson:Lcom/waze/autocomplete/Person;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {v1}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/waze/user/FriendUserData;->setImage(Ljava/lang/String;)V

    .line 305
    .end local v1           #mPerson:Lcom/waze/autocomplete/Person;
    :cond_0
    iget-object v2, p1, Lcom/waze/user/FriendUserData;->name:Ljava/lang/String;

    .line 306
    iget-object v3, p1, Lcom/waze/user/FriendUserData;->pictureUrl:Ljava/lang/String;

    .line 305
    invoke-static {p0, v0, v2, v3}, Lcom/waze/navigate/social/AddFriendsUtils;->setNameAndImage(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const v2, 0x7f090089

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 309
    new-instance v3, Lcom/waze/navigate/social/AddFriendsActivity$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/waze/navigate/social/AddFriendsActivity$6;-><init>(Lcom/waze/navigate/social/AddFriendsActivity;Landroid/view/View;Lcom/waze/user/FriendUserData;)V

    .line 308
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v2, 0x7f09008a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 324
    new-instance v3, Lcom/waze/navigate/social/AddFriendsActivity$7;

    invoke-direct {v3, p0, v0, p1}, Lcom/waze/navigate/social/AddFriendsActivity$7;-><init>(Lcom/waze/navigate/social/AddFriendsActivity;Landroid/view/View;Lcom/waze/user/FriendUserData;)V

    .line 323
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity;->AddedFriendsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    return-void
.end method

.method private RecommendedAddFriend(Lcom/waze/user/FriendUserData;)V
    .locals 5
    .parameter "friend"

    .prologue
    .line 257
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, friendLayoutInListLayout:Landroid/view/View;
    iget v2, p1, Lcom/waze/user/FriendUserData;->mContactID:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 261
    iget v2, p1, Lcom/waze/user/FriendUserData;->mContactID:I

    invoke-static {v2}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v1

    .line 263
    .local v1, mPerson:Lcom/waze/autocomplete/Person;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v1}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/waze/user/FriendUserData;->setImage(Ljava/lang/String;)V

    .line 269
    .end local v1           #mPerson:Lcom/waze/autocomplete/Person;
    :cond_0
    iget-object v2, p1, Lcom/waze/user/FriendUserData;->name:Ljava/lang/String;

    .line 270
    iget-object v3, p1, Lcom/waze/user/FriendUserData;->pictureUrl:Ljava/lang/String;

    .line 269
    invoke-static {p0, v0, v2, v3}, Lcom/waze/navigate/social/AddFriendsUtils;->setNameAndImage(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const v2, 0x7f090089

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    const v2, 0x7f09008a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 274
    new-instance v3, Lcom/waze/navigate/social/AddFriendsActivity$5;

    invoke-direct {v3, p0, v0, p1}, Lcom/waze/navigate/social/AddFriendsActivity$5;-><init>(Lcom/waze/navigate/social/AddFriendsActivity;Landroid/view/View;Lcom/waze/user/FriendUserData;)V

    .line 273
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity;->mFriendsSuggestionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/AddFriendsActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/social/AddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/waze/navigate/social/AddFriendsActivity;->endDrivePopulateFriends()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/navigate/social/AddFriendsActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsActivity;->viewToConfirm:Landroid/view/View;

    return-void
.end method

.method static synthetic access$3(Lcom/waze/navigate/social/AddFriendsActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsActivity;->viewToRemove:Landroid/view/View;

    return-void
.end method

.method private endDrivePopulateFriends()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    if-nez v2, :cond_1

    .line 253
    :cond_0
    return-void

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity;->mFriendsSuggestionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 241
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    iget-object v2, v2, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 243
    const-string v2, "ADD_FRIENDS_OPTIONS_SHOWN"

    const-string v3, "VAUE"

    iget-object v4, p0, Lcom/waze/navigate/social/AddFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    iget-object v4, v4, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    array-length v4, v4

    invoke-static {v2, v3, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    iget-object v3, v2, Lcom/waze/navigate/social/AddFriendsData;->SuggestionFriends:[Lcom/waze/user/FriendUserData;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_3

    .line 249
    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity;->mAddFriendsData:Lcom/waze/navigate/social/AddFriendsData;

    iget-object v2, v2, Lcom/waze/navigate/social/AddFriendsData;->WaitingForApprovalFriends:[Lcom/waze/user/FriendUserData;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 250
    .local v0, friend:Lcom/waze/user/FriendUserData;
    invoke-direct {p0, v0}, Lcom/waze/navigate/social/AddFriendsActivity;->PendingAddFriend(Lcom/waze/user/FriendUserData;)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    .end local v0           #friend:Lcom/waze/user/FriendUserData;
    :cond_3
    aget-object v0, v3, v2

    .line 247
    .restart local v0       #friend:Lcom/waze/user/FriendUserData;
    invoke-direct {p0, v0}, Lcom/waze/navigate/social/AddFriendsActivity;->RecommendedAddFriend(Lcom/waze/user/FriendUserData;)V

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private readFriendSuggestions()V
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 175
    .local v0, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    new-instance v1, Lcom/waze/navigate/social/AddFriendsActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/AddFriendsActivity$4;-><init>(Lcom/waze/navigate/social/AddFriendsActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getAddFriendsData(Lcom/waze/navigate/DriveToNativeManager$AddFriendsListener;)V

    .line 225
    return-void
.end method


# virtual methods
.method protected facebookPrivacyClicked()V
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    .line 342
    new-instance v1, Lcom/waze/navigate/social/AddFriendsActivity$8;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/AddFriendsActivity$8;-><init>(Lcom/waze/navigate/social/AddFriendsActivity;)V

    .line 341
    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;)V

    .line 350
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v2, 0xc9

    const/4 v1, -0x1

    .line 54
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 55
    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/AddFriendsActivity;->setResult(I)V

    .line 56
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFriendsActivity;->finish()V

    .line 73
    :goto_0
    return-void

    .line 59
    :cond_0
    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/waze/navigate/social/AddFriendsActivity;->readFriendSuggestions()V

    goto :goto_0

    .line 63
    :cond_1
    if-ne p2, v1, :cond_2

    .line 64
    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/AddFriendsActivity;->setResult(I)V

    .line 65
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFriendsActivity;->finish()V

    .line 67
    :cond_2
    if-ne p2, v2, :cond_3

    .line 68
    invoke-virtual {p0, v2}, Lcom/waze/navigate/social/AddFriendsActivity;->setResult(I)V

    .line 69
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFriendsActivity;->finish()V

    .line 72
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f09007c

    const v4, 0x7f090075

    const v3, 0x7f09007d

    .line 77
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFriendsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/waze/navigate/social/AddFriendsActivity;->inflater:Landroid/view/LayoutInflater;

    .line 79
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/social/AddFriendsActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 82
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFriendsActivity;->setContentView(I)V

    .line 83
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ADD_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 86
    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/navigate/social/AddFriendsActivity;->AddedFriendsLayout:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f09007a

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/navigate/social/AddFriendsActivity;->mFriendsSuggestionLayout:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 90
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ADD_FRIENDS_DESCRIPTION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0, v4}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    .line 94
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ADD_FROM_CONTACTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v4}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/navigate/social/AddFriendsActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/AddFriendsActivity$1;-><init>(Lcom/waze/navigate/social/AddFriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-direct {p0}, Lcom/waze/navigate/social/AddFriendsActivity;->readFriendSuggestions()V

    .line 142
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsTitleText;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 143
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_MORE_OPTIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, v5}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 145
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ADD_FROM_FACEBOOK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, v5}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/navigate/social/AddFriendsActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/AddFriendsActivity$2;-><init>(Lcom/waze/navigate/social/AddFriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    .line 162
    invoke-virtual {p0, v3}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    .line 163
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SEARCH:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v3}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/navigate/social/AddFriendsActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/navigate/social/AddFriendsActivity$3;-><init>(Lcom/waze/navigate/social/AddFriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->addFriendsChangedListener(Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;)V

    .line 171
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->removeFriendsChangedListener(Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;)V

    .line 231
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 232
    return-void
.end method

.method public onFriendsChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 354
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity;->viewToRemove:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity;->AddedFriendsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsActivity;->viewToRemove:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 356
    iput-object v4, p0, Lcom/waze/navigate/social/AddFriendsActivity;->viewToRemove:Landroid/view/View;

    .line 358
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity;->AddedFriendsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 359
    const v1, 0x7f090076

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 360
    const v1, 0x7f090077

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 361
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/waze/navigate/social/AddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity;->viewToConfirm:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity;->viewToConfirm:Landroid/view/View;

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 375
    .local v0, button:Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsActivity;->viewToConfirm:Landroid/view/View;

    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iput-object v4, p0, Lcom/waze/navigate/social/AddFriendsActivity;->viewToConfirm:Landroid/view/View;

    .line 380
    .end local v0           #button:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method
