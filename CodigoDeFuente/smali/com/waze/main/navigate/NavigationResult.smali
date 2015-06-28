.class public Lcom/waze/main/navigate/NavigationResult;
.super Ljava/lang/Object;
.source "NavigationResult.java"


# static fields
.field protected static final TIMEOUT_BETWEEN_EVENTS:J = 0x64L

.field private static final TRAFFIC_EVENT_ANIMATION_DURATION:I = 0x1f4

.field public static mFillQaData:Z

.field public static mForceShowTooltipEta:Z


# instance fields
.field private eventAnimationTask:Ljava/lang/Runnable;

.field private eventImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private iEvent:I

.field private isRecoverTooltipAfterOrientationChange:Z

.field private mAlreadyShared:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;"
        }
    .end annotation
.end field

.field private mCalculating:Z

.field private mConfigImage:Ljava/lang/String;

.field private mContext:Lcom/waze/ifs/ui/ActivityBase;

.field private mDialog:Landroid/app/Dialog;

.field private mDistance:Ljava/lang/String;

.field private mDistanceUnit:Ljava/lang/String;

.field private mEtaShown:Z

.field private mFacebookLoggedIn:Z

.field private mFinalEta:Ljava/lang/String;

.field private mFinalTitle:Ljava/lang/String;

.field private mFreeText:Ljava/lang/String;

.field private mFreqFriendsLayout:Landroid/widget/LinearLayout;

.field private mFriendsData:[Lcom/waze/user/FriendUserData;

.field private mFriendsDrivingCount:I

.field private mFriendsOnline:I

.field private mGoOnReturnFromAddMore:Z

.field private mGoodMorning:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsTripServerResult:Z

.field private mIsWaypoint:Z

.field private mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

.field private mMeetingId:Ljava/lang/String;

.field private mMinutes:I

.field private mNote:Ljava/lang/String;

.field private mNoteID:I

.field private mOfflineRoute:Z

.field private mPictureFirstFriendUrl:Ljava/lang/String;

.field private mPictureSecondFriendUrl:Ljava/lang/String;

.field private mPictureUserUrl:Ljava/lang/String;

.field private mRouteLenght:I

.field private mSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;"
        }
    .end annotation
.end field

.field private mSendEtaTip:Lcom/waze/ifs/ui/TinyTooltip;

.field private mShareTooltipAnchor:Landroid/view/View;

.field private mShareTooltipFud:Lcom/waze/user/FriendUserData;

.field private mShareTooltipNoSuggestions:Z

.field private mShowDisclaimer:Z

.field private mShownAgain:Z

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeOut:I

.field private mTitle:Ljava/lang/String;

.field private mTooltipEtaOkToShow:Z

.field private mTooltipEtaTimesToShow:I

.field private mVia:Ljava/lang/String;

.field private mViaToll:Ljava/lang/String;

.field private mWasTooltipDismissed:Z

.field private mWaypointDistance:Ljava/lang/String;

.field private mWaypointDistanceUnit:Ljava/lang/String;

.field private mWaypointEta:Ljava/lang/String;

.field private mWaypointLength:I

.field private mWaypointTitle:Ljava/lang/String;

.field private miFriendSelected:Lcom/waze/share/ShareUtility$IFriendSelected;

.field final nm:Lcom/waze/NativeManager;

.field numAdd:I

.field numInvite:I

.field private updateTimeTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 144
    sput-boolean v0, Lcom/waze/main/navigate/NavigationResult;->mForceShowTooltipEta:Z

    .line 145
    sput-boolean v0, Lcom/waze/main/navigate/NavigationResult;->mFillQaData:Z

    return-void
.end method

.method public constructor <init>(Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    .line 89
    iput-boolean v2, p0, Lcom/waze/main/navigate/NavigationResult;->mEtaShown:Z

    .line 92
    iput-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    .line 93
    iput-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mHandler:Landroid/os/Handler;

    .line 99
    iput-boolean v2, p0, Lcom/waze/main/navigate/NavigationResult;->mOfflineRoute:Z

    .line 105
    iput-boolean v2, p0, Lcom/waze/main/navigate/NavigationResult;->mShowDisclaimer:Z

    .line 106
    iput-boolean v2, p0, Lcom/waze/main/navigate/NavigationResult;->mIsTripServerResult:Z

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->eventImages:Ljava/util/List;

    .line 110
    iput v2, p0, Lcom/waze/main/navigate/NavigationResult;->iEvent:I

    .line 112
    iput-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mFriendsData:[Lcom/waze/user/FriendUserData;

    .line 124
    iput-boolean v2, p0, Lcom/waze/main/navigate/NavigationResult;->mShownAgain:Z

    .line 125
    iput-boolean v2, p0, Lcom/waze/main/navigate/NavigationResult;->mFacebookLoggedIn:Z

    .line 128
    iput-boolean v2, p0, Lcom/waze/main/navigate/NavigationResult;->mCalculating:Z

    .line 129
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/waze/ConfigManager;->checkConfigDisplayCounter(IZ)I

    move-result v0

    iput v0, p0, Lcom/waze/main/navigate/NavigationResult;->mTooltipEtaTimesToShow:I

    .line 130
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/share/ShareNativeManager;->isOkToShowShareDriveTip()Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mTooltipEtaOkToShow:Z

    .line 131
    iput-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipFud:Lcom/waze/user/FriendUserData;

    .line 132
    iput-boolean v2, p0, Lcom/waze/main/navigate/NavigationResult;->mWasTooltipDismissed:Z

    .line 133
    iput-boolean v2, p0, Lcom/waze/main/navigate/NavigationResult;->isRecoverTooltipAfterOrientationChange:Z

    .line 141
    iput-boolean v2, p0, Lcom/waze/main/navigate/NavigationResult;->mGoOnReturnFromAddMore:Z

    .line 147
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    .line 878
    iput v2, p0, Lcom/waze/main/navigate/NavigationResult;->numAdd:I

    .line 879
    iput v2, p0, Lcom/waze/main/navigate/NavigationResult;->numInvite:I

    .line 1359
    new-instance v0, Lcom/waze/main/navigate/NavigationResult$1;

    invoke-direct {v0, p0}, Lcom/waze/main/navigate/NavigationResult$1;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->updateTimeTask:Ljava/lang/Runnable;

    .line 1365
    new-instance v0, Lcom/waze/main/navigate/NavigationResult$2;

    invoke-direct {v0, p0}, Lcom/waze/main/navigate/NavigationResult$2;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->eventAnimationTask:Ljava/lang/Runnable;

    .line 1378
    new-instance v0, Lcom/waze/main/navigate/NavigationResult$3;

    invoke-direct {v0, p0}, Lcom/waze/main/navigate/NavigationResult$3;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->miFriendSelected:Lcom/waze/share/ShareUtility$IFriendSelected;

    .line 150
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    .line 151
    return-void
.end method

.method static synthetic access$0(Lcom/waze/main/navigate/NavigationResult;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/main/navigate/NavigationResult;)I
    .locals 1
    .parameter

    .prologue
    .line 110
    iget v0, p0, Lcom/waze/main/navigate/NavigationResult;->iEvent:I

    return v0
.end method

.method static synthetic access$10(Lcom/waze/main/navigate/NavigationResult;)Z
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mCalculating:Z

    return v0
.end method

.method static synthetic access$11(Lcom/waze/main/navigate/NavigationResult;Lcom/waze/user/FriendUserData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipFud:Lcom/waze/user/FriendUserData;

    return-void
.end method

.method static synthetic access$12(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/user/FriendUserData;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipFud:Lcom/waze/user/FriendUserData;

    return-object v0
.end method

.method static synthetic access$13(Lcom/waze/main/navigate/NavigationResult;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/waze/main/navigate/NavigationResult;->mTooltipEtaOkToShow:Z

    return-void
.end method

.method static synthetic access$14(Lcom/waze/main/navigate/NavigationResult;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mTooltipEtaOkToShow:Z

    return v0
.end method

.method static synthetic access$15(Lcom/waze/main/navigate/NavigationResult;)Z
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mShownAgain:Z

    return v0
.end method

.method static synthetic access$16(Lcom/waze/main/navigate/NavigationResult;)Z
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mWasTooltipDismissed:Z

    return v0
.end method

.method static synthetic access$17(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->dismissNavigationResultDialog()V

    return-void
.end method

.method static synthetic access$18(Lcom/waze/main/navigate/NavigationResult;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$19(Lcom/waze/main/navigate/NavigationResult;)Z
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mIsTripServerResult:Z

    return v0
.end method

.method static synthetic access$2(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->eventImages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->onClose()V

    return-void
.end method

.method static synthetic access$21(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/social/KeepYourFriendsDialog;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    return-object v0
.end method

.method static synthetic access$22(Lcom/waze/main/navigate/NavigationResult;[Lcom/waze/main/navigate/EventOnRoute;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1289
    invoke-direct {p0, p1}, Lcom/waze/main/navigate/NavigationResult;->populateEventsOnRoute([Lcom/waze/main/navigate/EventOnRoute;)V

    return-void
.end method

.method static synthetic access$23(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/ifs/ui/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    return-object v0
.end method

.method static synthetic access$24(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/ifs/ui/TinyTooltip;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSendEtaTip:Lcom/waze/ifs/ui/TinyTooltip;

    return-object v0
.end method

.method static synthetic access$25(Lcom/waze/main/navigate/NavigationResult;Lcom/waze/ifs/ui/TinyTooltip;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult;->mSendEtaTip:Lcom/waze/ifs/ui/TinyTooltip;

    return-void
.end method

.method static synthetic access$26(Lcom/waze/main/navigate/NavigationResult;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mFreqFriendsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$27(Lcom/waze/main/navigate/NavigationResult;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mMeetingId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/waze/main/navigate/NavigationResult;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult;->mAlreadyShared:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$29(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mAlreadyShared:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/main/navigate/NavigationResult;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput p1, p0, Lcom/waze/main/navigate/NavigationResult;->iEvent:I

    return-void
.end method

.method static synthetic access$30(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 1414
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->friendsListInsertAddMore()V

    return-void
.end method

.method static synthetic access$31(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$32(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/share/ShareUtility$IFriendSelected;
    .locals 1
    .parameter

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->miFriendSelected:Lcom/waze/share/ShareUtility$IFriendSelected;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/main/navigate/NavigationResult;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->eventAnimationTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/main/navigate/NavigationResult;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/waze/main/navigate/NavigationResult;->mGoOnReturnFromAddMore:Z

    return-void
.end method

.method static synthetic access$6(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->stopTimer()V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 1477
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->addSuggestions()V

    return-void
.end method

.method private addSuggestions()V
    .locals 15

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1490
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mFreqFriendsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mSuggestions:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 1491
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/waze/main/navigate/NavigationResult;->miFriendSelected:Lcom/waze/share/ShareUtility$IFriendSelected;

    .line 1490
    invoke-static/range {v0 .. v6}, Lcom/waze/share/ShareUtility;->shareComponentPopulate(Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/waze/share/ShareUtility$IFriendSelected;)V

    .line 1497
    :goto_1
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mFreqFriendsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1498
    .local v14, v:Landroid/view/View;
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipAnchor:Landroid/view/View;

    if-nez v0, :cond_2

    if-eqz v14, :cond_2

    .line 1499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipNoSuggestions:Z

    .line 1500
    iput-object v14, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipAnchor:Landroid/view/View;

    .line 1502
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1503
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSuggestions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/waze/user/PersonBase;

    .line 1504
    .local v7, first:Lcom/waze/user/PersonBase;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    .line 1506
    .local v9, nm:Lcom/waze/NativeManager;
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    .line 1507
    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 1506
    invoke-virtual {v0, v1, v2}, Lcom/waze/ConfigManager;->checkConfigDisplayCounter(IZ)I

    move-result v0

    if-lez v0, :cond_5

    const/4 v11, 0x1

    .line 1508
    .local v11, showFriendAddedTip:Z
    :goto_2
    if-eqz v11, :cond_2

    .line 1510
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_NAV_RESULT_TIP_SEND_ETA_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1511
    invoke-virtual {v7}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/waze/share/ShareUtility;->getShortened(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1510
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1512
    .local v13, tipStr:Ljava/lang/String;
    new-instance v0, Lcom/waze/ifs/ui/TinyTooltip;

    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1, v13}, Lcom/waze/ifs/ui/TinyTooltip;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSendEtaTip:Lcom/waze/ifs/ui/TinyTooltip;

    .line 1513
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSendEtaTip:Lcom/waze/ifs/ui/TinyTooltip;

    invoke-virtual {v0, v14}, Lcom/waze/ifs/ui/TinyTooltip;->show(Landroid/view/View;)V

    .line 1514
    new-instance v0, Lcom/waze/main/navigate/NavigationResult$21;

    invoke-direct {v0, p0}, Lcom/waze/main/navigate/NavigationResult$21;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    .line 1522
    const-wide/16 v1, 0x1388

    .line 1514
    invoke-virtual {v14, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1527
    .end local v7           #first:Lcom/waze/user/PersonBase;
    .end local v9           #nm:Lcom/waze/NativeManager;
    .end local v11           #showFriendAddedTip:Z
    .end local v13           #tipStr:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->friendsListInsertAddMore()V

    .line 1528
    return-void

    .line 1479
    .end local v14           #v:Landroid/view/View;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/waze/user/PersonBase;

    .line 1480
    .local v12, suggested:Lcom/waze/user/PersonBase;
    instance-of v1, v12, Lcom/waze/user/FriendUserData;

    if-eqz v1, :cond_1

    move-object v8, v12

    .line 1481
    check-cast v8, Lcom/waze/user/FriendUserData;

    .line 1482
    .local v8, fud:Lcom/waze/user/FriendUserData;
    iget v1, v8, Lcom/waze/user/FriendUserData;->mContactID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1483
    iget v1, v8, Lcom/waze/user/FriendUserData;->mContactID:I

    invoke-static {v1}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v10

    .line 1485
    .local v10, p:Lcom/waze/autocomplete/Person;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1486
    invoke-virtual {v10}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/waze/user/FriendUserData;->setImage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1493
    .end local v8           #fud:Lcom/waze/user/FriendUserData;
    .end local v10           #p:Lcom/waze/autocomplete/Person;
    .end local v12           #suggested:Lcom/waze/user/PersonBase;
    :cond_4
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mFreqFriendsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;

    const/4 v4, 0x1

    .line 1494
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/waze/main/navigate/NavigationResult;->miFriendSelected:Lcom/waze/share/ShareUtility$IFriendSelected;

    .line 1493
    invoke-static/range {v0 .. v6}, Lcom/waze/share/ShareUtility;->shareComponentPopulate(Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/waze/share/ShareUtility$IFriendSelected;)V

    goto/16 :goto_1

    .line 1506
    .restart local v7       #first:Lcom/waze/user/PersonBase;
    .restart local v9       #nm:Lcom/waze/NativeManager;
    .restart local v14       #v:Landroid/view/View;
    :cond_5
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private dismissNavigationResultDialog()V
    .locals 3

    .prologue
    .line 436
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f09047f

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, root:Landroid/view/View;
    new-instance v1, Lcom/waze/main/navigate/NavigationResult$6;

    invoke-direct {v1, p0}, Lcom/waze/main/navigate/NavigationResult$6;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    invoke-static {v0, v1}, Lcom/waze/view/anim/AnimationUtils;->closeNavResultsToRectangle(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 450
    return-void
.end method

.method private displayEventsOnRoute()V
    .locals 4

    .prologue
    .line 1271
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v3, 0x7f0904a9

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1272
    .local v0, trafficEventsLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 1273
    .local v1, vto:Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/waze/main/navigate/NavigationResult$19;

    invoke-direct {v2, p0, v0}, Lcom/waze/main/navigate/NavigationResult$19;-><init>(Lcom/waze/main/navigate/NavigationResult;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1287
    return-void
.end method

.method private fillDataForQATest()V
    .locals 3

    .prologue
    .line 852
    new-instance v0, Lcom/waze/user/FriendUserData;

    invoke-direct {v0}, Lcom/waze/user/FriendUserData;-><init>()V

    .line 853
    .local v0, data:Lcom/waze/user/FriendUserData;
    const-string v1, "bla"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->arrivedText:Ljava/lang/String;

    .line 854
    const-string v1, "18:00"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->arrivedTime:Ljava/lang/String;

    .line 855
    const-string v1, "bla"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->mAddonName:Ljava/lang/String;

    .line 856
    const-string v1, "bla"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->mJoinedStr:Ljava/lang/String;

    .line 857
    const-string v1, "bla"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->mLastReportIcon:Ljava/lang/String;

    .line 858
    const-string v1, "bla"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->mLastReportText:Ljava/lang/String;

    .line 859
    const-string v1, "bla"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->mMood:Ljava/lang/String;

    .line 860
    const-string v1, "bla"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->mNickName:Ljava/lang/String;

    .line 861
    const-string v1, "bla"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->mPtsStr:Ljava/lang/String;

    .line 862
    const-string v1, "bla"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->mRankStr:Ljava/lang/String;

    .line 863
    const-string v1, "bla"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->mSpeedStr:Ljava/lang/String;

    .line 864
    const-string v1, "bla"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->name:Ljava/lang/String;

    .line 865
    const-string v1, "file:///storage/emulated/0/myApp/ProfileImageCapture.tmp"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->pictureUrl:Ljava/lang/String;

    .line 866
    const-string v1, "bla"

    iput-object v1, v0, Lcom/waze/user/FriendUserData;->statusLine:Ljava/lang/String;

    .line 869
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/waze/user/FriendUserData;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mFriendsData:[Lcom/waze/user/FriendUserData;

    .line 870
    return-void
.end method

.method private friendsListInsertAddMore()V
    .locals 3

    .prologue
    .line 1415
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    new-instance v2, Lcom/waze/main/navigate/NavigationResult$20;

    invoke-direct {v2, p0}, Lcom/waze/main/navigate/NavigationResult$20;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    invoke-static {v1, v2}, Lcom/waze/share/ShareUtility;->buildShareComponentAddMoreFriendsButton(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 1455
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipAnchor:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipNoSuggestions:Z

    .line 1457
    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipAnchor:Landroid/view/View;

    .line 1460
    :cond_0
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mFreqFriendsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1461
    return-void
.end method

.method private getAllInMin(Ljava/lang/String;)I
    .locals 7
    .parameter "time"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1003
    const/4 v2, 0x0

    .line 1004
    .local v2, totalMin:I
    const/4 v0, 0x0

    .line 1006
    .local v0, hours:I
    if-eqz p1, :cond_1

    .line 1008
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, strs:[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    array-length v3, v1

    if-ne v3, v6, :cond_2

    .line 1011
    :cond_0
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1018
    .end local v1           #strs:[Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 1013
    .restart local v1       #strs:[Ljava/lang/String;
    :cond_2
    array-length v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1014
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1015
    mul-int/lit8 v3, v0, 0x3c

    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int v2, v3, v4

    goto :goto_0
.end method

.method private onClose()V
    .locals 3

    .prologue
    .line 397
    iget-boolean v1, p0, Lcom/waze/main/navigate/NavigationResult;->mShownAgain:Z

    if-nez v1, :cond_0

    .line 399
    iget-boolean v1, p0, Lcom/waze/main/navigate/NavigationResult;->mIsTripServerResult:Z

    if-eqz v1, :cond_2

    .line 400
    new-instance v1, Lcom/waze/main/navigate/NavigationResult$4;

    invoke-direct {v1, p0}, Lcom/waze/main/navigate/NavigationResult$4;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 419
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->stopTimer()V

    .line 420
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0904b6

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 423
    :try_start_0
    iget-boolean v1, p0, Lcom/waze/main/navigate/NavigationResult;->mShownAgain:Z

    if-eqz v1, :cond_3

    .line 424
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->dismissNavigationResultDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_1
    :goto_1
    return-void

    .line 409
    :cond_2
    new-instance v1, Lcom/waze/main/navigate/NavigationResult$5;

    invoke-direct {v1, p0}, Lcom/waze/main/navigate/NavigationResult$5;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 426
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/waze/main/navigate/NavigationResult;->dismissNavigationResultDialogNoAnimation()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    goto :goto_1
.end method

.method private populateEventsOnRoute([Lcom/waze/main/navigate/EventOnRoute;)V
    .locals 21
    .parameter "events"

    .prologue
    .line 1290
    if-nez p1, :cond_1

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    if-eqz v15, :cond_0

    .line 1298
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v16, 0x7f0904a9

    invoke-virtual/range {v15 .. v16}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 1299
    .local v12, trafficEventsLayout:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v16, 0x7f0904aa

    invoke-virtual/range {v15 .. v16}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 1300
    .local v9, otherEventsLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v14

    .line 1301
    .local v14, width:I
    const/4 v5, 0x0

    .line 1302
    .local v5, hasTraffic:Z
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    .line 1352
    if-eqz v5, :cond_e

    .line 1353
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/main/navigate/NavigationResult;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->eventAnimationTask:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x1f4

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1302
    :cond_2
    aget-object v4, p1, v15

    .line 1304
    .local v4, event:Lcom/waze/main/navigate/EventOnRoute;
    if-nez v4, :cond_3

    .line 1302
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1307
    :cond_3
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1308
    const/4 v5, 0x1

    .line 1309
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->end:I

    move/from16 v17, v0

    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->start:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    mul-int v17, v17, v14

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4059

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1310
    .local v8, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1311
    .local v13, trafficImage:Landroid/widget/ImageView;
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->start:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4059

    div-double v17, v17, v19

    int-to-double v0, v14

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1312
    sget-object v17, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1313
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->severity:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1314
    const v17, 0x7f02041b

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1320
    :cond_4
    :goto_3
    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1321
    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1322
    const/16 v17, 0x1f4

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/waze/view/anim/AnimationUtils;->stretchViewHorizontally(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1315
    :cond_5
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->severity:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1316
    const v17, 0x7f02041a

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1317
    :cond_6
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->severity:I

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 1318
    const v17, 0x7f020419

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1325
    .end local v8           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13           #trafficImage:Landroid/widget/ImageView;
    :cond_7
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1326
    const v6, 0x7f02002b

    .line 1338
    .local v6, icon:I
    :goto_4
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1339
    .restart local v8       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->start:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v10, v0

    .line 1340
    .local v10, start:D
    const-wide v17, 0x4055400000000000L

    cmpl-double v17, v10, v17

    if-lez v17, :cond_8

    .line 1341
    const-wide v10, 0x4055400000000000L

    .line 1343
    :cond_8
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1344
    .local v7, image:Landroid/widget/ImageView;
    const-wide/high16 v17, 0x4059

    div-double v17, v10, v17

    int-to-double v0, v14

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1345
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1346
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1347
    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1348
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->eventImages:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1327
    .end local v6           #icon:I
    .end local v7           #image:Landroid/widget/ImageView;
    .end local v8           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10           #start:D
    :cond_9
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1328
    const v6, 0x7f020026

    .line 1329
    .restart local v6       #icon:I
    goto :goto_4

    .end local v6           #icon:I
    :cond_a
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1330
    const v6, 0x7f020029

    .line 1331
    .restart local v6       #icon:I
    goto/16 :goto_4

    .end local v6           #icon:I
    :cond_b
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1332
    const v6, 0x7f020028

    .line 1333
    .restart local v6       #icon:I
    goto/16 :goto_4

    .end local v6           #icon:I
    :cond_c
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    move/from16 v17, v0

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 1334
    const v6, 0x7f020333

    .line 1335
    .restart local v6       #icon:I
    goto/16 :goto_4

    .line 1336
    .end local v6           #icon:I
    :cond_d
    const v6, 0x7f02002a

    .restart local v6       #icon:I
    goto/16 :goto_4

    .line 1355
    .end local v4           #event:Lcom/waze/main/navigate/EventOnRoute;
    .end local v6           #icon:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/main/navigate/NavigationResult;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->eventAnimationTask:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private setDistStr(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 1022
    if-nez p1, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, strs:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1026
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mDistance:Ljava/lang/String;

    .line 1027
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mDistanceUnit:Ljava/lang/String;

    goto :goto_0
.end method

.method private setDistance()V
    .locals 4

    .prologue
    .line 955
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v3, 0x7f090492

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 956
    .local v0, distance:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult;->mDistance:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v3, 0x7f090493

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 958
    .local v1, distanceUnit:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult;->mDistanceUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    return-void
.end method

.method private setDlgData()V
    .locals 23

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f030098

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->setContentView(I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-virtual/range {v20 .. v22}, Landroid/view/Window;->setLayout(II)V

    .line 471
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/main/navigate/NavigationResult;->mCalculating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090494

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f09048b

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090488

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f09048a

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v21

    const-string v22, "Calculating Route..."

    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    move-object/from16 v20, v0

    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_ROUTES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v20 .. v21}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v14

    .line 493
    .local v14, routesButtonTxt:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b3

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    move-object/from16 v20, v0

    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_GO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v20 .. v21}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 497
    .local v10, goButtonTxt:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b5

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090481

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 501
    .local v15, titleView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090485

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 513
    .local v17, viaView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mVia:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    sget-boolean v20, Lcom/waze/main/navigate/NavigationResult;->mFillQaData:Z

    if-eqz v20, :cond_0

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/waze/main/navigate/NavigationResult;->fillDataForQATest()V

    .line 518
    const/16 v20, 0x0

    sput-boolean v20, Lcom/waze/main/navigate/NavigationResult;->mFillQaData:Z

    .line 521
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090696

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/main/navigate/NavigationResult;->mFreqFriendsLayout:Landroid/widget/LinearLayout;

    .line 523
    const/4 v4, 0x0

    .line 524
    .local v4, bShowShare:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/waze/NativeManager;->ShareRideFeatureEnabledNTV()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mFriendsData:[Lcom/waze/user/FriendUserData;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mFriendsData:[Lcom/waze/user/FriendUserData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_c

    .line 527
    const/4 v4, 0x1

    .line 531
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/waze/NativeManager;->isFollowActiveNTV()Z

    move-result v3

    .line 533
    .local v3, bFollowActive:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/main/navigate/NavigationResult;->mCalculating:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    if-nez v4, :cond_3

    :cond_2
    if-eqz v3, :cond_e

    .line 535
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904ad

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904ae

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 538
    if-eqz v3, :cond_d

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090695

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    move-object/from16 v21, v0

    .line 540
    sget-object v22, Lcom/waze/strings/DisplayStrings;->DS_NAVIGATION_RESULT_SHARE_TITLE_LIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    .line 539
    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/waze/NativeManager;->getCurMeetingNTV()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/main/navigate/NavigationResult;->mMeetingId:Ljava/lang/String;

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mMeetingId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/waze/main/navigate/NavigationResult;->loadMySharedDriveData()V

    .line 592
    :cond_4
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/waze/main/navigate/NavigationResult;->setDistance()V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090487

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 595
    .local v13, navigatedue:Landroid/widget/TextView;
    if-eqz v13, :cond_5

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mFreeText:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mFreeText:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_f

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mFreeText:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090486

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 605
    .local v16, tollView:Landroid/widget/ImageView;
    if-eqz v16, :cond_6

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mViaToll:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mViaToll:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_10

    .line 607
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/main/navigate/NavigationResult;->mCalculating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b4

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/high16 v21, 0x3f00

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b2

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/high16 v21, 0x3f00

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 645
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b4

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 646
    new-instance v21, Lcom/waze/main/navigate/NavigationResult$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/main/navigate/NavigationResult$9;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    .line 645
    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b2

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 722
    new-instance v21, Lcom/waze/main/navigate/NavigationResult$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/main/navigate/NavigationResult$10;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    .line 721
    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/main/navigate/NavigationResult;->mShownAgain:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    .line 754
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v20

    sget-object v21, Lcom/waze/strings/DisplayStrings;->DS_OK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v20 .. v21}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b5

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090482

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/waze/main/navigate/NavigationResult$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/main/navigate/NavigationResult$11;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/main/navigate/NavigationResult;->mTimeOut:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/main/navigate/NavigationResult;->mShownAgain:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/main/navigate/NavigationResult;->mCalculating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    .line 807
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b6

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/view/timer/TimerView;

    invoke-virtual/range {v20 .. v20}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 814
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b7

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/main/navigate/NavigationResult;->mCalculating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    const/16 v20, 0x0

    :goto_8
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 816
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/main/navigate/NavigationResult;->mFinalEta:Ljava/lang/String;

    .line 817
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/main/navigate/NavigationResult;->mWaypointEta:Ljava/lang/String;

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/main/navigate/NavigationResult;->mRouteLenght:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x3c

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/main/navigate/NavigationResult;->mMinutes:I

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/main/navigate/NavigationResult;->mMinutes:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/waze/main/navigate/NavigationResult;->setTime(I)V

    .line 820
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/main/navigate/NavigationResult;->mIsWaypoint:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 821
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/main/navigate/NavigationResult;->mWaypointLength:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/main/navigate/NavigationResult;->mMinutes:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/waze/main/navigate/NavigationResult;->setWaypointTime(II)V

    .line 829
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904a7

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 830
    .local v7, eventOnRouteView:Landroid/view/View;
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/main/navigate/NavigationResult;->mShownAgain:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 831
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 835
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904a8

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 837
    .local v8, eventsOnROuteEtaLabel:Landroid/widget/TextView;
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 838
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v20, "H:mm"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 841
    .local v9, formatter:Ljava/text/Format;
    :goto_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 842
    .local v5, cal:Ljava/util/Calendar;
    const/16 v20, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/main/navigate/NavigationResult;->mMinutes:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 843
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/waze/main/navigate/NavigationResult;->displayEventsOnRoute()V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f09048d

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 848
    .local v6, etaText:Landroid/widget/TextView;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 849
    return-void

    .line 478
    .end local v3           #bFollowActive:Z
    .end local v4           #bShowShare:Z
    .end local v5           #cal:Ljava/util/Calendar;
    .end local v6           #etaText:Landroid/widget/TextView;
    .end local v7           #eventOnRouteView:Landroid/view/View;
    .end local v8           #eventsOnROuteEtaLabel:Landroid/widget/TextView;
    .end local v9           #formatter:Ljava/text/Format;
    .end local v10           #goButtonTxt:Ljava/lang/String;
    .end local v13           #navigatedue:Landroid/widget/TextView;
    .end local v14           #routesButtonTxt:Ljava/lang/String;
    .end local v15           #titleView:Landroid/widget/TextView;
    .end local v16           #tollView:Landroid/widget/ImageView;
    .end local v17           #viaView:Landroid/widget/TextView;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/main/navigate/NavigationResult;->mIsWaypoint:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090494

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090488

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f09048b

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f09049c

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mWaypointDistance:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f09049d

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mWaypointDistanceUnit:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/waze/main/navigate/NavigationResult;->setFinalDistance()V

    goto/16 :goto_0

    .line 487
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090494

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090488

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f09048b

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 528
    .restart local v4       #bShowShare:Z
    .restart local v10       #goButtonTxt:Ljava/lang/String;
    .restart local v14       #routesButtonTxt:Ljava/lang/String;
    .restart local v15       #titleView:Landroid/widget/TextView;
    .restart local v17       #viaView:Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/main/navigate/NavigationResult;->mShownAgain:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 547
    .restart local v3       #bFollowActive:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090695

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    move-object/from16 v21, v0

    .line 548
    sget-object v22, Lcom/waze/strings/DisplayStrings;->DS_NAVIGATION_RESULT_SHARE_TITLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    .line 547
    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090696

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 551
    .local v18, view:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v19

    .line 552
    .local v19, vto:Landroid/view/ViewTreeObserver;
    new-instance v20, Lcom/waze/main/navigate/NavigationResult$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/main/navigate/NavigationResult$7;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_2

    .line 563
    .end local v18           #view:Landroid/view/View;
    .end local v19           #vto:Landroid/view/ViewTreeObserver;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904ad

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904ae

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b0

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    move-object/from16 v21, v0

    .line 567
    sget-object v22, Lcom/waze/strings/DisplayStrings;->DS_SHARE_YOUR_DRIVE_WITH_FRIENDS_AND_FAMILY_PROMO:Lcom/waze/strings/DisplayStrings;

    .line 566
    invoke-virtual/range {v21 .. v22}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    new-instance v12, Lcom/waze/main/navigate/NavigationResult$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/waze/main/navigate/NavigationResult$8;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    .line 582
    .local v12, l:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904ae

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipAnchor:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    .line 585
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipNoSuggestions:Z

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904af

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 587
    .local v11, image:Landroid/view/View;
    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipAnchor:Landroid/view/View;

    goto/16 :goto_2

    .line 600
    .end local v11           #image:Landroid/view/View;
    .end local v12           #l:Landroid/view/View$OnClickListener;
    .restart local v13       #navigatedue:Landroid/widget/TextView;
    :cond_f
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 609
    .restart local v16       #tollView:Landroid/widget/ImageView;
    :cond_10
    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 642
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b4

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/high16 v21, 0x3f80

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b2

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/high16 v21, 0x3f80

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_5

    .line 771
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f090482

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 772
    new-instance v21, Lcom/waze/main/navigate/NavigationResult$12;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/main/navigate/NavigationResult$12;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    .line 771
    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 809
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b6

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/view/timer/TimerView;

    invoke-virtual/range {v20 .. v20}, Lcom/waze/view/timer/TimerView;->reset()V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b6

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/view/timer/TimerView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/main/navigate/NavigationResult;->mTimeOut:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    const v21, 0x7f0904b6

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/waze/view/timer/TimerView;

    invoke-virtual/range {v20 .. v20}, Lcom/waze/view/timer/TimerView;->start()V

    .line 812
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/main/navigate/NavigationResult;->mWasTooltipDismissed:Z

    goto/16 :goto_7

    .line 814
    :cond_14
    const/16 v20, 0x8

    goto/16 :goto_8

    .line 840
    .restart local v7       #eventOnRouteView:Landroid/view/View;
    .restart local v8       #eventsOnROuteEtaLabel:Landroid/widget/TextView;
    :cond_15
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v20, "h:mm a"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v9       #formatter:Ljava/text/Format;
    goto/16 :goto_9
.end method

.method private setETA(Ljava/lang/String;)V
    .locals 9
    .parameter "eta"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 155
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f09048d

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    .local v0, etaText:Landroid/widget/TextView;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f09048e

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 159
    .local v1, hoursLabel:Landroid/widget/TextView;
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f09048f

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    .local v2, hoursLabelUnit:Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f090490

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 166
    .local v3, minLabel:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f090491

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 169
    .local v4, minLabelUnit:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    return-void
.end method

.method private setEtaStr(Ljava/lang/String;Z)V
    .locals 1
    .parameter "str"
    .parameter "isWaypoint"

    .prologue
    .line 990
    if-nez p1, :cond_0

    .line 1000
    :goto_0
    return-void

    .line 994
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, eta:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 996
    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mWaypointEta:Ljava/lang/String;

    goto :goto_0

    .line 998
    :cond_1
    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mFinalEta:Ljava/lang/String;

    goto :goto_0
.end method

.method private setFinalDistance()V
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0904a4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mDistance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0904a5

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mDistanceUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    return-void
.end method

.method private setTime(I)V
    .locals 11
    .parameter "aTimeToDest"

    .prologue
    .line 209
    div-int/lit8 v1, p1, 0x3c

    .line 210
    .local v1, hours:I
    mul-int/lit8 v9, v1, 0x3c

    sub-int v7, p1, v9

    .line 211
    .local v7, mins:I
    const-string v4, "h."

    .line 212
    .local v4, hoursUnit:Ljava/lang/String;
    const-string v8, "min."

    .line 214
    .local v8, minsUnit:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v10, 0x7f09048d

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    .local v0, etaText:Landroid/widget/TextView;
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v9, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v10, 0x7f09048e

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 218
    .local v2, hoursLabel:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v10, 0x7f09048f

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 219
    .local v3, hoursLabelUnit:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 220
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :goto_0
    iget v9, p0, Lcom/waze/main/navigate/NavigationResult;->mNoteID:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 232
    iget-object v9, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v10, 0x7f090490

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 233
    .local v5, minLabel:Landroid/widget/TextView;
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v9, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v10, 0x7f090491

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 237
    .local v6, minLabelUnit:Landroid/widget/TextView;
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    :goto_1
    return-void

    .line 226
    .end local v5           #minLabel:Landroid/widget/TextView;
    .end local v6           #minLabelUnit:Landroid/widget/TextView;
    :cond_0
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v9, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v10, 0x7f090490

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 243
    .restart local v5       #minLabel:Landroid/widget/TextView;
    const-string v9, "NA"

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v9, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v10, 0x7f090491

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 247
    .restart local v6       #minLabelUnit:Landroid/widget/TextView;
    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setWaypointETA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "waypointEta"
    .parameter "eta"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 174
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f09049f

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 175
    .local v0, etaText:Landroid/widget/TextView;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f0904a0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 178
    .local v1, hoursLabel:Landroid/widget/TextView;
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f0904a1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 182
    .local v2, hoursLabelUnit:Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f0904a2

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 185
    .local v3, minLabel:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f0904a3

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 188
    .local v4, minLabelUnit:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f090496

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #etaText:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 191
    .restart local v0       #etaText:Landroid/widget/TextView;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f090498

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #hoursLabel:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 194
    .restart local v1       #hoursLabel:Landroid/widget/TextView;
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f090499

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #hoursLabelUnit:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 198
    .restart local v2       #hoursLabelUnit:Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f09049a

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #minLabel:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 201
    .restart local v3       #minLabel:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f09049b

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #minLabelUnit:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 204
    .restart local v4       #minLabelUnit:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    return-void
.end method

.method private setWaypointTime(II)V
    .locals 15
    .parameter "waypointTime"
    .parameter "aTimeToDest"

    .prologue
    .line 253
    sub-int p2, p2, p1

    .line 254
    div-int/lit8 v9, p1, 0x3c

    .line 255
    .local v9, waypointHours:I
    mul-int/lit8 v13, v9, 0x3c

    sub-int v12, p1, v13

    .line 256
    .local v12, waypointMins:I
    div-int/lit8 v1, p2, 0x3c

    .line 257
    .local v1, hours:I
    mul-int/lit8 v13, v1, 0x3c

    sub-int v7, p2, v13

    .line 258
    .local v7, mins:I
    const-string v4, "h."

    .line 259
    .local v4, hoursUnit:Ljava/lang/String;
    const-string v8, "min."

    .line 261
    .local v8, minsUnit:Ljava/lang/String;
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f09049f

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 262
    .local v0, etaText:Landroid/widget/TextView;
    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f090496

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #etaText:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 264
    .restart local v0       #etaText:Landroid/widget/TextView;
    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f0904a0

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 267
    .local v2, hoursLabel:Landroid/widget/TextView;
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f0904a1

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 268
    .local v3, hoursLabelUnit:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 269
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :goto_0
    iget v13, p0, Lcom/waze/main/navigate/NavigationResult;->mNoteID:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    .line 281
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f0904a2

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 282
    .local v5, minLabel:Landroid/widget/TextView;
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f0904a3

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 286
    .local v6, minLabelUnit:Landroid/widget/TextView;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    :goto_1
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f090498

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 300
    .local v10, waypointHoursLabel:Landroid/widget/TextView;
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f090499

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 301
    .local v11, waypointHoursLabelUnit:Landroid/widget/TextView;
    if-eqz v9, :cond_2

    .line 302
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :goto_2
    iget v13, p0, Lcom/waze/main/navigate/NavigationResult;->mNoteID:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_3

    .line 313
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f09049a

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #minLabel:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 314
    .restart local v5       #minLabel:Landroid/widget/TextView;
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f09049b

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #minLabelUnit:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 318
    .restart local v6       #minLabelUnit:Landroid/widget/TextView;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :goto_3
    return-void

    .line 275
    .end local v5           #minLabel:Landroid/widget/TextView;
    .end local v6           #minLabelUnit:Landroid/widget/TextView;
    .end local v10           #waypointHoursLabel:Landroid/widget/TextView;
    .end local v11           #waypointHoursLabelUnit:Landroid/widget/TextView;
    :cond_0
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 291
    :cond_1
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f0904a2

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 292
    .restart local v5       #minLabel:Landroid/widget/TextView;
    const-string v13, "NA"

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f0904a3

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 296
    .restart local v6       #minLabelUnit:Landroid/widget/TextView;
    const/4 v13, 0x4

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 308
    .restart local v10       #waypointHoursLabel:Landroid/widget/TextView;
    .restart local v11       #waypointHoursLabelUnit:Landroid/widget/TextView;
    :cond_2
    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 323
    :cond_3
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f09049a

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #minLabel:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 324
    .restart local v5       #minLabel:Landroid/widget/TextView;
    const-string v13, "NA"

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    iget-object v13, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v14, 0x7f09049b

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #minLabelUnit:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 328
    .restart local v6       #minLabelUnit:Landroid/widget/TextView;
    const/4 v13, 0x4

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private showToolTipEtaOnce()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1173
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->isDrivingHomeNTV()Z

    move-result v7

    .line 1177
    .local v7, isHome:Z
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipFud:Lcom/waze/user/FriendUserData;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_KEEP_LOCATION_SENDER_POSTED_TITLE_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipFud:Lcom/waze/user/FriendUserData;

    invoke-virtual {v5}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1179
    .local v2, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ON_MY_WAY_TEXT__ETA_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mFinalEta:Ljava/lang/String;

    aput-object v5, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1180
    .local v3, text:Ljava/lang/String;
    const v4, 0x7f02037c

    .line 1181
    .local v4, illu:I
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/share/ShareNativeManager;->shownReceivedLocationShareTip()V

    .line 1192
    :goto_0
    new-instance v0, Lcom/waze/social/KeepYourFriendsDialog;

    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipFud:Lcom/waze/user/FriendUserData;

    new-instance v6, Lcom/waze/main/navigate/NavigationResult$17;

    invoke-direct {v6, p0}, Lcom/waze/main/navigate/NavigationResult$17;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    invoke-direct/range {v0 .. v6}, Lcom/waze/social/KeepYourFriendsDialog;-><init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;Ljava/lang/String;ILcom/waze/user/FriendUserData;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    .line 1226
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    iget v0, p0, Lcom/waze/main/navigate/NavigationResult;->mTooltipEtaTimesToShow:I

    if-le v0, v9, :cond_2

    move v0, v9

    :goto_1
    invoke-virtual {v1, v0}, Lcom/waze/social/KeepYourFriendsDialog;->setShowAgain(Z)V

    .line 1228
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipAnchor:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1229
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 1230
    .local v8, location:[I
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipAnchor:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1231
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    aget v1, v8, v10

    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    aget v5, v8, v9

    .line 1232
    iget-object v6, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1231
    invoke-virtual {v0, v1, v5}, Lcom/waze/social/KeepYourFriendsDialog;->show(II)V

    .line 1237
    .end local v8           #location:[I
    :goto_2
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    new-instance v1, Lcom/waze/main/navigate/NavigationResult$18;

    invoke-direct {v1, p0}, Lcom/waze/main/navigate/NavigationResult$18;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    invoke-virtual {v0, v1}, Lcom/waze/social/KeepYourFriendsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1245
    iput-boolean v9, p0, Lcom/waze/main/navigate/NavigationResult;->isRecoverTooltipAfterOrientationChange:Z

    .line 1246
    return-void

    .line 1182
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    .end local v4           #illu:I
    :cond_0
    if-eqz v7, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_KEEP_YOUR_FAMILY_POSTED_TITLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 1184
    .restart local v2       #title:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ON_MY_WAY_HOME_TEXT__ETA_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mFinalEta:Ljava/lang/String;

    aput-object v5, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1185
    .restart local v3       #text:Ljava/lang/String;
    const v4, 0x7f02037b

    .line 1186
    .restart local v4       #illu:I
    goto :goto_0

    .line 1187
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    .end local v4           #illu:I
    :cond_1
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_KEEP_YOUR_FRIENDS_POSTED_TITLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 1188
    .restart local v2       #title:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->nm:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ON_MY_WAY_TEXT__ETA_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mFinalEta:Ljava/lang/String;

    aput-object v5, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1189
    .restart local v3       #text:Ljava/lang/String;
    const v4, 0x7f02037c

    .restart local v4       #illu:I
    goto/16 :goto_0

    :cond_2
    move v0, v10

    .line 1226
    goto :goto_1

    .line 1234
    :cond_3
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    invoke-virtual {v0, v10, v10}, Lcom/waze/social/KeepYourFriendsDialog;->show(II)V

    goto :goto_2
.end method

.method private stopTimer()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->updateTimeTask:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0904b6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 382
    :cond_0
    return-void
.end method


# virtual methods
.method SendMeeting()V
    .locals 19

    .prologue
    .line 882
    invoke-direct/range {p0 .. p0}, Lcom/waze/main/navigate/NavigationResult;->stopTimer()V

    .line 883
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 886
    .local v18, selected:Ljava/util/List;,"Ljava/util/List<Lcom/waze/user/PersonBase;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [I

    .line 887
    .local v3, addUids:[I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    .line 888
    .local v4, invitePhones:[Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [I

    .line 889
    .local v5, inviteIds:[I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Ljava/lang/String;

    .line 890
    .local v6, wazesPhones:[Ljava/lang/String;
    const-string v13, "ShareDrive"

    .line 891
    .local v13, Type:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/waze/main/navigate/NavigationResult;->numAdd:I

    .line 892
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/waze/main/navigate/NavigationResult;->numInvite:I

    .line 894
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 917
    const-string v1, "SHARE_SENT"

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v2, v7}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->GetLastShareURL()Ljava/lang/String;

    move-result-object v17

    .line 921
    .local v17, sURL:Ljava/lang/String;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->isFollowActiveNTV()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v17, :cond_6

    const-string v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 923
    move-object/from16 v0, p0

    iget v1, v0, Lcom/waze/main/navigate/NavigationResult;->numAdd:I

    if-lez v1, :cond_2

    .line 925
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/main/navigate/NavigationResult;->numAdd:I

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v2, v6, v7}, Lcom/waze/NativeManager;->AddToMeeting([II[Ljava/lang/Object;Z)V

    .line 927
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/waze/main/navigate/NavigationResult;->numInvite:I

    if-lez v1, :cond_0

    .line 929
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/main/navigate/NavigationResult;->numInvite:I

    const/4 v7, 0x4

    invoke-virtual {v1, v4, v5, v2, v7}, Lcom/waze/NativeManager;->InviteToMeeting([Ljava/lang/Object;[III)V

    goto :goto_0

    .line 894
    .end local v17           #sURL:Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, o:Ljava/lang/Object;
    move-object/from16 v16, v15

    .line 895
    check-cast v16, Lcom/waze/user/PersonBase;

    .line 897
    .local v16, p:Lcom/waze/user/PersonBase;
    invoke-virtual/range {v16 .. v16}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/waze/user/PersonBase;->getID()I

    move-result v2

    if-ltz v2, :cond_4

    .line 898
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/main/navigate/NavigationResult;->numAdd:I

    invoke-virtual/range {v16 .. v16}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 900
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/main/navigate/NavigationResult;->numAdd:I

    invoke-virtual/range {v16 .. v16}, Lcom/waze/user/PersonBase;->getID()I

    move-result v7

    aput v7, v3, v2

    .line 901
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/main/navigate/NavigationResult;->numAdd:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/waze/main/navigate/NavigationResult;->numAdd:I

    goto/16 :goto_1

    .line 904
    :cond_4
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/waze/user/FriendUserData;

    if-eqz v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/waze/user/PersonBase;->getID()I

    move-result v2

    if-gez v2, :cond_5

    move-object/from16 v14, v16

    .line 905
    check-cast v14, Lcom/waze/user/FriendUserData;

    .line 906
    .local v14, fud:Lcom/waze/user/FriendUserData;
    iget v2, v14, Lcom/waze/user/FriendUserData;->mContactID:I

    invoke-static {v2}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v16

    .line 907
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/main/navigate/NavigationResult;->numInvite:I

    invoke-virtual/range {v16 .. v16}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    .line 908
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/main/navigate/NavigationResult;->numInvite:I

    invoke-virtual/range {v16 .. v16}, Lcom/waze/user/PersonBase;->getID()I

    move-result v7

    aput v7, v5, v2

    .line 913
    .end local v14           #fud:Lcom/waze/user/FriendUserData;
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/main/navigate/NavigationResult;->numInvite:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/waze/main/navigate/NavigationResult;->numInvite:I

    goto/16 :goto_1

    .line 910
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/main/navigate/NavigationResult;->numInvite:I

    invoke-virtual/range {v16 .. v16}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    .line 911
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/main/navigate/NavigationResult;->numInvite:I

    invoke-virtual/range {v16 .. v16}, Lcom/waze/user/PersonBase;->getID()I

    move-result v7

    aput v7, v5, v2

    goto :goto_2

    .line 934
    .end local v15           #o:Ljava/lang/Object;
    .end local v16           #p:Lcom/waze/user/PersonBase;
    .restart local v17       #sURL:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v1, Lcom/waze/main/navigate/NavigationResult$13;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/waze/main/navigate/NavigationResult$13;-><init>(Lcom/waze/main/navigate/NavigationResult;[I[Ljava/lang/String;[I[Ljava/lang/String;)V

    .line 942
    const/4 v12, 0x0

    move-object v11, v1

    .line 934
    invoke-virtual/range {v7 .. v12}, Lcom/waze/navigate/DriveToNativeManager;->getLocationData(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public dismissNavigationResultDialogNoAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    invoke-virtual {v0}, Lcom/waze/social/KeepYourFriendsDialog;->dismissNow()V

    .line 455
    iput-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSendEtaTip:Lcom/waze/ifs/ui/TinyTooltip;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mSendEtaTip:Lcom/waze/ifs/ui/TinyTooltip;

    invoke-virtual {v0, v2}, Lcom/waze/ifs/ui/TinyTooltip;->dismiss(Z)V

    .line 459
    iput-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mSendEtaTip:Lcom/waze/ifs/ui/TinyTooltip;

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 462
    :cond_2
    iput-boolean v2, p0, Lcom/waze/main/navigate/NavigationResult;->isRecoverTooltipAfterOrientationChange:Z

    .line 463
    iput-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipAnchor:Landroid/view/View;

    .line 464
    return-void
.end method

.method public getNotifyFriends()[Lcom/waze/user/FriendUserData;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mFriendsData:[Lcom/waze/user/FriendUserData;

    return-object v0
.end method

.method public loadMySharedDriveData()V
    .locals 2

    .prologue
    .line 1531
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 1532
    new-instance v1, Lcom/waze/main/navigate/NavigationResult$22;

    invoke-direct {v1, p0}, Lcom/waze/main/navigate/NavigationResult$22;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    .line 1531
    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getMySharedDriveUsers(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 1598
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    const v1, 0x7f0904b6

    .line 386
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 388
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->setDlgData()V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mShareTooltipAnchor:Landroid/view/View;

    .line 390
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    invoke-virtual {v0}, Lcom/waze/social/KeepYourFriendsDialog;->initLayout()V

    .line 392
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    goto :goto_0
.end method

.method public openAddFromActivity()V
    .locals 4

    .prologue
    .line 1464
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 1466
    .local v0, a:Lcom/waze/MainActivity;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    const-class v3, Lcom/waze/navigate/social/AddFromActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1467
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_WHERE:Ljava/lang/String;

    sget v3, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1468
    sget-object v2, Lcom/waze/navigate/social/AddFromActivity;->INTENT_SELECTED:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1469
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult;->mAlreadyShared:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1470
    sget-object v2, Lcom/waze/navigate/social/AddFromActivity;->INTENT_SUGGESTED:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1472
    :cond_0
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1474
    const v2, 0x8012

    .line 1473
    invoke-virtual {v0, v1, v2}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1475
    return-void
.end method

.method shareRide()V
    .locals 1

    .prologue
    .line 873
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->stopTimer()V

    .line 874
    const-string v0, "SHARE_MY_DRIVE_ETA"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 875
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->SendShareMyRide()V

    .line 876
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/waze/user/FriendUserData;ZZ)V
    .locals 7
    .parameter "note"
    .parameter "goodMorning"
    .parameter "title"
    .parameter "distance"
    .parameter "distanceUnit"
    .parameter "iRouteLenght"
    .parameter "via"
    .parameter "iTimeOut"
    .parameter "show_disclaimer"
    .parameter "isWaypoint"
    .parameter "waypointDistance"
    .parameter "waypointDistanceUnit"
    .parameter "waypointLength"
    .parameter "waypointTitle"
    .parameter "finalTitle"
    .parameter "waypointDelay"
    .parameter "is_trip_rsp"
    .parameter "nId"
    .parameter "shownAgain"
    .parameter "UserPictureUrl"
    .parameter "Friend1PictureUrl"
    .parameter "Friend2PictureUrlfinal"
    .parameter "OnlineFriends"
    .parameter "FriendsDrivingCount"
    .parameter "viaToll"
    .parameter "jConfigImage"
    .parameter "freeText"
    .parameter "NotifyFriends"
    .parameter "bIsOffline"
    .parameter "bIsCalculating"

    .prologue
    .line 1040
    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    .line 1041
    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v4, 0x7f0904b6

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v3}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 1050
    :cond_0
    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    if-nez v3, :cond_1

    .line 1052
    new-instance v3, Lcom/waze/main/navigate/NavigationResult$14;

    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    const v5, 0x7f06000f

    invoke-direct {v3, p0, v4, v5}, Lcom/waze/main/navigate/NavigationResult$14;-><init>(Lcom/waze/main/navigate/NavigationResult;Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    .line 1059
    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    new-instance v4, Lcom/waze/main/navigate/NavigationResult$15;

    invoke-direct {v4, p0}, Lcom/waze/main/navigate/NavigationResult$15;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1067
    :cond_1
    move/from16 v0, p30

    iput-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mCalculating:Z

    .line 1068
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mFriendsData:[Lcom/waze/user/FriendUserData;

    .line 1069
    move/from16 v0, p18

    iput v0, p0, Lcom/waze/main/navigate/NavigationResult;->mNoteID:I

    .line 1070
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mConfigImage:Ljava/lang/String;

    .line 1071
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult;->mNote:Ljava/lang/String;

    .line 1072
    iput-object p2, p0, Lcom/waze/main/navigate/NavigationResult;->mGoodMorning:Ljava/lang/String;

    .line 1073
    iput-object p3, p0, Lcom/waze/main/navigate/NavigationResult;->mTitle:Ljava/lang/String;

    .line 1074
    move/from16 v0, p29

    iput-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mOfflineRoute:Z

    .line 1075
    iput-object p4, p0, Lcom/waze/main/navigate/NavigationResult;->mDistance:Ljava/lang/String;

    .line 1076
    iput-object p5, p0, Lcom/waze/main/navigate/NavigationResult;->mDistanceUnit:Ljava/lang/String;

    .line 1077
    iput-object p7, p0, Lcom/waze/main/navigate/NavigationResult;->mVia:Ljava/lang/String;

    .line 1078
    iput p6, p0, Lcom/waze/main/navigate/NavigationResult;->mRouteLenght:I

    .line 1079
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mShowDisclaimer:Z

    .line 1080
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mIsWaypoint:Z

    .line 1081
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mWaypointDistance:Ljava/lang/String;

    .line 1082
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mWaypointDistanceUnit:Ljava/lang/String;

    .line 1083
    move/from16 v0, p13

    iput v0, p0, Lcom/waze/main/navigate/NavigationResult;->mWaypointLength:I

    .line 1084
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mWaypointTitle:Ljava/lang/String;

    .line 1085
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mFinalTitle:Ljava/lang/String;

    .line 1087
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mIsTripServerResult:Z

    .line 1088
    div-int/lit16 v3, p8, 0x3e8

    iput v3, p0, Lcom/waze/main/navigate/NavigationResult;->mTimeOut:I

    .line 1089
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mShownAgain:Z

    .line 1090
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mPictureUserUrl:Ljava/lang/String;

    .line 1091
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mPictureFirstFriendUrl:Ljava/lang/String;

    .line 1092
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mPictureSecondFriendUrl:Ljava/lang/String;

    .line 1093
    move/from16 v0, p24

    iput v0, p0, Lcom/waze/main/navigate/NavigationResult;->mFriendsDrivingCount:I

    .line 1094
    move/from16 v0, p23

    iput v0, p0, Lcom/waze/main/navigate/NavigationResult;->mFriendsOnline:I

    .line 1095
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookLoggedInNTV()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/waze/main/navigate/NavigationResult;->mFacebookLoggedIn:Z

    .line 1096
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mViaToll:Ljava/lang/String;

    .line 1097
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mFreeText:Ljava/lang/String;

    .line 1099
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;

    .line 1100
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mAlreadyShared:Ljava/util/ArrayList;

    .line 1101
    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mFriendsData:[Lcom/waze/user/FriendUserData;

    if-eqz v3, :cond_6

    .line 1102
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult;->mFriendsData:[Lcom/waze/user/FriendUserData;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mSuggestions:Ljava/util/ArrayList;

    .line 1107
    :goto_1
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->setDlgData()V

    .line 1108
    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult;->updateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1109
    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult;->updateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1111
    iget-boolean v3, p0, Lcom/waze/main/navigate/NavigationResult;->mShownAgain:Z

    if-eqz v3, :cond_2

    .line 1113
    const-string v3, "BOTTOM_ETA_BOX_CLICKED"

    invoke-static {v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 1116
    :cond_2
    iget-boolean v3, p0, Lcom/waze/main/navigate/NavigationResult;->mIsTripServerResult:Z

    if-eqz v3, :cond_3

    .line 1118
    const-string v3, "NAVIGATE"

    const-string v4, "SOURCE"

    const-string v5, "TRIP_SRV"

    invoke-static {v3, v4, v5}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :cond_3
    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1123
    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1124
    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v4, 0x7f09047f

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1125
    .local v1, root:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1126
    .local v2, vto:Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/waze/main/navigate/NavigationResult$16;

    invoke-direct {v3, p0}, Lcom/waze/main/navigate/NavigationResult$16;-><init>(Lcom/waze/main/navigate/NavigationResult;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1151
    .end local v1           #root:Landroid/view/View;
    .end local v2           #vto:Landroid/view/ViewTreeObserver;
    :cond_4
    return-void

    .line 1095
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 1104
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mSuggestions:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public showTooltipEta()V
    .locals 1

    .prologue
    .line 1162
    sget-boolean v0, Lcom/waze/main/navigate/NavigationResult;->mForceShowTooltipEta:Z

    if-eqz v0, :cond_1

    .line 1163
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->showToolTipEtaOnce()V

    .line 1164
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/main/navigate/NavigationResult;->mForceShowTooltipEta:Z

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    iget-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mTooltipEtaOkToShow:Z

    if-eqz v0, :cond_0

    .line 1167
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->showToolTipEtaOnce()V

    goto :goto_0
.end method

.method public swapEtaTimeDisplay()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 336
    iget v4, p0, Lcom/waze/main/navigate/NavigationResult;->mNoteID:I

    if-ne v4, v7, :cond_0

    .line 338
    const-string v4, "NA"

    invoke-direct {p0, v4}, Lcom/waze/main/navigate/NavigationResult;->setETA(Ljava/lang/String;)V

    .line 374
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-boolean v4, p0, Lcom/waze/main/navigate/NavigationResult;->mEtaShown:Z

    if-eqz v4, :cond_2

    .line 342
    iget v4, p0, Lcom/waze/main/navigate/NavigationResult;->mMinutes:I

    invoke-direct {p0, v4}, Lcom/waze/main/navigate/NavigationResult;->setTime(I)V

    .line 343
    iget-boolean v4, p0, Lcom/waze/main/navigate/NavigationResult;->mIsWaypoint:Z

    if-eqz v4, :cond_1

    .line 344
    iget v4, p0, Lcom/waze/main/navigate/NavigationResult;->mWaypointLength:I

    div-int/lit8 v4, v4, 0x3c

    iget v5, p0, Lcom/waze/main/navigate/NavigationResult;->mMinutes:I

    invoke-direct {p0, v4, v5}, Lcom/waze/main/navigate/NavigationResult;->setWaypointTime(II)V

    .line 346
    :cond_1
    iput-boolean v6, p0, Lcom/waze/main/navigate/NavigationResult;->mEtaShown:Z

    goto :goto_0

    .line 349
    :cond_2
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f09048d

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 350
    .local v1, etaText:Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 353
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "H:mm"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, formatter:Ljava/text/Format;
    :goto_1
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult;->mFinalEta:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 359
    .local v0, cal:Ljava/util/Calendar;
    iget v4, p0, Lcom/waze/main/navigate/NavigationResult;->mMinutes:I

    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->add(II)V

    .line 360
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/main/navigate/NavigationResult;->mFinalEta:Ljava/lang/String;

    .line 362
    .end local v0           #cal:Ljava/util/Calendar;
    :cond_3
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult;->mFinalEta:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/waze/main/navigate/NavigationResult;->setETA(Ljava/lang/String;)V

    .line 363
    iget-boolean v4, p0, Lcom/waze/main/navigate/NavigationResult;->mIsWaypoint:Z

    if-eqz v4, :cond_5

    .line 364
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult;->mWaypointEta:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 365
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 366
    .local v3, waypointCal:Ljava/util/Calendar;
    iget v4, p0, Lcom/waze/main/navigate/NavigationResult;->mWaypointLength:I

    div-int/lit8 v4, v4, 0x3c

    invoke-virtual {v3, v8, v4}, Ljava/util/Calendar;->add(II)V

    .line 367
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/main/navigate/NavigationResult;->mWaypointEta:Ljava/lang/String;

    .line 369
    .end local v3           #waypointCal:Ljava/util/Calendar;
    :cond_4
    iget-object v4, p0, Lcom/waze/main/navigate/NavigationResult;->mWaypointEta:Ljava/lang/String;

    iget-object v5, p0, Lcom/waze/main/navigate/NavigationResult;->mFinalEta:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/waze/main/navigate/NavigationResult;->setWaypointETA(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_5
    iput-boolean v7, p0, Lcom/waze/main/navigate/NavigationResult;->mEtaShown:Z

    goto :goto_0

    .line 355
    .end local v2           #formatter:Ljava/text/Format;
    :cond_6
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "h:mm a"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v2       #formatter:Ljava/text/Format;
    goto :goto_1
.end method

.method tooltipDismissed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1249
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    if-eqz v0, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    invoke-virtual {v0}, Lcom/waze/social/KeepYourFriendsDialog;->shouldShowAgain()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1251
    iget v0, p0, Lcom/waze/main/navigate/NavigationResult;->mTooltipEtaTimesToShow:I

    if-le v0, v3, :cond_0

    .line 1252
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/share/ShareNativeManager;->shownShareDriveTip()V

    .line 1253
    iput-boolean v1, p0, Lcom/waze/main/navigate/NavigationResult;->mTooltipEtaOkToShow:Z

    .line 1262
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    invoke-virtual {v0}, Lcom/waze/social/KeepYourFriendsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1263
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    invoke-virtual {v0}, Lcom/waze/social/KeepYourFriendsDialog;->dismiss()V

    .line 1266
    :cond_1
    iput-boolean v3, p0, Lcom/waze/main/navigate/NavigationResult;->mWasTooltipDismissed:Z

    .line 1267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mKeepFriends:Lcom/waze/social/KeepYourFriendsDialog;

    .line 1268
    return-void

    .line 1257
    :cond_2
    iput v1, p0, Lcom/waze/main/navigate/NavigationResult;->mTooltipEtaTimesToShow:I

    .line 1258
    iput-boolean v1, p0, Lcom/waze/main/navigate/NavigationResult;->mTooltipEtaOkToShow:Z

    .line 1259
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/share/ShareNativeManager;->shownShareDriveTip()V

    .line 1260
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v0

    const/4 v1, 0x3

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lcom/waze/ConfigManager;->setConfigDisplayCounter(II)V

    goto :goto_0
.end method

.method public updateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "eta"
    .parameter "time"
    .parameter "distance"
    .parameter "isWaypoint"

    .prologue
    .line 966
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in NavigationResult::updateData with eta: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " waypoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 971
    if-eqz p1, :cond_0

    .line 973
    invoke-direct {p0, p1, p4}, Lcom/waze/main/navigate/NavigationResult;->setEtaStr(Ljava/lang/String;Z)V

    .line 975
    :cond_0
    if-eqz p2, :cond_1

    if-nez p4, :cond_1

    .line 977
    invoke-direct {p0, p2}, Lcom/waze/main/navigate/NavigationResult;->getAllInMin(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/waze/main/navigate/NavigationResult;->mMinutes:I

    .line 979
    :cond_1
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 981
    invoke-direct {p0, p3}, Lcom/waze/main/navigate/NavigationResult;->setDistStr(Ljava/lang/String;)V

    .line 982
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->setDistance()V

    .line 985
    :cond_2
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 987
    :cond_3
    return-void
.end method

.method public updateShare(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    const/4 v4, 0x1

    .line 1399
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;

    .line 1400
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mAlreadyShared:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mFreqFriendsLayout:Landroid/widget/LinearLayout;

    .line 1402
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult;->mAlreadyShared:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/waze/main/navigate/NavigationResult;->miFriendSelected:Lcom/waze/share/ShareUtility$IFriendSelected;

    move v5, v4

    .line 1401
    invoke-static/range {v0 .. v6}, Lcom/waze/share/ShareUtility;->shareComponentPopulate(Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/waze/share/ShareUtility$IFriendSelected;)V

    .line 1407
    :goto_0
    invoke-direct {p0}, Lcom/waze/main/navigate/NavigationResult;->friendsListInsertAddMore()V

    .line 1409
    iget-boolean v0, p0, Lcom/waze/main/navigate/NavigationResult;->mGoOnReturnFromAddMore:Z

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0904b4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1412
    :cond_0
    return-void

    .line 1404
    :cond_1
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult;->mFreqFriendsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;

    .line 1405
    iget-object v6, p0, Lcom/waze/main/navigate/NavigationResult;->miFriendSelected:Lcom/waze/share/ShareUtility$IFriendSelected;

    move v5, v4

    .line 1404
    invoke-static/range {v0 .. v6}, Lcom/waze/share/ShareUtility;->shareComponentPopulate(Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/waze/share/ShareUtility$IFriendSelected;)V

    goto :goto_0
.end method
