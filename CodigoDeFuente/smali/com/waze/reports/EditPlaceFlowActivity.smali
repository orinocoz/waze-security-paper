.class public Lcom/waze/reports/EditPlaceFlowActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "EditPlaceFlowActivity.java"

# interfaces
.implements Lcom/waze/reports/TakePhotoFragment$ITakePhoto;
.implements Lcom/waze/ifs/ui/OmniSelectionFragment$IOmniSelect;
.implements Lcom/waze/ifs/ui/EditTextDialogFragment$IEditText;
.implements Lcom/waze/reports/SimpleChoiceFragment$ISimplyChoose;
.implements Lcom/waze/reports/EditMapLocationFragment$IEditMap;


# static fields
.field private static final STATE_ADD_CATEGORY:I = 0x8

.field private static final STATE_DUPLICATE_FIND:I = 0x7

.field private static final STATE_EDIT_ABOUT:I = 0x3

.field private static final STATE_EDIT_REASON:I = 0x4

.field private static final STATE_MAIN:I = 0x1

.field private static final STATE_MAP_LOCATION:I = 0x6

.field private static final STATE_MOVED_CLOSED:I = 0x9

.field private static final STATE_OPENING_HOURS:I = 0x5

.field private static final STATE_SELECT_ADDRESS:I = 0xb

.field private static final STATE_SERVICES:I = 0xa

.field private static final STATE_TAKE_PHOTO:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field curFragment:Landroid/app/Fragment;

.field private mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

.field private mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

.field private mEarnedPoints:I

.field private mFlagType:I

.field private mIsContinueEdit:Z

.field private mIsSending:Z

.field private mIsWaitingForImage:Z

.field private mNm:Lcom/waze/NativeManager;

.field private mOrigVenue:Lcom/waze/reports/VenueData;

.field private mPhotoPath:Ljava/lang/String;

.field private mRetain:Z

.field private mRetryImageLoad:Ljava/lang/Runnable;

.field private mState:I

.field private mTyd:Lcom/waze/reports/ThankYouDialog;

.field private mVenue:Lcom/waze/reports/VenueData;

.field mainFragment:Lcom/waze/reports/EditPlaceFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/waze/reports/EditPlaceFlowActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsContinueEdit:Z

    .line 76
    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsSending:Z

    .line 77
    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsWaitingForImage:Z

    .line 85
    iput-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->curFragment:Landroid/app/Fragment;

    .line 86
    iput-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mRetryImageLoad:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/reports/EditPlaceFlowActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/reports/EditPlaceFlowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->thanksForReport()V

    return-void
.end method

.method static synthetic access$11(Lcom/waze/reports/EditPlaceFlowActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/waze/reports/EditPlaceFlowActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mRetryImageLoad:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$13(Lcom/waze/reports/EditPlaceFlowActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsSending:Z

    return v0
.end method

.method static synthetic access$14(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mOrigVenue:Lcom/waze/reports/VenueData;

    return-object v0
.end method

.method static synthetic access$15(Lcom/waze/reports/EditPlaceFlowActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mRetryImageLoad:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/reports/EditPlaceFlowActivity;Lcom/waze/NativeManager$AddressStrings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    return-void
.end method

.method static synthetic access$4(Lcom/waze/reports/EditPlaceFlowActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mFlagType:I

    return-void
.end method

.method static synthetic access$5(Lcom/waze/reports/EditPlaceFlowActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mFlagType:I

    return v0
.end method

.method static synthetic access$6(Lcom/waze/reports/EditPlaceFlowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->gotoMovedOrClosed()V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/reports/EditPlaceFlowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->gotoFindDuplicate()V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/reports/EditPlaceFlowActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/waze/reports/EditPlaceFlowActivity;->gotoIappropreateOrWrongDetails(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/waze/reports/EditPlaceFlowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->gotoFlagResidential()V

    return-void
.end method

.method private gotoFindDuplicate()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 470
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v1, v1, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->latitude:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->venueSearch(II)V

    .line 471
    return-void
.end method

.method private gotoFlagResidential()V
    .locals 8

    .prologue
    .line 475
    new-instance v4, Lcom/waze/reports/EditPlaceFlowActivity$5;

    invoke-direct {v4, p0}, Lcom/waze/reports/EditPlaceFlowActivity$5;-><init>(Lcom/waze/reports/EditPlaceFlowActivity;)V

    .line 485
    .local v4, onClickYes:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_Q:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_RESIDENTIAL_PLACE_CONFIRM_DIALOG_BODY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 488
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_RESIDENTIAL_PLACE_CONFIRM_DIALOG_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 489
    iget-object v6, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_CANCEL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 485
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 490
    return-void
.end method

.method private gotoIappropreateOrWrongDetails(Z)V
    .locals 3
    .parameter "isInappropriate"

    .prologue
    const/4 v2, 0x0

    .line 450
    const/4 v1, 0x4

    iput v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 451
    new-instance v0, Lcom/waze/ifs/ui/EditTextDialogFragment;

    invoke-direct {v0}, Lcom/waze/ifs/ui/EditTextDialogFragment;-><init>()V

    .line 452
    .local v0, fragment:Lcom/waze/ifs/ui/EditTextDialogFragment;
    if-eqz p1, :cond_0

    .line 453
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_PLACE_INAPPROPRIATE:Lcom/waze/strings/DisplayStrings;

    .line 452
    :goto_0
    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setTitle(Lcom/waze/strings/DisplayStrings;)V

    .line 455
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_TELL_US_MORE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setSubtitle(Lcom/waze/strings/DisplayStrings;)V

    .line 456
    if-eqz p1, :cond_1

    .line 457
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_THIS_PLACE_IS_INAPPROPRIATE_BECAUSE___:Lcom/waze/strings/DisplayStrings;

    .line 456
    :goto_1
    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setHint(Lcom/waze/strings/DisplayStrings;)V

    .line 459
    invoke-virtual {v0, v2}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setSingleLine(Z)V

    .line 460
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setMinLines(I)V

    .line 461
    invoke-virtual {v0, v2}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setSpeech(Z)V

    .line 462
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setInputType(I)V

    .line 463
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0902cc

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 464
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 465
    return-void

    .line 454
    :cond_0
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_PLACE_WRONG:Lcom/waze/strings/DisplayStrings;

    goto :goto_0

    .line 458
    :cond_1
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_THE_DETAILS_ARE_WRONG_BECAUSE___:Lcom/waze/strings/DisplayStrings;

    goto :goto_1
.end method

.method private gotoMovedOrClosed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 494
    const/4 v1, 0x4

    iput v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 495
    new-instance v0, Lcom/waze/ifs/ui/EditTextDialogFragment;

    invoke-direct {v0}, Lcom/waze/ifs/ui/EditTextDialogFragment;-><init>()V

    .line 496
    .local v0, fragment:Lcom/waze/ifs/ui/EditTextDialogFragment;
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_PLACE_CLOSED_MOVED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setTitle(Lcom/waze/strings/DisplayStrings;)V

    .line 497
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_WHAT_HAPPENEDQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setSubtitle(Lcom/waze/strings/DisplayStrings;)V

    .line 498
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ADD_COMMENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setHint(Lcom/waze/strings/DisplayStrings;)V

    .line 499
    invoke-virtual {v0, v2}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setSingleLine(Z)V

    .line 500
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setMinLines(I)V

    .line 501
    invoke-virtual {v0, v2}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setSpeech(Z)V

    .line 502
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setInputType(I)V

    .line 503
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0902cc

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 505
    return-void
.end method

.method private sayThankYou(II)V
    .locals 11
    .parameter "res"
    .parameter "points"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 526
    if-gez p2, :cond_0

    iget p2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mEarnedPoints:I

    .line 530
    :cond_0
    if-nez p2, :cond_1

    .line 531
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_THANK_YOU_TITLE_ZERO_POINTS:Lcom/waze/strings/DisplayStrings;

    .line 532
    .local v6, thanks1:Lcom/waze/strings/DisplayStrings;
    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_THANK_YOU_BODY_ZERO_POINTS:Lcom/waze/strings/DisplayStrings;

    .line 537
    .local v7, thanks2:Lcom/waze/strings/DisplayStrings;
    :goto_0
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_OKAY:Lcom/waze/strings/DisplayStrings;

    .line 539
    .local v9, later:Lcom/waze/strings/DisplayStrings;
    new-instance v0, Lcom/waze/reports/ThankYouDialog;

    new-instance v4, Lcom/waze/reports/EditPlaceFlowActivity$6;

    invoke-direct {v4, p0}, Lcom/waze/reports/EditPlaceFlowActivity$6;-><init>(Lcom/waze/reports/EditPlaceFlowActivity;)V

    .line 547
    if-ne p1, v10, :cond_2

    :goto_1
    move-object v1, p0

    move v2, p2

    move-object v8, v5

    invoke-direct/range {v0 .. v10}, Lcom/waze/reports/ThankYouDialog;-><init>(Landroid/content/Context;IZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;Z)V

    .line 539
    iput-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mTyd:Lcom/waze/reports/ThankYouDialog;

    .line 549
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mTyd:Lcom/waze/reports/ThankYouDialog;

    invoke-virtual {v0}, Lcom/waze/reports/ThankYouDialog;->show()V

    .line 550
    return-void

    .line 534
    .end local v6           #thanks1:Lcom/waze/strings/DisplayStrings;
    .end local v7           #thanks2:Lcom/waze/strings/DisplayStrings;
    .end local v9           #later:Lcom/waze/strings/DisplayStrings;
    :cond_1
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_THANK_YOU_TITLE_FULL_EDIT:Lcom/waze/strings/DisplayStrings;

    .line 535
    .restart local v6       #thanks1:Lcom/waze/strings/DisplayStrings;
    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_THANK_YOU_BODY_FULL_EDIT:Lcom/waze/strings/DisplayStrings;

    .restart local v7       #thanks2:Lcom/waze/strings/DisplayStrings;
    goto :goto_0

    .restart local v9       #later:Lcom/waze/strings/DisplayStrings;
    :cond_2
    move v10, v3

    .line 547
    goto :goto_1
.end method

.method private thanksForReport()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_REPORT_PLACE_THANK_YOU:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 283
    const-string v2, "flag_verified"

    .line 282
    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->OpenProgressIconPopup(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v0, Lcom/waze/reports/EditPlaceFlowActivity$2;

    invoke-direct {v0, p0}, Lcom/waze/reports/EditPlaceFlowActivity$2;-><init>(Lcom/waze/reports/EditPlaceFlowActivity;)V

    .line 291
    const-wide/16 v1, 0xfa0

    .line 285
    invoke-virtual {p0, v0, v1, v2}, Lcom/waze/reports/EditPlaceFlowActivity;->postDelayed(Ljava/lang/Runnable;J)V

    .line 292
    return-void
.end method


# virtual methods
.method public choiceMade(Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;Ljava/lang/String;)V
    .locals 4
    .parameter "choice"
    .parameter "comment"

    .prologue
    .line 271
    iget v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget v2, p1, Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;->value:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/waze/NativeManager;->venueFlag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->thanksForReport()V

    .line 276
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 277
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 278
    return-void
.end method

.method public doneEditMap(II)V
    .locals 3
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    const/4 v2, 0x1

    .line 159
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iput p1, v0, Lcom/waze/reports/VenueData;->longitude:I

    .line 160
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iput p2, v0, Lcom/waze/reports/VenueData;->latitude:I

    .line 161
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iput-boolean v2, v0, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    .line 163
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mainFragment:Lcom/waze/reports/EditPlaceFragment;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditPlaceFragment;->updateMapLocation(Lcom/waze/reports/VenueData;)V

    .line 164
    iput v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 165
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 166
    return-void
.end method

.method public doneOpeningHours(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/reports/OpeningHours;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, arrOpeningHours:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/OpeningHours;>;"
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lcom/waze/reports/VenueData;->numOpeningHours:I

    .line 103
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v1, v1, Lcom/waze/reports/VenueData;->numOpeningHours:I

    sget v2, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    if-le v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    sget v2, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    iput v2, v1, Lcom/waze/reports/VenueData;->numOpeningHours:I

    .line 106
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v1, v1, Lcom/waze/reports/VenueData;->numOpeningHours:I

    if-lt v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mainFragment:Lcom/waze/reports/EditPlaceFragment;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v1, v2}, Lcom/waze/reports/EditPlaceFragment;->setOpeningHours(Lcom/waze/reports/VenueData;)V

    .line 111
    const/4 v1, 0x1

    iput v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 112
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 113
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v2, v1, Lcom/waze/reports/VenueData;->openingHours:[Lcom/waze/reports/OpeningHours;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/reports/OpeningHours;

    aput-object v1, v2, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public doneServices(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, setServices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lcom/waze/reports/VenueData;->numServices:I

    .line 132
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->numServices:I

    sget v3, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    if-le v2, v3, :cond_0

    .line 133
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    sget v3, Lcom/waze/reports/VenueData;->MAX_ARR_SIZE:I

    iput v3, v2, Lcom/waze/reports/VenueData;->numServices:I

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 136
    .local v0, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mainFragment:Lcom/waze/reports/EditPlaceFragment;

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v2, v3}, Lcom/waze/reports/EditPlaceFragment;->setServices(Lcom/waze/reports/VenueData;)V

    .line 143
    const/4 v2, 0x1

    iput v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 144
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 145
    return-void

    .line 136
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, srv:Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 139
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v3, v3, Lcom/waze/reports/VenueData;->numServices:I

    if-ne v0, v3, :cond_1

    goto :goto_0
.end method

.method public goToAddCategory()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 196
    const/16 v1, 0x8

    iput v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 197
    new-instance v0, Lcom/waze/ifs/ui/OmniSelectionFragment;

    invoke-direct {v0}, Lcom/waze/ifs/ui/OmniSelectionFragment;-><init>()V

    .line 199
    .local v0, fragment:Lcom/waze/ifs/ui/OmniSelectionFragment;
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CATEGORIES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setTitle(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/waze/reports/EditPlaceCategoriesHolder;->getCategoryValues()[Lcom/waze/settings/SettingsValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 201
    invoke-virtual {v0, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setExpandable(Z)V

    .line 202
    invoke-virtual {v0, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setAutoComplete(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0902cc

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 205
    return-void
.end method

.method public goToEditAbout(Ljava/lang/String;)V
    .locals 8
    .parameter "initial"

    .prologue
    const/16 v7, 0x12c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
    const/4 v2, 0x3

    iput v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 239
    new-instance v1, Lcom/waze/ifs/ui/EditTextDialogFragment;

    invoke-direct {v1}, Lcom/waze/ifs/ui/EditTextDialogFragment;-><init>()V

    .line 240
    .local v1, fragment:Lcom/waze/ifs/ui/EditTextDialogFragment;
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_EDIT_PLACE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setTitle(Lcom/waze/strings/DisplayStrings;)V

    .line 241
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ABOUT2:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setSubtitle(Lcom/waze/strings/DisplayStrings;)V

    .line 242
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_DESCRIBE_PLACE_HINT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setHint(Lcom/waze/strings/DisplayStrings;)V

    .line 243
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MAX_PD_CHARACTERS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, explain:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setExplanation(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1, v5}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setSingleLine(Z)V

    .line 246
    invoke-virtual {v1, v5}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setSpeech(Z)V

    .line 247
    invoke-virtual {v1, v7}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setMaxLength(I)V

    .line 248
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setMinLines(I)V

    .line 249
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->about:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setInitial(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1, v6}, Lcom/waze/ifs/ui/EditTextDialogFragment;->setInputType(I)V

    .line 251
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0902cc

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 253
    return-void
.end method

.method public goToEditMap()V
    .locals 3

    .prologue
    .line 148
    const/4 v1, 0x6

    iput v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 149
    new-instance v0, Lcom/waze/reports/EditMapLocationFragment;

    invoke-direct {v0}, Lcom/waze/reports/EditMapLocationFragment;-><init>()V

    .line 150
    .local v0, fragment:Lcom/waze/reports/EditMapLocationFragment;
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v1, v1, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->latitude:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/reports/EditMapLocationFragment;->setLonLat(II)V

    .line 151
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditMapLocationFragment;->setTitle(Lcom/waze/strings/DisplayStrings;)V

    .line 152
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-boolean v1, v1, Lcom/waze/reports/VenueData;->bResidence:Z

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditMapLocationFragment;->setAvoiderPin(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0902cc

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 155
    return-void
.end method

.method public goToOpeningHours()V
    .locals 5

    .prologue
    .line 89
    const/4 v3, 0x5

    iput v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v3, v3, Lcom/waze/reports/VenueData;->numOpeningHours:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v0, arrOpeningHours:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/OpeningHours;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v3, v3, Lcom/waze/reports/VenueData;->numOpeningHours:I

    if-lt v2, v3, :cond_0

    .line 95
    new-instance v1, Lcom/waze/reports/EditOpeningHoursFragment;

    invoke-direct {v1}, Lcom/waze/reports/EditOpeningHoursFragment;-><init>()V

    .line 96
    .local v1, fragment:Lcom/waze/reports/EditOpeningHoursFragment;
    invoke-virtual {v1, v0}, Lcom/waze/reports/EditOpeningHoursFragment;->setOpeningHours(Ljava/util/ArrayList;)V

    .line 97
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0902cc

    invoke-virtual {v3, v4, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 99
    return-void

    .line 92
    .end local v1           #fragment:Lcom/waze/reports/EditOpeningHoursFragment;
    :cond_0
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->openingHours:[Lcom/waze/reports/OpeningHours;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public goToPickCityStreet()V
    .locals 14

    .prologue
    .line 686
    const/16 v10, 0xb

    iput v10, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 688
    new-instance v0, Lcom/waze/ifs/ui/OmniSelectionFragment;

    invoke-direct {v0}, Lcom/waze/ifs/ui/OmniSelectionFragment;-><init>()V

    .line 690
    .local v0, addressSelect:Lcom/waze/ifs/ui/OmniSelectionFragment;
    iget-object v10, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_ADDRESS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setTitle(Ljava/lang/String;)V

    .line 692
    new-instance v5, Ljava/util/HashSet;

    iget-object v10, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget v10, v10, Lcom/waze/NativeManager$AddressStrings;->numResults:I

    invoke-direct {v5, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 693
    .local v5, citySet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    iget-object v10, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget v10, v10, Lcom/waze/NativeManager$AddressStrings;->numResults:I

    invoke-direct {v1, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 694
    .local v1, addressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget v10, v10, Lcom/waze/NativeManager$AddressStrings;->numResults:I

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 696
    .local v9, valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/settings/SettingsValue;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v10, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget v10, v10, Lcom/waze/NativeManager$AddressStrings;->numResults:I

    if-lt v6, v10, :cond_0

    .line 723
    :goto_1
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_6

    .line 731
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/waze/settings/SettingsValue;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/waze/settings/SettingsValue;

    .line 732
    .local v3, argValues:[Lcom/waze/settings/SettingsValue;
    invoke-virtual {v0, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 734
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v10

    const v11, 0x7f0902cc

    invoke-virtual {v10, v11, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v10

    .line 735
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/FragmentTransaction;->commit()I

    .line 736
    return-void

    .line 697
    .end local v3           #argValues:[Lcom/waze/settings/SettingsValue;
    :cond_0
    const/4 v7, 0x0

    .line 699
    .local v7, jsonAddr:Lorg/json/JSONObject;
    :try_start_0
    iget-object v10, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v10, v10, Lcom/waze/NativeManager$AddressStrings;->city:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 700
    iget-object v10, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v10, v10, Lcom/waze/NativeManager$AddressStrings;->city:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v10, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v10, v10, Lcom/waze/NativeManager$AddressStrings;->street:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 702
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 703
    .end local v7           #jsonAddr:Lorg/json/JSONObject;
    .local v8, jsonAddr:Lorg/json/JSONObject;
    :try_start_1
    const-string v10, "STREET"

    iget-object v11, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v11, v11, Lcom/waze/NativeManager$AddressStrings;->street:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 704
    const-string v10, "CITY"

    iget-object v11, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v11, v11, Lcom/waze/NativeManager$AddressStrings;->city:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v7, v8

    .line 712
    .end local v8           #jsonAddr:Lorg/json/JSONObject;
    .restart local v7       #jsonAddr:Lorg/json/JSONObject;
    :cond_1
    :goto_3
    if-eqz v7, :cond_5

    .line 713
    :try_start_2
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, addressString:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 696
    .end local v2           #addressString:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 707
    :cond_3
    iget-object v10, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v10, v10, Lcom/waze/NativeManager$AddressStrings;->street:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 708
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 709
    .end local v7           #jsonAddr:Lorg/json/JSONObject;
    .restart local v8       #jsonAddr:Lorg/json/JSONObject;
    :try_start_3
    const-string v10, "STREET"

    iget-object v11, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v11, v11, Lcom/waze/NativeManager$AddressStrings;->street:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v7, v8

    .end local v8           #jsonAddr:Lorg/json/JSONObject;
    .restart local v7       #jsonAddr:Lorg/json/JSONObject;
    goto :goto_3

    .line 715
    .restart local v2       #addressString:Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 716
    new-instance v10, Lcom/waze/settings/SettingsValue;

    iget-object v11, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v11, v11, Lcom/waze/NativeManager$AddressStrings;->street:[Ljava/lang/String;

    aget-object v11, v11, v6

    .line 717
    iget-object v12, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget-object v12, v12, Lcom/waze/NativeManager$AddressStrings;->city:[Ljava/lang/String;

    aget-object v12, v12, v6

    const/4 v13, 0x0

    invoke-direct {v10, v2, v11, v12, v13}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 716
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 720
    .end local v2           #addressString:Ljava/lang/String;
    :cond_5
    :goto_4
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v10

    iget-object v11, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;

    iget v11, v11, Lcom/waze/NativeManager$AddressStrings;->numToFilterTo:I

    if-lt v10, v11, :cond_2

    goto/16 :goto_1

    .line 723
    .end local v7           #jsonAddr:Lorg/json/JSONObject;
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 724
    .local v4, city:Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 726
    .restart local v7       #jsonAddr:Lorg/json/JSONObject;
    :try_start_5
    const-string v11, "CITY"

    invoke-virtual {v7, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    new-instance v11, Lcom/waze/settings/SettingsValue;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v4, v13}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 728
    :catch_0
    move-exception v11

    goto/16 :goto_2

    .line 719
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

.method public goToServices()V
    .locals 6

    .prologue
    .line 116
    const/16 v4, 0xa

    iput v4, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v4, v4, Lcom/waze/reports/VenueData;->numServices:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v3, srvList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget v4, v4, Lcom/waze/reports/VenueData;->numServices:I

    if-lt v1, v4, :cond_0

    .line 122
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v2, setServiceIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Lcom/waze/reports/EditPlaceServicesFragment;

    invoke-direct {v0}, Lcom/waze/reports/EditPlaceServicesFragment;-><init>()V

    .line 125
    .local v0, fragment:Lcom/waze/reports/EditPlaceServicesFragment;
    invoke-virtual {v0, v2}, Lcom/waze/reports/EditPlaceServicesFragment;->setServiceIds(Ljava/util/HashSet;)V

    .line 126
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0902cc

    invoke-virtual {v4, v5, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 127
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 128
    return-void

    .line 119
    .end local v0           #fragment:Lcom/waze/reports/EditPlaceServicesFragment;
    .end local v2           #setServiceIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public goToTakePhoto(Landroid/os/Bundle;)V
    .locals 3
    .parameter "cameraButtonLocation"

    .prologue
    .line 169
    const/4 v1, 0x2

    iput v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 170
    new-instance v0, Lcom/waze/reports/TakePhotoFragment;

    invoke-direct {v0}, Lcom/waze/reports/TakePhotoFragment;-><init>()V

    .line 171
    .local v0, fragment:Lcom/waze/reports/TakePhotoFragment;
    invoke-virtual {v0, p1}, Lcom/waze/reports/TakePhotoFragment;->setAnimateButton(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0902cc

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 174
    return-void
.end method

.method public isSearching(I)V
    .locals 0
    .parameter "times"

    .prologue
    .line 739
    return-void
.end method

.method protected myHandleMessage(Landroid/os/Message;)Z
    .locals 23
    .parameter "msg"

    .prologue
    .line 555
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sget v4, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    if-ne v3, v4, :cond_6

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 557
    .local v12, b:Landroid/os/Bundle;
    const-string v3, "venue_data"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, [Lcom/waze/reports/VenueData;

    .line 558
    .local v16, possibleVenues:[Lcom/waze/reports/VenueData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget v4, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v3}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 561
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v3, v0

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 682
    .end local v12           #b:Landroid/os/Bundle;
    .end local v16           #possibleVenues:[Lcom/waze/reports/VenueData;
    :goto_0
    return v3

    .line 563
    .restart local v12       #b:Landroid/os/Bundle;
    .restart local v16       #possibleVenues:[Lcom/waze/reports/VenueData;
    :cond_1
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 565
    new-instance v14, Lcom/waze/ifs/ui/OmniSelectionFragment;

    invoke-direct {v14}, Lcom/waze/ifs/ui/OmniSelectionFragment;-><init>()V

    .line 567
    .local v14, nameSelect:Lcom/waze/ifs/ui/OmniSelectionFragment;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_PLACE_DUPLICATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setTitle(Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_PLACE_TO_MERGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setEditBoxHint(Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, v16

    array-length v3, v0

    new-array v11, v3, [Lcom/waze/settings/SettingsValue;

    .line 572
    .local v11, argValues:[Lcom/waze/settings/SettingsValue;
    const/4 v13, 0x0

    .line 573
    .local v13, i:I
    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_3

    .line 581
    array-length v3, v11

    if-ge v13, v3, :cond_2

    .line 582
    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    .end local v11           #argValues:[Lcom/waze/settings/SettingsValue;
    check-cast v11, [Lcom/waze/settings/SettingsValue;

    .line 584
    .restart local v11       #argValues:[Lcom/waze/settings/SettingsValue;
    :cond_2
    invoke-virtual {v14, v11}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 586
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setSearch(Z)V

    .line 587
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lcom/waze/ifs/ui/OmniSelectionFragment;->setFilter(Z)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0902cc

    invoke-virtual {v3, v4, v14}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 590
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 592
    const/4 v3, 0x1

    goto :goto_0

    .line 573
    :cond_3
    aget-object v18, v16, v3

    .line 574
    .local v18, vd:Lcom/waze/reports/VenueData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 573
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 575
    :cond_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_4

    .line 577
    new-instance v19, Lcom/waze/settings/SettingsValue;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v19, v11, v13

    .line 578
    aget-object v19, v11, v13

    invoke-virtual/range {v18 .. v18}, Lcom/waze/reports/VenueData;->getAddressString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    .line 579
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 594
    .end local v11           #argValues:[Lcom/waze/settings/SettingsValue;
    .end local v12           #b:Landroid/os/Bundle;
    .end local v13           #i:I
    .end local v14           #nameSelect:Lcom/waze/ifs/ui/OmniSelectionFragment;
    .end local v16           #possibleVenues:[Lcom/waze/reports/VenueData;
    .end local v18           #vd:Lcom/waze/reports/VenueData;
    :cond_6
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sget v4, Lcom/waze/NativeManager;->UH_VENUE_STATUS:I

    if-ne v3, v4, :cond_8

    .line 595
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsSending:Z

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v3}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 599
    .restart local v12       #b:Landroid/os/Bundle;
    const-string v3, "res"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 600
    .local v17, res:I
    const-string v3, "points"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 601
    .local v15, points:I
    const-string v3, "id"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 603
    .local v9, id:Ljava/lang/String;
    if-ltz v17, :cond_7

    .line 604
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/waze/reports/EditPlaceFlowActivity;->sayThankYou(II)V

    .line 609
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 606
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SORRYE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 607
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v19, Lcom/waze/strings/DisplayStrings;->DS_PLACE_ADD_ERROR:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    const/16 v19, 0x1

    .line 606
    move/from16 v0, v19

    invoke-static {v3, v4, v0}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 611
    .end local v9           #id:Ljava/lang/String;
    .end local v12           #b:Landroid/os/Bundle;
    .end local v15           #points:I
    .end local v17           #res:I
    :cond_8
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sget v4, Lcom/waze/NativeManager;->UH_VENUE_ADD_IMAGE_RESULT:I

    if-ne v3, v4, :cond_c

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget v4, Lcom/waze/NativeManager;->UH_VENUE_ADD_IMAGE_RESULT:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 614
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 615
    .restart local v12       #b:Landroid/os/Bundle;
    const-string v3, "path"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 616
    .local v6, path:Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 617
    .restart local v9       #id:Ljava/lang/String;
    const-string v3, "image_url"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 618
    .local v7, imageUrl:Ljava/lang/String;
    const-string v3, "image_thumbnail_url"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 619
    .local v8, imageThumbnailUrl:Ljava/lang/String;
    const-string v3, "res"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 622
    .local v17, res:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsContinueEdit:Z

    if-eqz v3, :cond_a

    .line 623
    const-string v5, "CONTINUE"

    .line 627
    .local v5, from:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 628
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsWaitingForImage:Z

    .line 629
    if-eqz v17, :cond_b

    .line 631
    new-instance v10, Lcom/waze/reports/EditPlaceFlowActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v7, v8, v9}, Lcom/waze/reports/EditPlaceFlowActivity$7;-><init>(Lcom/waze/reports/EditPlaceFlowActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .local v10, imageListener:Lcom/waze/utils/ImageRepository$ImageRepositoryListener;
    new-instance v3, Lcom/waze/reports/EditPlaceFlowActivity$8;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/waze/reports/EditPlaceFlowActivity$8;-><init>(Lcom/waze/reports/EditPlaceFlowActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mRetryImageLoad:Ljava/lang/Runnable;

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mRetryImageLoad:Ljava/lang/Runnable;

    const-wide/16 v19, 0xbb8

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2}, Lcom/waze/reports/EditPlaceFlowActivity;->postDelayed(Ljava/lang/Runnable;J)V

    .line 680
    .end local v10           #imageListener:Lcom/waze/utils/ImageRepository$ImageRepositoryListener;
    :cond_9
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 624
    .end local v5           #from:Ljava/lang/String;
    :cond_a
    const-string v5, "PREVIEW"

    goto :goto_4

    .line 675
    .restart local v5       #from:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsSending:Z

    if-eqz v3, :cond_9

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mOrigVenue:Lcom/waze/reports/VenueData;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v4, v0, v5, v1}, Lcom/waze/NativeManager;->venueUpdate(Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 682
    .end local v5           #from:Ljava/lang/String;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #imageUrl:Ljava/lang/String;
    .end local v8           #imageThumbnailUrl:Ljava/lang/String;
    .end local v9           #id:Ljava/lang/String;
    .end local v12           #b:Landroid/os/Bundle;
    .end local v17           #res:Z
    :cond_c
    invoke-super/range {p0 .. p1}, Lcom/waze/ifs/ui/ActivityBase;->myHandleMessage(Landroid/os/Message;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public omniSelected(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "idx"
    .parameter "value"
    .parameter "title"
    .parameter "bUserInput"

    .prologue
    .line 209
    iget v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 210
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v1, p2}, Lcom/waze/reports/VenueData;->addCategory(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    invoke-static {v2}, Lcom/waze/reports/EditPlaceCategoriesHolder;->sortCategoryIdsArray([Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/waze/reports/VenueData;->numCategories:I

    .line 212
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mainFragment:Lcom/waze/reports/EditPlaceFragment;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v1, v2}, Lcom/waze/reports/EditPlaceFragment;->updateCategories(Lcom/waze/reports/VenueData;)V

    .line 233
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 234
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 235
    return-void

    .line 213
    :cond_1
    iget v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 214
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mFlagType:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/waze/NativeManager;->venueFlag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->thanksForReport()V

    goto :goto_0

    .line 216
    :cond_2
    iget v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 218
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, jsonAddr:Lorg/json/JSONObject;
    const-string v1, "CITY"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    const-string v2, "CITY"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    .line 225
    :goto_1
    const-string v1, "STREET"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    const-string v2, "STREET"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    .line 230
    :goto_2
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mainFragment:Lcom/waze/reports/EditPlaceFragment;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v1, v2}, Lcom/waze/reports/EditPlaceFragment;->updateAddress(Lcom/waze/reports/VenueData;)V

    goto :goto_0

    .line 231
    .end local v0           #jsonAddr:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 223
    .restart local v0       #jsonAddr:Lorg/json/JSONObject;
    :cond_3
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    const-string v2, ""

    iput-object v2, v1, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    goto :goto_1

    .line 228
    :cond_4
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    const-string v2, ""

    iput-object v2, v1, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 393
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetAddressOptionsView()V

    .line 394
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 395
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 296
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 298
    invoke-static {}, Lcom/waze/reports/EditPlaceServicesFragment;->getServices()Lcom/waze/NativeManager$VenueServices;

    .line 299
    invoke-static {}, Lcom/waze/reports/EditPlaceCategoriesHolder;->getCategories()[Lcom/waze/NativeManager$VenueCategory;

    .line 300
    invoke-static {}, Lcom/waze/reports/EditPlacePointsHolder;->getAllPoints()Lcom/waze/NativeManager$VenueFieldPoints;

    .line 301
    invoke-static {}, Lcom/waze/reports/EditPlaceValidatorsHolder;->getAllValidators()Lcom/waze/NativeManager$VenueFieldValidators;

    .line 303
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/waze/reports/VenueData;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/waze/reports/VenueData;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/VenueData;

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    .line 308
    :goto_0
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "continue_edit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iput-boolean v4, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsContinueEdit:Z

    .line 312
    :cond_0
    if-eqz p1, :cond_1

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mVenue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/VenueData;

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 318
    const-string v1, "PLACES_PLACE_DETAILS_SCREEN_SHOWN"

    .line 319
    const-string v2, "CONTINUE|VENUE_ID"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsContinueEdit:Z

    if-eqz v0, :cond_4

    const-string v0, "TRUE"

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v1, v2, v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    .line 322
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    .line 324
    new-instance v0, Lcom/waze/reports/EditPlaceFlowActivity$3;

    invoke-direct {v0, p0}, Lcom/waze/reports/EditPlaceFlowActivity$3;-><init>(Lcom/waze/reports/EditPlaceFlowActivity;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 332
    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Lcom/waze/reports/EditPlaceFlowActivity;->setContentView(I)V

    .line 333
    if-nez p1, :cond_5

    .line 334
    iput v4, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 335
    new-instance v0, Lcom/waze/reports/EditPlaceFragment;

    invoke-direct {v0}, Lcom/waze/reports/EditPlaceFragment;-><init>()V

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mainFragment:Lcom/waze/reports/EditPlaceFragment;

    .line 336
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mainFragment:Lcom/waze/reports/EditPlaceFragment;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditPlaceFragment;->setVenue(Lcom/waze/reports/VenueData;)V

    .line 337
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 338
    const v1, 0x7f0902cc

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mainFragment:Lcom/waze/reports/EditPlaceFragment;

    const-string v3, "EditPlaceFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 350
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mRetain:Z

    .line 352
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_VENUE_STATUS:I

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 353
    iget-boolean v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsWaitingForImage:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_VENUE_ADD_IMAGE_RESULT:I

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 356
    :cond_2
    return-void

    .line 306
    :cond_3
    new-instance v0, Lcom/waze/reports/VenueData;

    invoke-direct {v0}, Lcom/waze/reports/VenueData;-><init>()V

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    goto/16 :goto_0

    .line 319
    :cond_4
    const-string v0, "FALSE"

    goto/16 :goto_1

    .line 340
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mFlagType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mFlagType:I

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mVenue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/VenueData;

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsContinueEdit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsContinueEdit:Z

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsSending"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsSending:Z

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsWaitingForImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsWaitingForImage:Z

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mPhotoPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "EditPlaceFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/EditPlaceFragment;

    .line 347
    iput-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mainFragment:Lcom/waze/reports/EditPlaceFragment;

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mTyd:Lcom/waze/reports/ThankYouDialog;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mTyd:Lcom/waze/reports/ThankYouDialog;

    invoke-virtual {v0}, Lcom/waze/reports/ThankYouDialog;->dismiss()V

    .line 376
    :cond_0
    iget-boolean v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mRetain:Z

    if-nez v0, :cond_1

    .line 377
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->cleanUpFiles(Ljava/lang/String;)V

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_VENUE_STATUS:I

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 380
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 381
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_VENUE_ADD_IMAGE_RESULT:I

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 382
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 383
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 387
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetAddressOptionsView()V

    .line 388
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 389
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mFlagType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mFlagType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mVenue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsContinueEdit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsContinueEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsSending"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsSending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsWaitingForImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsWaitingForImage:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/reports/EditPlaceFlowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mPhotoPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mRetain:Z

    .line 369
    return-void
.end method

.method public photoTaken(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    .line 178
    iput-object p2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, p2, v1, v2}, Lcom/waze/reports/VenueData;->addImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iput-boolean v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsWaitingForImage:Z

    .line 181
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_VENUE_ADD_IMAGE_RESULT:I

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 182
    new-instance v0, Lcom/waze/reports/EditPlaceFlowActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/reports/EditPlaceFlowActivity$1;-><init>(Lcom/waze/reports/EditPlaceFlowActivity;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 190
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mainFragment:Lcom/waze/reports/EditPlaceFragment;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditPlaceFragment;->photoTaken(Lcom/waze/reports/VenueData;)V

    .line 191
    iput v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 192
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 193
    return-void
.end method

.method public sendVenue(Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;ZI)V
    .locals 5
    .parameter "venue"
    .parameter "origVenue"
    .parameter "picsAdded"
    .parameter "earnedPoints"

    .prologue
    .line 508
    const-string v1, "PLACES_PLACE_DETAILS_SCREEN_DONE_CLICKED"

    .line 509
    const-string v2, "VENUE_ID"

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    .line 508
    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsSending:Z

    .line 512
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    .line 513
    iput-object p2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mOrigVenue:Lcom/waze/reports/VenueData;

    .line 515
    iput p4, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mEarnedPoints:I

    .line 516
    iget-boolean v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsWaitingForImage:Z

    if-nez v1, :cond_0

    .line 518
    iget-boolean v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mIsContinueEdit:Z

    if-eqz v1, :cond_1

    .line 519
    const-string v0, "CONTINUE"

    .line 521
    .local v0, from:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mOrigVenue:Lcom/waze/reports/VenueData;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/waze/NativeManager;->venueUpdate(Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .end local v0           #from:Ljava/lang/String;
    :cond_0
    return-void

    .line 520
    :cond_1
    const-string v0, "PREVIEW"

    goto :goto_0
.end method

.method public showReportSubmenu()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 398
    const-string v5, "PLACES_PLACE_FLAGGING_POPUP_SHOWN"

    const-string v6, "VENUE_ID"

    .line 399
    iget-object v7, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v7, v7, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    .line 398
    invoke-static {v5, v6, v7}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_WHATS_WRONG_WITH_THIS_PLACEQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, dialogTitle:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_PLACE_CLOSED_MOVED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 404
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_PLACE_DUPLICATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    .line 405
    iget-object v6, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_PLACE_INAPPROPRIATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 406
    iget-object v6, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_RESIDENTIAL_PLACE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 407
    iget-object v6, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_PLACE_WRONG:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 409
    .local v4, options:[Ljava/lang/String;
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 412
    .local v3, optionValues:[I
    const/4 v5, -0x1

    iput v5, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mFlagType:I

    .line 414
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v5, 0x7f06000f

    invoke-direct {v1, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 415
    .local v1, bob:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 416
    new-instance v5, Lcom/waze/reports/EditPlaceFlowActivity$4;

    invoke-direct {v5, p0, v3}, Lcom/waze/reports/EditPlaceFlowActivity$4;-><init>(Lcom/waze/reports/EditPlaceFlowActivity;[I)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 441
    const v5, 0x7f02015a

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 442
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 444
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 445
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 446
    return-void

    .line 409
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public textEdited(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 257
    iget v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iput-object p1, v0, Lcom/waze/reports/VenueData;->about:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mainFragment:Lcom/waze/reports/EditPlaceFragment;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditPlaceFragment;->updateAbout(Lcom/waze/reports/VenueData;)V

    .line 265
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    .line 266
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 267
    return-void

    .line 260
    :cond_1
    iget v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget v2, p0, Lcom/waze/reports/EditPlaceFlowActivity;->mFlagType:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/waze/NativeManager;->venueFlag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFlowActivity;->thanksForReport()V

    goto :goto_0
.end method
