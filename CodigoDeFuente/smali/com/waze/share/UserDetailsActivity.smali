.class public Lcom/waze/share/UserDetailsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "UserDetailsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNavigateCallback;


# static fields
.field private static final RES_CODE_DIAL:I = 0x3ec

.field private static final RES_CODE_SHARE_HELP:I = 0x3ea

.field private static final RES_CODE_SHARING_INFO:I = 0x3eb

.field private static final RES_CODE_SIGN_IN:I = 0x3ed

.field private static final RES_CODE_STOP_SHARING:I = 0x3e9


# instance fields
.field private mImageUrl:Ljava/lang/String;

.field private mNm:Lcom/waze/NativeManager;

.field private mReceivedLocation:Landroid/widget/LinearLayout;

.field private mReceivedLocationsTitleText:Lcom/waze/settings/SettingsTitleText;

.field private mUser:Lcom/waze/user/PersonBase;

.field sPhoneNumer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/share/UserDetailsActivity;->sPhoneNumer:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/user/PersonBase;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/share/UserDetailsActivity;Lcom/waze/strings/DisplayStrings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/waze/share/UserDetailsActivity;->showErrorPopup(Lcom/waze/strings/DisplayStrings;)V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/settings/SettingsTitleText;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity;->mReceivedLocationsTitleText:Lcom/waze/settings/SettingsTitleText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/share/UserDetailsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity;->mReceivedLocation:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/share/UserDetailsActivity;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/waze/share/UserDetailsActivity;->removeFriend(Lcom/waze/user/PersonBase;)V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/share/UserDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/waze/share/UserDetailsActivity;->inviteFriend()V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/share/UserDetailsActivity;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/waze/share/UserDetailsActivity;->reallyRemoveFriend(Lcom/waze/user/PersonBase;)V

    return-void
.end method

.method private getDestinationData(Ljava/lang/String;Lcom/waze/view/text/WazeTextView;)V
    .locals 2
    .parameter "meetingId"
    .parameter "toSet"

    .prologue
    .line 575
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 576
    new-instance v1, Lcom/waze/share/UserDetailsActivity$13;

    invoke-direct {v1, p0, p2}, Lcom/waze/share/UserDetailsActivity$13;-><init>(Lcom/waze/share/UserDetailsActivity;Lcom/waze/view/text/WazeTextView;)V

    .line 575
    invoke-virtual {v0, v1, p1}, Lcom/waze/navigate/DriveToNativeManager;->getFriendsDriveData(Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method private getSharedLocationsView(IILcom/waze/navigate/AddressItem;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "total"
    .parameter "ai"

    .prologue
    const v11, 0x7f09062e

    const v10, 0x7f09062c

    const/16 v9, 0x13

    const/4 v7, 0x0

    .line 519
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/waze/share/UserDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 520
    .local v3, li:Landroid/view/LayoutInflater;
    const v6, 0x7f0300e8

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 522
    .local v5, view:Landroid/view/View;
    invoke-virtual {p3}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_0

    .line 523
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v8, 0x7f020194

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 528
    :goto_0
    const v6, 0x7f09062d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 529
    .local v4, title:Landroid/widget/TextView;
    invoke-virtual {p3}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 532
    invoke-virtual {p3}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p3}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 534
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 535
    .local v0, addr:Landroid/widget/TextView;
    invoke-virtual {p3}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 541
    .end local v0           #addr:Landroid/widget/TextView;
    :goto_1
    if-nez p1, :cond_2

    const/4 v6, 0x1

    move v8, v6

    :goto_2
    add-int/lit8 v6, p2, -0x1

    if-ne p1, v6, :cond_3

    const/4 v6, 0x2

    :goto_3
    or-int v2, v8, v6

    .line 542
    .local v2, first_last:I
    packed-switch v2, :pswitch_data_0

    .line 556
    :goto_4
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 557
    new-instance v6, Lcom/waze/share/UserDetailsActivity$12;

    invoke-direct {v6, p0, p3}, Lcom/waze/share/UserDetailsActivity$12;-><init>(Lcom/waze/share/UserDetailsActivity;Lcom/waze/navigate/AddressItem;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    return-object v5

    .line 525
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #first_last:I
    .end local v4           #title:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 526
    const v8, 0x7f020010

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 538
    .restart local v1       #address:Ljava/lang/String;
    .restart local v4       #title:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v8, v7

    .line 541
    goto :goto_2

    :cond_3
    move v6, v7

    goto :goto_3

    .line 544
    .restart local v2       #first_last:I
    :pswitch_0
    const v6, 0x7f020224

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 547
    :pswitch_1
    const v6, 0x7f020226

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 550
    :pswitch_2
    const v6, 0x7f020223

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 553
    :pswitch_3
    const v6, 0x7f020225

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private inviteFriend()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 463
    new-array v0, v5, [I

    iget-object v3, p0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getID()I

    move-result v3

    aput v3, v0, v6

    .line 464
    .local v0, ids:[I
    new-array v1, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 465
    .local v1, phone:[Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_PS_ADDED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 468
    iget-object v5, p0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    invoke-virtual {v5}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 467
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialAddFriends([ILjava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 474
    .end local v2           #reply:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_PS_INVITED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 475
    iget-object v5, p0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    invoke-virtual {v5}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 473
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .restart local v2       #reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialInviteFriends([I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reallyRemoveFriend(Lcom/waze/user/PersonBase;)V
    .locals 6
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 509
    new-array v0, v4, [I

    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v2

    aput v2, v0, v5

    .line 511
    .local v0, ids:[I
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PS_REMOVED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 512
    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 511
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, reply:Ljava/lang/String;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialRemoveFriends([ILjava/lang/String;)V

    .line 514
    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Lcom/waze/share/UserDetailsActivity;->setResult(I)V

    .line 515
    invoke-virtual {p0}, Lcom/waze/share/UserDetailsActivity;->finish()V

    .line 516
    return-void
.end method

.method private removeFriend(Lcom/waze/user/PersonBase;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v3, 0x1

    .line 483
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v8

    .line 486
    .local v8, nativeManager:Lcom/waze/NativeManager;
    new-instance v4, Lcom/waze/share/UserDetailsActivity$11;

    invoke-direct {v4, p0, p1}, Lcom/waze/share/UserDetailsActivity$11;-><init>(Lcom/waze/share/UserDetailsActivity;Lcom/waze/user/PersonBase;)V

    .line 498
    .local v4, onClick:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 499
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_YOU_WANT_TO_REMOVE_PS_FROM_FRIENDS_LISTQ:Lcom/waze/strings/DisplayStrings;

    .line 498
    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 500
    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 497
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, question:Ljava/lang/String;
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 503
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_Q:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 504
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 505
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_NO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 502
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 506
    return-void
.end method

.method private showErrorPopup(Lcom/waze/strings/DisplayStrings;)V
    .locals 4
    .parameter "bodyText"

    .prologue
    .line 448
    new-instance v0, Lcom/waze/share/UserDetailsActivity$10;

    invoke-direct {v0, p0}, Lcom/waze/share/UserDetailsActivity$10;-><init>(Lcom/waze/share/UserDetailsActivity;)V

    .line 457
    .local v0, onclick:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 456
    invoke-static {v1, v2, v3, v0}, Lcom/waze/MsgBox;->openMessageBoxWithCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 459
    return-void
.end method


# virtual methods
.method public navigateCallback(I)V
    .locals 3
    .parameter "rc"

    .prologue
    .line 569
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "navigateCallback:rc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/share/UserDetailsActivity;->setResult(I)V

    .line 571
    invoke-virtual {p0}, Lcom/waze/share/UserDetailsActivity;->finish()V

    .line 572
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 420
    const v2, 0x10012

    if-ne p1, v2, :cond_2

    .line 422
    if-ne p2, v3, :cond_2

    .line 423
    sput-boolean v4, Lcom/waze/NativeManager;->bToUploadContacts:Z

    .line 424
    invoke-static {v5}, Lcom/waze/phone/AddressBook;->RequestSync(Z)V

    .line 425
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v1

    .line 426
    .local v1, isNavigating:Z
    if-eqz v1, :cond_1

    .line 427
    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    .line 428
    new-array v3, v4, [Lcom/waze/user/PersonBase;

    iget-object v4, p0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    aput-object v4, v3, v5

    .line 427
    invoke-static {v2, v7, v7, v3}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    .line 444
    .end local v1           #isNavigating:Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 445
    return-void

    .line 430
    .restart local v1       #isNavigating:Z
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/waze/navigate/social/ShareHelpActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    .local v0, intent:Landroid/content/Intent;
    const/16 v2, 0x3ea

    invoke-virtual {p0, v0, v2}, Lcom/waze/share/UserDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 433
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isNavigating:Z
    :cond_2
    if-ne p2, v3, :cond_3

    .line 434
    invoke-virtual {p0, v3}, Lcom/waze/share/UserDetailsActivity;->setResult(I)V

    .line 435
    invoke-virtual {p0}, Lcom/waze/share/UserDetailsActivity;->finish()V

    goto :goto_0

    .line 436
    :cond_3
    if-ne p2, v6, :cond_0

    .line 437
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_4

    .line 438
    invoke-virtual {p0, v6}, Lcom/waze/share/UserDetailsActivity;->setResult(I)V

    .line 442
    :goto_1
    invoke-virtual {p0}, Lcom/waze/share/UserDetailsActivity;->finish()V

    goto :goto_0

    .line 440
    :cond_4
    invoke-virtual {p0, v5}, Lcom/waze/share/UserDetailsActivity;->setResult(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super/range {p0 .. p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    .line 78
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->requestWindowFeature(I)Z

    .line 79
    const v20, 0x7f03005d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->setContentView(I)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/waze/share/UserDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "FriendUserData"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v20

    check-cast v20, Lcom/waze/user/PersonBase;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    .line 84
    const/4 v15, 0x0

    .line 92
    .local v15, status:Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/share/UserDetailsActivity;->sPhoneNumer:Ljava/lang/String;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/waze/user/FriendUserData;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 94
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    check-cast v10, Lcom/waze/user/FriendUserData;

    .line 95
    .local v10, fud:Lcom/waze/user/FriendUserData;
    iget-object v15, v10, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    .line 96
    iget-boolean v3, v10, Lcom/waze/user/FriendUserData;->mAllowBeepBeep:Z

    .line 97
    .local v3, bBeep:Z
    iget-boolean v4, v10, Lcom/waze/user/FriendUserData;->mAllowPrivatePing:Z

    .line 98
    .local v4, bMessage:Z
    iget-boolean v5, v10, Lcom/waze/user/FriendUserData;->mIsPendingFriend:Z

    .line 100
    .local v5, bPending:Z
    iget v0, v10, Lcom/waze/user/FriendUserData;->mContactID:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 101
    iget v0, v10, Lcom/waze/user/FriendUserData;->mContactID:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v12

    .line 102
    .local v12, pr:Lcom/waze/autocomplete/Person;
    if-eqz v12, :cond_0

    .line 103
    invoke-virtual {v12}, Lcom/waze/autocomplete/Person;->getPhone()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/share/UserDetailsActivity;->sPhoneNumer:Ljava/lang/String;

    .line 106
    .end local v12           #pr:Lcom/waze/autocomplete/Person;
    :cond_0
    iget-object v0, v10, Lcom/waze/user/FriendUserData;->mMeetingIdSharedByMe:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_7

    const/4 v7, 0x1

    .line 107
    .local v7, bSharingMyDrive:Z
    :goto_0
    iget-object v0, v10, Lcom/waze/user/FriendUserData;->mMeetingIdSharedWithMe:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_8

    const/4 v6, 0x1

    .line 123
    .end local v10           #fud:Lcom/waze/user/FriendUserData;
    .local v6, bSharedDriveWithMe:Z
    :goto_1
    const v20, 0x7f0902d1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/view/title/TitleBar;

    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_FRIEND:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/share/UserDetailsActivity;->mImageUrl:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mImageUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mImageUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mImageUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 129
    .local v16, tryUri:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 130
    .local v13, scheme:Ljava/lang/String;
    if-eqz v13, :cond_1

    const-string v20, "content"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 132
    :cond_1
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/waze/user/PersonBase;->getID()I

    move-result v21

    .line 133
    const/high16 v22, 0x42a0

    invoke-virtual/range {p0 .. p0}, Lcom/waze/share/UserDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    .line 132
    invoke-virtual/range {v20 .. v22}, Lcom/waze/navigate/DriveToNativeManager;->getFriendImageNTV(II)Ljava/lang/String;

    move-result-object v20

    .line 131
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/share/UserDetailsActivity;->mImageUrl:Ljava/lang/String;

    .line 137
    .end local v13           #scheme:Ljava/lang/String;
    .end local v16           #tryUri:Landroid/net/Uri;
    :cond_2
    const v20, 0x7f0902d4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 138
    .local v19, userMood:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/waze/user/UserData;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v20, v0

    check-cast v20, Lcom/waze/user/UserData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/waze/user/UserData;->mMood:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 140
    .local v8, drawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    .end local v8           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    const v20, 0x7f0902d5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/view/text/WazeTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v20, 0x7f0902d6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/view/text/WazeTextView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    if-eqz v6, :cond_3

    .line 151
    const v20, 0x7f0902d7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 152
    .local v11, layout:Landroid/view/View;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    const v20, 0x7f0902d9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/waze/view/text/WazeTextView;

    .line 154
    .local v17, tv1:Lcom/waze/view/text/WazeTextView;
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v21, v0

    sget-object v22, Lcom/waze/strings/DisplayStrings;->DS_IM_ON_THE_WAY_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const v20, 0x7f0902da

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/waze/view/text/WazeTextView;

    .line 156
    .local v18, tv2:Lcom/waze/view/text/WazeTextView;
    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v20, v0

    check-cast v20, Lcom/waze/user/FriendUserData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/waze/user/FriendUserData;->mMeetingIdSharedWithMe:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/waze/share/UserDetailsActivity;->getDestinationData(Ljava/lang/String;Lcom/waze/view/text/WazeTextView;)V

    .line 160
    new-instance v20, Lcom/waze/share/UserDetailsActivity$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/share/UserDetailsActivity$1;-><init>(Lcom/waze/share/UserDetailsActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .end local v11           #layout:Landroid/view/View;
    .end local v17           #tv1:Lcom/waze/view/text/WazeTextView;
    .end local v18           #tv2:Lcom/waze/view/text/WazeTextView;
    :cond_3
    const v20, 0x7f0902db

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/settings/SettingsTitleText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v21, v0

    .line 176
    sget-object v22, Lcom/waze/strings/DisplayStrings;->DS_GET_IN_TOUCH:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    .line 175
    invoke-virtual/range {v20 .. v21}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->sPhoneNumer:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 179
    const v20, 0x7f0902e0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/settings/DrillDownSettingView;

    .line 180
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    .line 181
    const v20, 0x7f0902e0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/settings/DrillDownSettingView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v21, v0

    .line 182
    sget-object v22, Lcom/waze/strings/DisplayStrings;->DS_CALL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    .line 181
    invoke-virtual/range {v20 .. v21}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 183
    const v20, 0x7f0902e0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/waze/share/UserDetailsActivity$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/share/UserDetailsActivity$2;-><init>(Lcom/waze/share/UserDetailsActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :goto_3
    const v20, 0x7f0902dc

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/waze/settings/DrillDownSettingView;

    .line 197
    .local v14, shareDriveButton:Lcom/waze/settings/DrillDownSettingView;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    .line 198
    if-eqz v7, :cond_d

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v20, v0

    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_ON_YOUR_SHARED_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v20 .. v21}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 200
    const v20, 0x7f0902dd

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :goto_4
    new-instance v20, Lcom/waze/share/UserDetailsActivity$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/waze/share/UserDetailsActivity$3;-><init>(Lcom/waze/share/UserDetailsActivity;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/waze/user/FriendUserData;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 258
    const v20, 0x7f0902df

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/settings/DrillDownSettingView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v21, v0

    .line 259
    sget-object v22, Lcom/waze/strings/DisplayStrings;->DS_MESSAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    .line 258
    invoke-virtual/range {v20 .. v21}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 260
    const v20, 0x7f0902de

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/settings/DrillDownSettingView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v21, v0

    .line 261
    sget-object v22, Lcom/waze/strings/DisplayStrings;->DS_BEEP_BEEP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    .line 260
    invoke-virtual/range {v20 .. v21}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 263
    const v20, 0x7f0902de

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/waze/share/UserDetailsActivity$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/share/UserDetailsActivity$4;-><init>(Lcom/waze/share/UserDetailsActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v20, 0x7f0902df

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/waze/share/UserDetailsActivity$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/share/UserDetailsActivity$5;-><init>(Lcom/waze/share/UserDetailsActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 294
    const v20, 0x7f0902db

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_4
    if-nez v3, :cond_5

    .line 297
    const v20, 0x7f0902de

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_5
    if-nez v4, :cond_6

    .line 300
    const v20, 0x7f0902df

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_6
    :goto_5
    const v20, 0x7f0902e3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 315
    const v20, 0x7f0902e1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/settings/SettingsTitleText;

    .line 314
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/share/UserDetailsActivity;->mReceivedLocationsTitleText:Lcom/waze/settings/SettingsTitleText;

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mReceivedLocationsTitleText:Lcom/waze/settings/SettingsTitleText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v21, v0

    sget-object v22, Lcom/waze/strings/DisplayStrings;->DS_NAVIGATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 317
    const v20, 0x7f0902e4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v21

    .line 318
    sget-object v22, Lcom/waze/strings/DisplayStrings;->DS_RECEIVED_LOCATIONS_ARE_SAVED_HERE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    .line 317
    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const v20, 0x7f0902e2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/share/UserDetailsActivity;->mReceivedLocation:Landroid/widget/LinearLayout;

    .line 320
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/waze/user/PersonBase;->getID()I

    move-result v21

    .line 321
    new-instance v22, Lcom/waze/share/UserDetailsActivity$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/share/UserDetailsActivity$6;-><init>(Lcom/waze/share/UserDetailsActivity;)V

    .line 320
    invoke-virtual/range {v20 .. v22}, Lcom/waze/navigate/DriveToNativeManager;->getFriendsSharedPlaces(ILcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 340
    const v20, 0x7f0902e3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/settings/DrillDownSettingView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v21, v0

    .line 341
    sget-object v22, Lcom/waze/strings/DisplayStrings;->DS_REQUEST_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    .line 340
    invoke-virtual/range {v20 .. v21}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 343
    const v20, 0x7f0902e3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 344
    new-instance v21, Lcom/waze/share/UserDetailsActivity$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/share/UserDetailsActivity$7;-><init>(Lcom/waze/share/UserDetailsActivity;)V

    .line 343
    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const v20, 0x7f0902e5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/settings/SettingsTitleText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v21, v0

    .line 357
    sget-object v22, Lcom/waze/strings/DisplayStrings;->DS_MANAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    .line 356
    invoke-virtual/range {v20 .. v21}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 360
    const v20, 0x7f0902e6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/waze/settings/DrillDownSettingView;

    .line 362
    .local v9, drillDownSettingView:Lcom/waze/settings/DrillDownSettingView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/waze/user/FriendUserData;

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v21, v0

    if-eqz v5, :cond_f

    .line 364
    sget-object v20, Lcom/waze/strings/DisplayStrings;->DS_CANCEL_FRIEND_REQUEST:Lcom/waze/strings/DisplayStrings;

    .line 363
    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 366
    const/high16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/waze/settings/DrillDownSettingView;->setTextColor(I)V

    .line 368
    new-instance v20, Lcom/waze/share/UserDetailsActivity$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/share/UserDetailsActivity$8;-><init>(Lcom/waze/share/UserDetailsActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    :goto_7
    return-void

    .line 106
    .end local v6           #bSharedDriveWithMe:Z
    .end local v7           #bSharingMyDrive:Z
    .end local v9           #drillDownSettingView:Lcom/waze/settings/DrillDownSettingView;
    .end local v14           #shareDriveButton:Lcom/waze/settings/DrillDownSettingView;
    .end local v19           #userMood:Landroid/widget/ImageView;
    .restart local v10       #fud:Lcom/waze/user/FriendUserData;
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 107
    .restart local v7       #bSharingMyDrive:Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 109
    .end local v3           #bBeep:Z
    .end local v4           #bMessage:Z
    .end local v5           #bPending:Z
    .end local v7           #bSharingMyDrive:Z
    .end local v10           #fud:Lcom/waze/user/FriendUserData;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/waze/user/UserData;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v20, v0

    check-cast v20, Lcom/waze/user/UserData;

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/waze/user/UserData;->mLastReportText:Ljava/lang/String;

    .line 112
    :cond_a
    const/4 v3, 0x0

    .line 114
    .restart local v3       #bBeep:Z
    const/4 v4, 0x0

    .line 115
    .restart local v4       #bMessage:Z
    const/4 v5, 0x0

    .line 116
    .restart local v5       #bPending:Z
    const/4 v7, 0x0

    .line 117
    .restart local v7       #bSharingMyDrive:Z
    const/4 v6, 0x0

    .line 119
    .restart local v6       #bSharedDriveWithMe:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/share/UserDetailsActivity;->sPhoneNumer:Ljava/lang/String;

    goto/16 :goto_1

    .line 142
    .restart local v19       #userMood:Landroid/widget/ImageView;
    :cond_b
    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 192
    :cond_c
    const v20, 0x7f0902e0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/settings/DrillDownSettingView;

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto/16 :goto_3

    .line 202
    .restart local v14       #shareDriveButton:Lcom/waze/settings/DrillDownSettingView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v20, v0

    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_SHARE_MY_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v20 .. v21}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 203
    const v20, 0x7f0902dd

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 303
    :cond_e
    const v20, 0x7f0902db

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 304
    const v20, 0x7f0902de

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 305
    const v20, 0x7f0902df

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 365
    .restart local v9       #drillDownSettingView:Lcom/waze/settings/DrillDownSettingView;
    :cond_f
    sget-object v20, Lcom/waze/strings/DisplayStrings;->DS_REMOVE_FRIEND:Lcom/waze/strings/DisplayStrings;

    goto/16 :goto_6

    .line 379
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v20, v0

    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_ADD_AS_A_FRIEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v20 .. v21}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 385
    :goto_8
    new-instance v20, Lcom/waze/share/UserDetailsActivity$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/share/UserDetailsActivity$9;-><init>(Lcom/waze/share/UserDetailsActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 382
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/share/UserDetailsActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v20, v0

    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_INVITE_TO_WAZE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v20 .. v21}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    goto :goto_8
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 400
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 402
    const v1, 0x7f0902d3

    invoke-virtual {p0, v1}, Lcom/waze/share/UserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 403
    .local v0, userPic:Landroid/widget/ImageView;
    const v1, 0x7f0203a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    sget-object v1, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v2, p0, Lcom/waze/share/UserDetailsActivity;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 405
    return-void
.end method

.method protected populateReceivedLocations([Lcom/waze/navigate/AddressItem;)V
    .locals 5
    .parameter "ai"

    .prologue
    .line 408
    iget-object v3, p0, Lcom/waze/share/UserDetailsActivity;->mReceivedLocation:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 409
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 416
    return-void

    .line 410
    :cond_0
    array-length v3, p1

    aget-object v4, p1, v0

    invoke-direct {p0, v0, v3, v4}, Lcom/waze/share/UserDetailsActivity;->getSharedLocationsView(IILcom/waze/navigate/AddressItem;)Landroid/view/View;

    move-result-object v2

    .line 411
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/waze/share/UserDetailsActivity;->mReceivedLocation:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 413
    .local v1, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/waze/share/UserDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 414
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
