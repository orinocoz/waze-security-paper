.class public Lcom/waze/reports/AddPlaceFlowActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "AddPlaceFlowActivity.java"

# interfaces
.implements Lcom/waze/reports/TakePhotoFragment$ITakePhoto;
.implements Lcom/waze/ifs/ui/OmniSelectionFragment$IOmniSelect;
.implements Lcom/waze/reports/EditMapLocationFragment$IEditMap;


# static fields
.field private static final STATE_CHOOSE_PLACE:I = 0x2

.field private static final STATE_MAP_LOCATION:I = 0x3

.field private static final STATE_NEW_PLACE:I = 0x5

.field private static final STATE_SELECT_ADDRESS:I = 0x4

.field private static final STATE_SELECT_CATEGORY:I = 0x6

.field private static final STATE_TAKE_PHOTO:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

.field private mDestinationVenueId:Ljava/lang/String;

.field private mForceHouseNumber:Z

.field private mFromReportMenu:Z

.field private mIsPublic:Z

.field private mIsSending:Z

.field private mIsUpdate:Z

.field private mNatMgr:Lcom/waze/NativeManager;

.field private mOrigVenue:Lcom/waze/reports/VenueData;

.field private mPhotoId:Ljava/lang/String;

.field private mPhotoPath:Ljava/lang/String;

.field private mPhotoThumbnailUrl:Ljava/lang/String;

.field private mPhotoUrl:Ljava/lang/String;

.field private mPoints:I

.field private mQuestionId:Ljava/lang/String;

.field private mRetain:Z

.field private mSayThankYou:Z

.field private mSearchVenueResults:[Landroid/os/Parcelable;

.field private mSelectedVenue:Lcom/waze/reports/VenueData;

.field private mState:I

.field private mTyd:Lcom/waze/reports/ThankYouDialog;

.field private mVenue:Lcom/waze/reports/VenueData;

.field private mbConfirmResidential:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/waze/reports/AddPlaceFlowActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iput-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mOrigVenue:Lcom/waze/reports/VenueData;

    .line 57
    iput-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mDestinationVenueId:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mQuestionId:Ljava/lang/String;

    .line 61
    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsPublic:Z

    .line 62
    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsSending:Z

    .line 63
    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsUpdate:Z

    .line 67
    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSayThankYou:Z

    .line 68
    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mFromReportMenu:Z

    .line 69
    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mForceHouseNumber:Z

    .line 70
    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mbConfirmResidential:Z

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/AddPlaceFlowActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/reports/AddPlaceFlowActivity;)Lcom/waze/reports/VenueData;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/reports/AddPlaceFlowActivity;Lcom/waze/NativeManager$AddressStrings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    return-void
.end method

.method static synthetic access$3(Lcom/waze/reports/AddPlaceFlowActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/reports/AddPlaceFlowActivity;)[Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/reports/AddPlaceFlowActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/waze/reports/AddPlaceFlowActivity;->moveToNewPlaceFragment(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/reports/AddPlaceFlowActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mbConfirmResidential:Z

    return-void
.end method

.method static synthetic access$7(Lcom/waze/reports/AddPlaceFlowActivity;)Lcom/waze/reports/VenueData;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    return-object v0
.end method

.method private confirmResidential()V
    .locals 8

    .prologue
    .line 511
    new-instance v4, Lcom/waze/reports/AddPlaceFlowActivity$5;

    invoke-direct {v4, p0}, Lcom/waze/reports/AddPlaceFlowActivity$5;-><init>(Lcom/waze/reports/AddPlaceFlowActivity;)V

    .line 521
    .local v4, onClickYes:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_Q:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 523
    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_RESIDENTIAL_PLACE_CONFIRM_DIALOG_BODY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 524
    iget-object v5, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_RESIDENTIAL_PLACE_CONFIRM_DIALOG_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 525
    iget-object v6, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_CANCEL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 521
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 526
    return-void
.end method

.method private goToVenueSelectFragment()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v8, 0x0

    .line 381
    const/4 v7, 0x2

    iput v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 382
    new-instance v3, Lcom/waze/ifs/ui/OmniSelectionFragment;

    invoke-direct {v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;-><init>()V

    .line 384
    .local v3, nameSelect:Lcom/waze/ifs/ui/OmniSelectionFragment;
    iget-object v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_SELECT_PLACE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setTitle(Ljava/lang/String;)V

    .line 385
    iget-object v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_ENTER_PLACE_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setEditBoxHint(Ljava/lang/String;)V

    .line 387
    const/4 v4, 0x0

    .line 390
    .local v4, numNamedVenues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    array-length v7, v7

    if-lt v2, v7, :cond_0

    .line 406
    new-array v0, v4, [Lcom/waze/settings/SettingsValue;

    .line 408
    .local v0, argValues:[Lcom/waze/settings/SettingsValue;
    iget-object v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_PLACE_IS_RESIDENCE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 409
    const v9, 0x7f020194

    .line 408
    invoke-virtual {v3, v7, v9}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setTopOption(Ljava/lang/String;I)V

    .line 411
    const/4 v2, 0x0

    .line 412
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    array-length v10, v9

    move v7, v8

    :goto_1
    if-lt v7, v10, :cond_3

    .line 421
    invoke-virtual {v3, v0}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 423
    invoke-virtual {v3, v14}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setSearch(Z)V

    .line 424
    invoke-virtual {v3, v14}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setFilter(Z)V

    .line 425
    iget-object v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_ADD_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v14, v7}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setUserInput(ZLjava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const v8, 0x7f0902cc

    invoke-virtual {v7, v8, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 428
    return-void

    .line 391
    .end local v0           #argValues:[Lcom/waze/settings/SettingsValue;
    :cond_0
    iget-object v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    aget-object v6, v7, v2

    check-cast v6, Lcom/waze/reports/VenueData;

    .line 393
    .local v6, vd:Lcom/waze/reports/VenueData;
    iget-object v7, v6, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v6, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 395
    :cond_1
    iget-object v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mDestinationVenueId:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 396
    iget-object v7, v6, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mDestinationVenueId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 397
    if-eqz v2, :cond_2

    .line 398
    iget-object v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    aget-object v1, v7, v8

    .line 399
    .local v1, first:Landroid/os/Parcelable;
    iget-object v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    aget-object v9, v9, v2

    aput-object v9, v7, v8

    .line 400
    iget-object v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    aput-object v1, v7, v2

    .line 390
    .end local v1           #first:Landroid/os/Parcelable;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    .end local v6           #vd:Lcom/waze/reports/VenueData;
    .restart local v0       #argValues:[Lcom/waze/settings/SettingsValue;
    :cond_3
    aget-object v5, v9, v7

    .local v5, p:Landroid/os/Parcelable;
    move-object v6, v5

    .line 413
    check-cast v6, Lcom/waze/reports/VenueData;

    .line 414
    .restart local v6       #vd:Lcom/waze/reports/VenueData;
    iget-object v11, v6, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    if-eqz v11, :cond_4

    iget-object v11, v6, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 412
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 416
    :cond_5
    new-instance v11, Lcom/waze/settings/SettingsValue;

    iget-object v12, v6, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    iget-object v13, v6, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13, v8}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v11, v0, v2

    .line 417
    aget-object v11, v0, v2

    invoke-virtual {v6}, Lcom/waze/reports/VenueData;->getAddressString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    .line 418
    aget-object v11, v0, v2

    iget-object v12, v6, Lcom/waze/reports/VenueData;->aliases:[Ljava/lang/String;

    iput-object v12, v11, Lcom/waze/settings/SettingsValue;->aliases:[Ljava/lang/String;

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private moveToNewPlaceFragment(Z)V
    .locals 4
    .parameter "residential"

    .prologue
    const/4 v2, 0x0

    .line 551
    const/4 v1, 0x5

    iput v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 553
    const-string v1, "PLACES_NEW_PLACE_SCREEN_SHOWN"

    invoke-static {v1, v2, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    if-eqz p1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    .line 558
    :cond_0
    new-instance v0, Lcom/waze/reports/AddPlaceNewFragment;

    invoke-direct {v0}, Lcom/waze/reports/AddPlaceNewFragment;-><init>()V

    .line 559
    .local v0, fragment:Lcom/waze/reports/AddPlaceNewFragment;
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v0, v1}, Lcom/waze/reports/AddPlaceNewFragment;->setVenue(Lcom/waze/reports/VenueData;)V

    .line 560
    invoke-virtual {v0, p1}, Lcom/waze/reports/AddPlaceNewFragment;->setResidential(Z)V

    .line 561
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 562
    const v2, 0x7f0902cc

    const-string v3, "AddPlaceNewFragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 563
    return-void
.end method

.method private sayThankYou(II)V
    .locals 11
    .parameter "res"
    .parameter "points"

    .prologue
    const/4 v10, 0x1

    .line 580
    if-gez p2, :cond_0

    .line 581
    iget v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPoints:I

    if-lez v0, :cond_1

    .line 582
    iget p2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPoints:I

    .line 586
    :cond_0
    :goto_0
    iput p2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPoints:I

    .line 587
    iput-boolean v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSayThankYou:Z

    .line 591
    iget-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsPublic:Z

    if-eqz v0, :cond_3

    .line 592
    iget-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsUpdate:Z

    if-eqz v0, :cond_2

    .line 593
    const/4 v6, 0x0

    .line 594
    .local v6, thanks1:Lcom/waze/strings/DisplayStrings;
    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_THANK_YOU_BODY_EXISTING:Lcom/waze/strings/DisplayStrings;

    .line 595
    .local v7, thanks2:Lcom/waze/strings/DisplayStrings;
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_EDIT_DETAILS:Lcom/waze/strings/DisplayStrings;

    .line 596
    .local v8, more:Lcom/waze/strings/DisplayStrings;
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_NO_THANKS:Lcom/waze/strings/DisplayStrings;

    .line 610
    .local v9, later:Lcom/waze/strings/DisplayStrings;
    :goto_1
    new-instance v0, Lcom/waze/reports/ThankYouDialog;

    iget-boolean v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsPublic:Z

    new-instance v4, Lcom/waze/reports/AddPlaceFlowActivity$6;

    invoke-direct {v4, p0}, Lcom/waze/reports/AddPlaceFlowActivity$6;-><init>(Lcom/waze/reports/AddPlaceFlowActivity;)V

    .line 620
    new-instance v5, Lcom/waze/reports/AddPlaceFlowActivity$7;

    invoke-direct {v5, p0}, Lcom/waze/reports/AddPlaceFlowActivity$7;-><init>(Lcom/waze/reports/AddPlaceFlowActivity;)V

    .line 629
    if-ne p1, v10, :cond_4

    :goto_2
    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/waze/reports/ThankYouDialog;-><init>(Landroid/content/Context;IZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;Z)V

    .line 610
    iput-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mTyd:Lcom/waze/reports/ThankYouDialog;

    .line 630
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mTyd:Lcom/waze/reports/ThankYouDialog;

    invoke-virtual {v0}, Lcom/waze/reports/ThankYouDialog;->show()V

    .line 631
    return-void

    .line 584
    .end local v6           #thanks1:Lcom/waze/strings/DisplayStrings;
    .end local v7           #thanks2:Lcom/waze/strings/DisplayStrings;
    .end local v8           #more:Lcom/waze/strings/DisplayStrings;
    .end local v9           #later:Lcom/waze/strings/DisplayStrings;
    :cond_1
    sget-object v0, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Images:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v0}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result p2

    goto :goto_0

    .line 598
    :cond_2
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_THANK_YOU_TITLE_NEW:Lcom/waze/strings/DisplayStrings;

    .line 599
    .restart local v6       #thanks1:Lcom/waze/strings/DisplayStrings;
    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_THANK_YOU_BODY_NEW:Lcom/waze/strings/DisplayStrings;

    .line 600
    .restart local v7       #thanks2:Lcom/waze/strings/DisplayStrings;
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_ADD_MORE_DETAILS:Lcom/waze/strings/DisplayStrings;

    .line 601
    .restart local v8       #more:Lcom/waze/strings/DisplayStrings;
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_NO_THANKS:Lcom/waze/strings/DisplayStrings;

    .line 603
    .restart local v9       #later:Lcom/waze/strings/DisplayStrings;
    goto :goto_1

    .line 604
    .end local v6           #thanks1:Lcom/waze/strings/DisplayStrings;
    .end local v7           #thanks2:Lcom/waze/strings/DisplayStrings;
    .end local v8           #more:Lcom/waze/strings/DisplayStrings;
    .end local v9           #later:Lcom/waze/strings/DisplayStrings;
    :cond_3
    const/4 v6, 0x0

    .line 605
    .restart local v6       #thanks1:Lcom/waze/strings/DisplayStrings;
    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_THANK_YOU_BODY_RESIDENTIAL:Lcom/waze/strings/DisplayStrings;

    .line 606
    .restart local v7       #thanks2:Lcom/waze/strings/DisplayStrings;
    const/4 v8, 0x0

    .line 607
    .restart local v8       #more:Lcom/waze/strings/DisplayStrings;
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_OKAY:Lcom/waze/strings/DisplayStrings;

    .restart local v9       #later:Lcom/waze/strings/DisplayStrings;
    goto :goto_1

    .line 629
    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method


# virtual methods
.method public allDone()V
    .locals 0

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->finish()V

    .line 668
    return-void
.end method

.method public doneEditMap(II)V
    .locals 2
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iput p1, v0, Lcom/waze/reports/VenueData;->longitude:I

    .line 541
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iput p2, v0, Lcom/waze/reports/VenueData;->latitude:I

    .line 542
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    .line 544
    const/4 v0, 0x5

    iput v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 545
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 546
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "AddPlaceNewFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/AddPlaceNewFragment;

    .line 547
    invoke-virtual {v0}, Lcom/waze/reports/AddPlaceNewFragment;->refreshMapLocation()V

    .line 548
    return-void
.end method

.method public goToEditMap()V
    .locals 3

    .prologue
    .line 529
    const/4 v1, 0x3

    iput v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 530
    new-instance v0, Lcom/waze/reports/EditMapLocationFragment;

    invoke-direct {v0}, Lcom/waze/reports/EditMapLocationFragment;-><init>()V

    .line 531
    .local v0, fragment:Lcom/waze/reports/EditMapLocationFragment;
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v1, v1, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->latitude:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/reports/EditMapLocationFragment;->setLonLat(II)V

    .line 532
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditMapLocationFragment;->setTitle(Lcom/waze/strings/DisplayStrings;)V

    .line 533
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditMapLocationFragment;->setAvoiderPin(Z)V

    .line 534
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0902cc

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 535
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 536
    return-void
.end method

.method public goToPickCityStreet()V
    .locals 14

    .prologue
    .line 682
    const/4 v10, 0x4

    iput v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 684
    new-instance v0, Lcom/waze/ifs/ui/OmniSelectionFragment;

    invoke-direct {v0}, Lcom/waze/ifs/ui/OmniSelectionFragment;-><init>()V

    .line 686
    .local v0, addressSelect:Lcom/waze/ifs/ui/OmniSelectionFragment;
    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_ADDRESS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setTitle(Ljava/lang/String;)V

    .line 688
    new-instance v5, Ljava/util/HashSet;

    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget v10, v10, Lcom/waze/NativeManager$AddressStrings;->numResults:I

    invoke-direct {v5, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 689
    .local v5, citySet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget v10, v10, Lcom/waze/NativeManager$AddressStrings;->numResults:I

    invoke-direct {v1, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 690
    .local v1, addressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget v10, v10, Lcom/waze/NativeManager$AddressStrings;->numResults:I

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 692
    .local v9, valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/settings/SettingsValue;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget v10, v10, Lcom/waze/NativeManager$AddressStrings;->numResults:I

    if-lt v6, v10, :cond_1

    .line 719
    :goto_1
    iget-boolean v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsPublic:Z

    if-eqz v10, :cond_0

    .line 720
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_7

    .line 728
    :cond_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/waze/settings/SettingsValue;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/waze/settings/SettingsValue;

    .line 729
    .local v3, argValues:[Lcom/waze/settings/SettingsValue;
    invoke-virtual {v0, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 731
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v10

    const v11, 0x7f0902cc

    invoke-virtual {v10, v11, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v10

    .line 732
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/FragmentTransaction;->commit()I

    .line 733
    return-void

    .line 693
    .end local v3           #argValues:[Lcom/waze/settings/SettingsValue;
    :cond_1
    const/4 v7, 0x0

    .line 695
    .local v7, jsonAddr:Lorg/json/JSONObject;
    :try_start_0
    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v10, v10, Lcom/waze/NativeManager$AddressStrings;->city:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 696
    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v10, v10, Lcom/waze/NativeManager$AddressStrings;->city:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 697
    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v10, v10, Lcom/waze/NativeManager$AddressStrings;->street:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 698
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 699
    .end local v7           #jsonAddr:Lorg/json/JSONObject;
    .local v8, jsonAddr:Lorg/json/JSONObject;
    :try_start_1
    const-string v10, "STREET"

    iget-object v11, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v11, v11, Lcom/waze/NativeManager$AddressStrings;->street:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    const-string v10, "CITY"

    iget-object v11, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v11, v11, Lcom/waze/NativeManager$AddressStrings;->city:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v7, v8

    .line 708
    .end local v8           #jsonAddr:Lorg/json/JSONObject;
    .restart local v7       #jsonAddr:Lorg/json/JSONObject;
    :cond_2
    :goto_3
    if-eqz v7, :cond_6

    .line 709
    :try_start_2
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, addressString:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 692
    .end local v2           #addressString:Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 703
    :cond_4
    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v10, v10, Lcom/waze/NativeManager$AddressStrings;->street:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 704
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 705
    .end local v7           #jsonAddr:Lorg/json/JSONObject;
    .restart local v8       #jsonAddr:Lorg/json/JSONObject;
    :try_start_3
    const-string v10, "STREET"

    iget-object v11, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v11, v11, Lcom/waze/NativeManager$AddressStrings;->street:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v7, v8

    .end local v8           #jsonAddr:Lorg/json/JSONObject;
    .restart local v7       #jsonAddr:Lorg/json/JSONObject;
    goto :goto_3

    .line 711
    .restart local v2       #addressString:Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 712
    new-instance v10, Lcom/waze/settings/SettingsValue;

    iget-object v11, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v11, v11, Lcom/waze/NativeManager$AddressStrings;->street:[Ljava/lang/String;

    aget-object v11, v11, v6

    .line 713
    iget-object v12, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v12, v12, Lcom/waze/NativeManager$AddressStrings;->city:[Ljava/lang/String;

    aget-object v12, v12, v6

    const/4 v13, 0x0

    invoke-direct {v10, v2, v11, v12, v13}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 712
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 716
    .end local v2           #addressString:Ljava/lang/String;
    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v10

    iget-object v11, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget v11, v11, Lcom/waze/NativeManager$AddressStrings;->numToFilterTo:I

    if-lt v10, v11, :cond_3

    goto/16 :goto_1

    .line 720
    .end local v7           #jsonAddr:Lorg/json/JSONObject;
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 721
    .local v4, city:Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 723
    .restart local v7       #jsonAddr:Lorg/json/JSONObject;
    :try_start_5
    const-string v11, "CITY"

    invoke-virtual {v7, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    new-instance v11, Lcom/waze/settings/SettingsValue;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v4, v13}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 725
    :catch_0
    move-exception v11

    goto/16 :goto_2

    .line 715
    .end local v4           #city:Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_4

    .end local v7           #jsonAddr:Lorg/json/JSONObject;
    .restart local v8       #jsonAddr:Lorg/json/JSONObject;
    :catch_2
    move-exception v10

    move-object v7, v8

    .end local v8           #jsonAddr:Lorg/json/JSONObject;
    .restart local v7       #jsonAddr:Lorg/json/JSONObject;
    goto :goto_4
.end method

.method public isSearching(I)V
    .locals 3
    .parameter "times"

    .prologue
    .line 737
    iget v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 738
    const-string v0, "PLACES_CHOOSE_SEARCH_CLICKED"

    const-string v1, "VENUE_ID"

    .line 739
    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mDestinationVenueId:Ljava/lang/String;

    .line 738
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_0
    return-void
.end method

.method protected myHandleMessage(Landroid/os/Message;)Z
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    const/4 v8, 0x1

    .line 253
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    if-ne v9, v10, :cond_2

    .line 254
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 255
    .local v0, b:Landroid/os/Bundle;
    const-string v9, "venue_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    iput-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    .line 256
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget v10, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    iget-object v11, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v9, v10, v11}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 258
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->goToVenueSelectFragment()V

    .line 262
    :cond_0
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    invoke-virtual {v9}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 335
    .end local v0           #b:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return v8

    .line 265
    :cond_2
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/waze/NativeManager;->UH_VENUE_STATUS:I

    if-ne v9, v10, :cond_7

    .line 266
    iput-boolean v12, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsSending:Z

    .line 267
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget v10, Lcom/waze/NativeManager;->UH_VENUE_STATUS:I

    iget-object v11, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v9, v10, v11}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 268
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    invoke-virtual {v9}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 270
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 271
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v9, "res"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 272
    .local v6, res:I
    const-string v9, "points"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 273
    .local v5, points:I
    const-string v9, "id"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, id:Ljava/lang/String;
    if-ltz v6, :cond_4

    .line 276
    iget-boolean v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsUpdate:Z

    if-nez v9, :cond_3

    .line 277
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iput-object v1, v9, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    .line 280
    :cond_3
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v7, result:Landroid/content/Intent;
    const-string v9, "destination_venue_id"

    invoke-virtual {v7, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v13, v7}, Lcom/waze/reports/AddPlaceFlowActivity;->setResult(ILandroid/content/Intent;)V

    .line 284
    invoke-direct {p0, v6, v5}, Lcom/waze/reports/AddPlaceFlowActivity;->sayThankYou(II)V

    goto :goto_0

    .line 286
    .end local v7           #result:Landroid/content/Intent;
    :cond_4
    const/4 v9, -0x2

    if-ne v6, v9, :cond_5

    .line 287
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    .line 288
    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_YOUVE_BEEN_FLAGGED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 289
    new-instance v11, Lcom/waze/reports/AddPlaceFlowActivity$2;

    invoke-direct {v11, p0}, Lcom/waze/reports/AddPlaceFlowActivity$2;-><init>(Lcom/waze/reports/AddPlaceFlowActivity;)V

    .line 287
    invoke-static {v9, v10, v12, v11}, Lcom/waze/MsgBox;->openMessageBoxWithCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 296
    :cond_5
    const/4 v9, -0x3

    if-ne v6, v9, :cond_6

    .line 297
    iput-boolean v8, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mForceHouseNumber:Z

    .line 298
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    .line 299
    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_PLACE_ADD_LOCATION_ERROR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 300
    iget-object v11, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_BACK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 298
    invoke-static {v9, v10, v11, v13, v12}, Lcom/waze/MsgBox;->openMessageBoxFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 302
    :cond_6
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_SORRYE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    .line 303
    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_PLACE_ADD_ERROR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 302
    invoke-static {v9, v10, v12}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 308
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #id:Ljava/lang/String;
    .end local v5           #points:I
    .end local v6           #res:I
    :cond_7
    iget v9, p1, Landroid/os/Message;->what:I

    sget v10, Lcom/waze/NativeManager;->UH_VENUE_ADD_IMAGE_RESULT:I

    if-ne v9, v10, :cond_8

    .line 309
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget v10, Lcom/waze/NativeManager;->UH_VENUE_ADD_IMAGE_RESULT:I

    iget-object v11, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v9, v10, v11}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 311
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 312
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v9, "path"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, path:Ljava/lang/String;
    const-string v9, "id"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    .restart local v1       #id:Ljava/lang/String;
    const-string v9, "image_url"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, imageUrl:Ljava/lang/String;
    const-string v9, "image_thumbnail_url"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, imageThumbnailUrl:Ljava/lang/String;
    const-string v9, "res"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 319
    .local v6, res:Z
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 320
    if-eqz v6, :cond_1

    .line 321
    iput-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoId:Ljava/lang/String;

    .line 322
    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoUrl:Ljava/lang/String;

    .line 323
    iput-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoThumbnailUrl:Ljava/lang/String;

    .line 324
    iget-boolean v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsSending:Z

    if-eqz v9, :cond_1

    .line 325
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    const-string v10, ""

    invoke-virtual {v9, v3, v2, v10}, Lcom/waze/reports/VenueData;->addImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v9, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iget-object v10, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/waze/reports/VenueData;->addNewImageId(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->reallySendVenue()V

    goto/16 :goto_0

    .line 335
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #imageThumbnailUrl:Ljava/lang/String;
    .end local v3           #imageUrl:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v6           #res:Z
    :cond_8
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->myHandleMessage(Landroid/os/Message;)Z

    move-result v8

    goto/16 :goto_0
.end method

.method public omniSelected(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "idx"
    .parameter "value"
    .parameter "title"
    .parameter "bUserInput"

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 432
    iget v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    .line 433
    if-nez p4, :cond_0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_a

    .line 434
    :cond_0
    iput-boolean p4, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsPublic:Z

    .line 435
    iput-boolean v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsUpdate:Z

    .line 437
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iput v1, v3, Lcom/waze/reports/VenueData;->numCategories:I

    .line 439
    if-eqz p4, :cond_6

    .line 440
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iput-object p2, v3, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    .line 441
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iput-boolean v1, v3, Lcom/waze/reports/VenueData;->bResidence:Z

    .line 447
    :goto_0
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget v3, v3, Lcom/waze/NativeManager$AddressStrings;->numResults:I

    if-lez v3, :cond_4

    .line 448
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 449
    :cond_1
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v4, v4, Lcom/waze/NativeManager$AddressStrings;->street:[Ljava/lang/String;

    aget-object v4, v4, v1

    iput-object v4, v3, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    .line 451
    :cond_2
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 452
    :cond_3
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v4, v4, Lcom/waze/NativeManager$AddressStrings;->city:[Ljava/lang/String;

    aget-object v4, v4, v1

    iput-object v4, v3, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    .line 455
    :cond_4
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    .line 457
    const v3, 0x7f0902cc

    invoke-virtual {p0, v3}, Lcom/waze/reports/AddPlaceFlowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/waze/utils/EditTextUtils;->closeKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 459
    if-eqz p4, :cond_7

    .line 460
    invoke-direct {p0, v1}, Lcom/waze/reports/AddPlaceFlowActivity;->moveToNewPlaceFragment(Z)V

    .line 477
    :goto_1
    const-string v2, "PLACES_CHOOSE_DONE_CLICKED"

    .line 478
    const-string v3, "WAS_ADDED|VENUE_ID"

    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz p4, :cond_b

    const-string v1, "TRUE"

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-static {v2, v3, v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_5
    :goto_3
    return-void

    .line 443
    :cond_6
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    const-string v4, ""

    iput-object v4, v3, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    .line 444
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iput-boolean v2, v3, Lcom/waze/reports/VenueData;->bResidence:Z

    goto/16 :goto_0

    .line 462
    :cond_7
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/waze/ConfigManager;->checkConfigDisplayCounter(IZ)I

    move-result v3

    if-lez v3, :cond_8

    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mbConfirmResidential:Z

    .line 464
    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mbConfirmResidential:Z

    if-eqz v1, :cond_9

    .line 465
    invoke-direct {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->confirmResidential()V

    goto :goto_1

    .line 467
    :cond_9
    invoke-direct {p0, v2}, Lcom/waze/reports/AddPlaceFlowActivity;->moveToNewPlaceFragment(Z)V

    goto :goto_1

    .line 471
    :cond_a
    iput-boolean v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsPublic:Z

    .line 472
    iput-boolean v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsUpdate:Z

    .line 473
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    aget-object v1, v1, p1

    check-cast v1, Lcom/waze/reports/VenueData;

    iput-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    .line 474
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v1}, Lcom/waze/reports/VenueData;->clone()Lcom/waze/reports/VenueData;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mOrigVenue:Lcom/waze/reports/VenueData;

    .line 475
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->sendVenue()V

    goto :goto_1

    .line 478
    :cond_b
    const-string v1, "FALSE"

    goto :goto_2

    .line 479
    :cond_c
    iget v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_d

    .line 480
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v1, p2}, Lcom/waze/reports/VenueData;->addCategory(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    .line 482
    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    invoke-static {v2}, Lcom/waze/reports/EditPlaceCategoriesHolder;->sortCategoryIdsArray([Ljava/lang/String;)I

    move-result v2

    .line 481
    iput v2, v1, Lcom/waze/reports/VenueData;->numCategories:I

    .line 483
    iput v5, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 484
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 485
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AddPlaceNewFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/waze/reports/AddPlaceNewFragment;

    .line 486
    invoke-virtual {v1}, Lcom/waze/reports/AddPlaceNewFragment;->refreshCategories()V

    goto :goto_3

    .line 487
    :cond_d
    iget v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 489
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, jsonAddr:Lorg/json/JSONObject;
    const-string v1, "CITY"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 492
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    const-string v2, "CITY"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    .line 496
    :goto_4
    const-string v1, "STREET"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 497
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    const-string v2, "STREET"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v0           #jsonAddr:Lorg/json/JSONObject;
    :goto_5
    iput v5, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 503
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 504
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AddPlaceNewFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/waze/reports/AddPlaceNewFragment;

    .line 505
    invoke-virtual {v1}, Lcom/waze/reports/AddPlaceNewFragment;->refreshAddress()V

    goto/16 :goto_3

    .line 494
    .restart local v0       #jsonAddr:Lorg/json/JSONObject;
    :cond_e
    :try_start_1
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    const-string v2, ""

    iput-object v2, v1, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    goto :goto_4

    .line 501
    .end local v0           #jsonAddr:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_5

    .line 499
    .restart local v0       #jsonAddr:Lorg/json/JSONObject;
    :cond_f
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    const-string v2, ""

    iput-object v2, v1, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const v2, 0x7f0902cc

    const/4 v1, 0x5

    .line 212
    iget v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 246
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 249
    :goto_0
    return-void

    .line 214
    :pswitch_0
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    goto :goto_0

    .line 218
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/waze/reports/AddPlaceFlowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/waze/utils/EditTextUtils;->closeKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 219
    const/4 v0, 0x1

    iput v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 220
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/waze/reports/TakePhotoFragment;

    invoke-direct {v1}, Lcom/waze/reports/TakePhotoFragment;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 225
    :pswitch_2
    invoke-direct {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->goToVenueSelectFragment()V

    goto :goto_0

    .line 229
    :pswitch_3
    iput v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 230
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 234
    :pswitch_4
    iput v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 235
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 239
    :pswitch_5
    iput v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 240
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 241
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "AddPlaceNewFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/AddPlaceNewFragment;

    .line 242
    invoke-virtual {v0}, Lcom/waze/reports/AddPlaceNewFragment;->refreshMapLocation()V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    .line 76
    invoke-static {}, Lcom/waze/reports/EditPlaceCategoriesHolder;->getCategories()[Lcom/waze/NativeManager$VenueCategory;

    .line 77
    invoke-static {}, Lcom/waze/reports/EditPlacePointsHolder;->getAllPoints()Lcom/waze/NativeManager$VenueFieldPoints;

    .line 79
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, caller:Landroid/content/Intent;
    new-instance v3, Lcom/waze/reports/VenueData;

    invoke-direct {v3}, Lcom/waze/reports/VenueData;-><init>()V

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    .line 82
    if-eqz v0, :cond_4

    .line 83
    const-string v3, "QuestionID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const-string v3, "QuestionID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mQuestionId:Ljava/lang/String;

    .line 86
    :cond_0
    const-string v3, "destination_venue_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    const-string v3, "destination_venue_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mDestinationVenueId:Ljava/lang/String;

    .line 89
    :cond_1
    const-string v3, "city"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    const-string v4, "city"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    .line 92
    :cond_2
    const-string v3, "street"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    const-string v4, "street"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    .line 95
    :cond_3
    const-string v3, "x"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "y"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 96
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    const-string v4, "x"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/waze/reports/VenueData;->longitude:I

    .line 97
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    const-string v4, "y"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/waze/reports/VenueData;->latitude:I

    .line 98
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iput-boolean v7, v3, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    .line 114
    :goto_0
    const-string v3, "venue_data"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    const-string v3, "venue_data"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    .line 119
    :cond_4
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget v4, Lcom/waze/NativeManager;->UH_VENUE_ADD_IMAGE_RESULT:I

    iget-object v5, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v3, v4, v5}, Lcom/waze/NativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 120
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget v4, Lcom/waze/NativeManager;->UH_VENUE_STATUS:I

    iget-object v5, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v3, v4, v5}, Lcom/waze/NativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 122
    new-instance v3, Lcom/waze/reports/AddPlaceFlowActivity$1;

    invoke-direct {v3, p0}, Lcom/waze/reports/AddPlaceFlowActivity$1;-><init>(Lcom/waze/reports/AddPlaceFlowActivity;)V

    invoke-static {v3}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 130
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 132
    const v3, 0x7f03005a

    invoke-virtual {p0, v3}, Lcom/waze/reports/AddPlaceFlowActivity;->setContentView(I)V

    .line 133
    if-nez p1, :cond_9

    .line 134
    iput v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 135
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0902cc

    new-instance v5, Lcom/waze/reports/TakePhotoFragment;

    invoke-direct {v5}, Lcom/waze/reports/TakePhotoFragment;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 156
    :goto_1
    iput-boolean v6, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mRetain:Z

    .line 158
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    if-nez v3, :cond_5

    .line 159
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget v4, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    iget-object v5, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v3, v4, v5}, Lcom/waze/NativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 160
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v4, v4, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v5, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v5, v5, Lcom/waze/reports/VenueData;->latitude:I

    invoke-virtual {v3, v4, v5}, Lcom/waze/NativeManager;->venueSearch(II)V

    .line 163
    :cond_5
    iget-boolean v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mbConfirmResidential:Z

    if-eqz v3, :cond_a

    .line 164
    invoke-direct {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->confirmResidential()V

    .line 170
    :cond_6
    :goto_2
    return-void

    .line 101
    :cond_7
    iput-boolean v7, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mFromReportMenu:Z

    .line 102
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeLocListener;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    .line 103
    .local v1, loc:Landroid/location/Location;
    if-eqz v1, :cond_8

    .line 104
    invoke-static {v1}, Lcom/waze/NativeLocListener;->GetNativeLocation(Landroid/location/Location;)Lcom/waze/NativeLocListener$NativeLocation;

    move-result-object v2

    .line 105
    .local v2, nLoc:Lcom/waze/NativeLocListener$NativeLocation;
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v4, v2, Lcom/waze/NativeLocListener$NativeLocation;->mLongtitude:I

    iput v4, v3, Lcom/waze/reports/VenueData;->longitude:I

    .line 106
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v4, v2, Lcom/waze/NativeLocListener$NativeLocation;->mLatitude:I

    iput v4, v3, Lcom/waze/reports/VenueData;->latitude:I

    .line 107
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iput-boolean v7, v3, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    goto/16 :goto_0

    .line 110
    .end local v2           #nLoc:Lcom/waze/NativeLocListener$NativeLocation;
    :cond_8
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->finish()V

    goto :goto_2

    .line 137
    .end local v1           #loc:Landroid/location/Location;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mPoints"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPoints:I

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mIsPublic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsPublic:Z

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mFromReportMenu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mFromReportMenu:Z

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mForceHouseNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mForceHouseNumber:Z

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mSayThankYou"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSayThankYou:Z

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mbConfirmResidential"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mbConfirmResidential:Z

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mIsSending"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsSending:Z

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mIsUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsUpdate:Z

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mVenue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/waze/reports/VenueData;

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mSelectedVenue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/waze/reports/VenueData;

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mOrigVenue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/waze/reports/VenueData;

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mOrigVenue:Lcom/waze/reports/VenueData;

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mSearchVenueResults"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mPhotoPath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mPhotoId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoId:Ljava/lang/String;

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mPhotoUrl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoUrl:Ljava/lang/String;

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mPhotoThumbnailUrl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoThumbnailUrl:Ljava/lang/String;

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mQuestionId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mQuestionId:Ljava/lang/String;

    goto/16 :goto_1

    .line 165
    :cond_a
    iget-boolean v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSayThankYou:Z

    if-eqz v3, :cond_b

    .line 166
    iget v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPoints:I

    invoke-direct {p0, v6, v3}, Lcom/waze/reports/AddPlaceFlowActivity;->sayThankYou(II)V

    goto/16 :goto_2

    .line 167
    :cond_b
    iget-boolean v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsSending:Z

    if-eqz v3, :cond_6

    .line 168
    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mTyd:Lcom/waze/reports/ThankYouDialog;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mTyd:Lcom/waze/reports/ThankYouDialog;

    invoke-virtual {v0}, Lcom/waze/reports/ThankYouDialog;->dismiss()V

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mRetain:Z

    if-nez v0, :cond_1

    .line 202
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->cleanUpFiles(Ljava/lang/String;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 205
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_VENUE_STATUS:I

    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 206
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_VENUE_ADD_IMAGE_RESULT:I

    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 207
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 208
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mPoints"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPoints:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsPublic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsPublic:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mFromReportMenu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mFromReportMenu:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mForceHouseNumber"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mForceHouseNumber:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mSayThankYou"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSayThankYou:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mbConfirmResidential"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mbConfirmResidential:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsSending"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsSending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsUpdate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mVenue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mSelectedVenue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mOrigVenue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mOrigVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mSearchVenueResults"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mPhotoPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mPhotoId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mPhotoUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mPhotoThumbnailUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/AddPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mQuestionId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mQuestionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mRetain:Z

    .line 194
    return-void
.end method

.method public photoTaken(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 340
    iput-object p2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    .line 341
    iput-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoId:Ljava/lang/String;

    .line 342
    iput-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoThumbnailUrl:Ljava/lang/String;

    .line 343
    iput-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoUrl:Ljava/lang/String;

    .line 344
    new-instance v0, Lcom/waze/reports/AddPlaceFlowActivity$3;

    invoke-direct {v0, p0}, Lcom/waze/reports/AddPlaceFlowActivity$3;-><init>(Lcom/waze/reports/AddPlaceFlowActivity;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 352
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->goToVenueSelectFragment()V

    .line 378
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 356
    new-instance v0, Lcom/waze/reports/AddPlaceFlowActivity$4;

    invoke-direct {v0, p0}, Lcom/waze/reports/AddPlaceFlowActivity$4;-><init>(Lcom/waze/reports/AddPlaceFlowActivity;)V

    .line 376
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->getVenueGetTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 356
    invoke-virtual {p0, v0, v1, v2}, Lcom/waze/reports/AddPlaceFlowActivity;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public pickCategory()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 566
    const/4 v1, 0x6

    iput v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mState:I

    .line 568
    new-instance v0, Lcom/waze/ifs/ui/OmniSelectionFragment;

    invoke-direct {v0}, Lcom/waze/ifs/ui/OmniSelectionFragment;-><init>()V

    .line 570
    .local v0, categorySelect:Lcom/waze/ifs/ui/OmniSelectionFragment;
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ADD_A_CATEGORY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setTitle(Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/waze/reports/EditPlaceCategoriesHolder;->getCategoryValues()[Lcom/waze/settings/SettingsValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 573
    invoke-virtual {v0, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setExpandable(Z)V

    .line 574
    invoke-virtual {v0, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setAutoComplete(Z)V

    .line 575
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0902cc

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 576
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 577
    return-void
.end method

.method reallySendVenue()V
    .locals 5

    .prologue
    .line 650
    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mFromReportMenu:Z

    if-eqz v1, :cond_0

    .line 651
    const-string v0, "REPORT"

    .line 653
    .local v0, from:Ljava/lang/String;
    :goto_0
    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsUpdate:Z

    if-eqz v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mQuestionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/waze/NativeManager;->venueUpdate(Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :goto_1
    return-void

    .line 652
    .end local v0           #from:Ljava/lang/String;
    :cond_0
    const-string v0, "NEARING"

    goto :goto_0

    .line 656
    .restart local v0       #from:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mQuestionId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mForceHouseNumber:Z

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/waze/NativeManager;->venueCreate(Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method sendVenue()V
    .locals 4

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsUpdate:Z

    if-nez v0, :cond_0

    .line 635
    const-string v0, "PLACES_NEW_PLACE_SCREEN_DONE_CLICKED"

    .line 636
    const-string v1, "VENUE_ID"

    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    .line 635
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mIsSending:Z

    .line 640
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoThumbnailUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/reports/VenueData;->addImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/reports/VenueData;->addNewImageId(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->reallySendVenue()V

    .line 646
    :cond_1
    return-void
.end method

.method sendVenue(Lcom/waze/reports/VenueData;I)V
    .locals 0
    .parameter "venue"
    .parameter "points"

    .prologue
    .line 661
    iput-object p1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    .line 662
    iput p2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mPoints:I

    .line 663
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->sendVenue()V

    .line 664
    return-void
.end method

.method public wantMore()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 671
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    iput-boolean v2, v1, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    .line 672
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v1, v2}, Lcom/waze/reports/VenueData;->removeNewImageId(I)Z

    .line 673
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/reports/EditPlaceFlowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 674
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/waze/reports/VenueData;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mSelectedVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 675
    const-string v1, "continue_edit"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0, v0}, Lcom/waze/reports/AddPlaceFlowActivity;->startActivity(Landroid/content/Intent;)V

    .line 677
    iput-boolean v3, p0, Lcom/waze/reports/AddPlaceFlowActivity;->mRetain:Z

    .line 678
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceFlowActivity;->finish()V

    .line 679
    return-void
.end method
