.class public Lcom/waze/mywaze/MyWazeNativeManager;
.super Ljava/lang/Object;
.source "MyWazeNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/mywaze/MyWazeNativeManager$ActiveGroupListener;,
        Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;,
        Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;,
        Lcom/waze/mywaze/MyWazeNativeManager$FoursquareCallback;,
        Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;,
        Lcom/waze/mywaze/MyWazeNativeManager$GetGroupsListener;,
        Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;,
        Lcom/waze/mywaze/MyWazeNativeManager$ISetUserUpdateResult;,
        Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;,
        Lcom/waze/mywaze/MyWazeNativeManager$PrivacyCallback;,
        Lcom/waze/mywaze/MyWazeNativeManager$PrivacySettings;,
        Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;,
        Lcom/waze/mywaze/MyWazeNativeManager$ProfileSettings;,
        Lcom/waze/mywaze/MyWazeNativeManager$TwitterCallback;,
        Lcom/waze/mywaze/MyWazeNativeManager$TwitterSettings;,
        Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;,
        Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;,
        Lcom/waze/mywaze/MyWazeNativeManager$UserCarCallback;
    }
.end annotation


# static fields
.field private static final PREF_LAST_PHONE:Ljava/lang/String; = "socialContactsLastPhoneUsed"

.field private static final PREF_PHONE_PREFIX:Ljava/lang/String; = "socialContactsPhoneRecovery_"

.field private static instance:Lcom/waze/mywaze/MyWazeNativeManager;


# instance fields
.field private mConflictingDataUser:Lcom/waze/mywaze/MyWazeData;

.field mFriendsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInvisible:Z

.field private mWasFbTokenSet:Z

.field private mWasLoginSuccess:Z

.field private pendingLogin:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;

.field private pendingRegister:Lcom/waze/profile/RegisterActivity;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mIsInvisible:Z

    .line 48
    iput-boolean v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mWasLoginSuccess:Z

    .line 49
    iput-boolean v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mWasFbTokenSet:Z

    .line 50
    new-instance v0, Lcom/waze/mywaze/MyWazeData;

    invoke-direct {v0}, Lcom/waze/mywaze/MyWazeData;-><init>()V

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mConflictingDataUser:Lcom/waze/mywaze/MyWazeData;

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mFriendsChangedListeners:Ljava/util/ArrayList;

    .line 53
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->initNTV()V

    .line 54
    return-void
.end method

.method private FacebookConnect()V
    .locals 1

    .prologue
    .line 1191
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$71;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$71;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1197
    return-void
.end method

.method private FacebookConnectPublish()V
    .locals 1

    .prologue
    .line 1233
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$75;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$75;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1239
    return-void
.end method

.method private FacebookRegisterConnect()V
    .locals 1

    .prologue
    .line 1201
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$72;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$72;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1207
    return-void
.end method

.method private native ImportFacebookNTV()V
.end method

.method private native SetInvisibleNTV(Z)V
.end method

.method private native ShowUserScreenIfNeededNTV()V
.end method

.method static synthetic access$0(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1409
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getUserNameNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1414
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getPasswordNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1412
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getLastNameNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1405
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getSocialMoodNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1416
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getPhoneNumberNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1415
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getEmailNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1410
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getSocialUserNameNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1404
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getSocialJoinedStrNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lcom/waze/mywaze/MyWazeNativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 1482
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterLoggedInNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$17(Lcom/waze/mywaze/MyWazeNativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 1483
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterPostReportsNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lcom/waze/mywaze/MyWazeNativeManager;)I
    .locals 1
    .parameter

    .prologue
    .line 1484
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterPostDrivingModeNTV()I

    move-result v0

    return v0
.end method

.method static synthetic access$19(Lcom/waze/mywaze/MyWazeNativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 1485
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterPostMunchingNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1421
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getNickNameNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20(Lcom/waze/mywaze/MyWazeNativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 1479
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterShowMunchingNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$21(Lcom/waze/mywaze/MyWazeNativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 1503
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFoursquareLoggedInNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$22(Lcom/waze/mywaze/MyWazeNativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 1504
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFoursquareEnableTweetLoginNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$23(Lcom/waze/mywaze/MyWazeNativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 1505
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFoursquareEnableTweetBadgeNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$24(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/mywaze/Group;
    .locals 1
    .parameter

    .prologue
    .line 1444
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getActiveGroupNTV()Lcom/waze/mywaze/Group;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25(Lcom/waze/mywaze/MyWazeNativeManager;)[Lcom/waze/mywaze/Group;
    .locals 1
    .parameter

    .prologue
    .line 1445
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getGroupsNTV()[Lcom/waze/mywaze/Group;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1435
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getUserCarNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1436
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->setUserCarNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1413
    invoke-direct/range {p0 .. p5}, Lcom/waze/mywaze/MyWazeNativeManager;->setNamesNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29(Lcom/waze/mywaze/MyWazeNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1437
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->SetInvisibleNTV(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/mywaze/MyWazeNativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 1424
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getAllowPingsNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$30(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1439
    invoke-direct {p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager;->setSelectedGroupNTV(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$31(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1428
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/mywaze/MyWazeNativeManager;->doLoginOkNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$32(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->pendingLogin:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;

    return-object v0
.end method

.method static synthetic access$33(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager;->pendingLogin:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;

    return-void
.end method

.method static synthetic access$34(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1429
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->doLoginNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$35(Lcom/waze/mywaze/MyWazeNativeManager;III)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1407
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->getUrlNTV(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$36(Lcom/waze/mywaze/MyWazeNativeManager;)I
    .locals 1
    .parameter

    .prologue
    .line 1430
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getUserVisibilityNTV()I

    move-result v0

    return v0
.end method

.method static synthetic access$37(Lcom/waze/mywaze/MyWazeNativeManager;)I
    .locals 1
    .parameter

    .prologue
    .line 1431
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterShowProfNTV()I

    move-result v0

    return v0
.end method

.method static synthetic access$38(Lcom/waze/mywaze/MyWazeNativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 1512
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->myCouponsEnabledNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$39(Lcom/waze/mywaze/MyWazeNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1432
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->setUserVisibilityNTV(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/mywaze/MyWazeNativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 1425
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getAllowPMNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$40(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1433
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->ShowUserScreenIfNeededNTV()V

    return-void
.end method

.method static synthetic access$41(Lcom/waze/mywaze/MyWazeNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1434
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->setTwitterShowProfNTV(I)V

    return-void
.end method

.method static synthetic access$42(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1452
    invoke-direct/range {p0 .. p5}, Lcom/waze/mywaze/MyWazeNativeManager;->registerUserNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$43(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/profile/RegisterActivity;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;

    return-object v0
.end method

.method static synthetic access$44(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/profile/RegisterActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;

    return-void
.end method

.method static synthetic access$45(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1462
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->updateTwitterNTV(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$46(Lcom/waze/mywaze/MyWazeNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1463
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->setAllowPingsNTV(Z)V

    return-void
.end method

.method static synthetic access$47(Lcom/waze/mywaze/MyWazeNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1464
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->setAllowPMNTV(Z)V

    return-void
.end method

.method static synthetic access$48(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1465
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->setVisibilityNTV()V

    return-void
.end method

.method static synthetic access$49(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1466
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->afterConnectToFacebookNTV()V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;
    .locals 1
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookSettings()Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$50(Lcom/waze/mywaze/MyWazeNativeManager;[ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1467
    invoke-direct {p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialAddFriendsNTV([ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$51(Lcom/waze/mywaze/MyWazeNativeManager;[ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1468
    invoke-direct {p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialRemoveFriendsNTV([ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$52(Lcom/waze/mywaze/MyWazeNativeManager;[I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1469
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->sendSocialInviteFriendsNTV([I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$53(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1506
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->afterConnectToFoursquareNTV()V

    return-void
.end method

.method static synthetic access$54(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1502
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->afterConnectToTwitterNTV()V

    return-void
.end method

.method static synthetic access$55(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1470
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->skipSignupNTV()V

    return-void
.end method

.method static synthetic access$56(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1471
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->completeSignupNTV()V

    return-void
.end method

.method static synthetic access$57(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1492
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->facebookDisconnectNTV()V

    return-void
.end method

.method static synthetic access$58(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1493
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->facebookDisconnectNowNTV()V

    return-void
.end method

.method static synthetic access$59(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1498
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterDisconnectNTV()V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1417
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFaceBookNickNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$60(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1497
    invoke-direct {p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterConnectNTV(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$61(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1495
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterSetUsernameNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$62(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1496
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterSetPasswordNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$63(Lcom/waze/mywaze/MyWazeNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1499
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterSetReportModeNTV(Z)V

    return-void
.end method

.method static synthetic access$64(Lcom/waze/mywaze/MyWazeNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1500
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterSetDrivingModeNTV(I)V

    return-void
.end method

.method static synthetic access$65(Lcom/waze/mywaze/MyWazeNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1501
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterSetMunchingModeNTV(Z)V

    return-void
.end method

.method static synthetic access$66(Lcom/waze/mywaze/MyWazeNativeManager;)Lcom/waze/mywaze/MyWazeData;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mConflictingDataUser:Lcom/waze/mywaze/MyWazeData;

    return-object v0
.end method

.method static synthetic access$67(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1507
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->foursquareDisconnectNTV()V

    return-void
.end method

.method static synthetic access$68(Lcom/waze/mywaze/MyWazeNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1508
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->foursquareSetTweetLoginNTV(Z)V

    return-void
.end method

.method static synthetic access$69(Lcom/waze/mywaze/MyWazeNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1509
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->foursquareSetTweetBadgeNTV(Z)V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1403
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getJoinedStrNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$70(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1494
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->facebookResolveConflictNTV()V

    return-void
.end method

.method static synthetic access$71(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1510
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->foursquareCheckinNTV()V

    return-void
.end method

.method static synthetic access$72(Lcom/waze/mywaze/MyWazeNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1511
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->selectFoursquareVenueNTV(I)V

    return-void
.end method

.method static synthetic access$73(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1457
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->updateFacebookTokenNTV(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$74(Lcom/waze/mywaze/MyWazeNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1513
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->authorizePublishCallbackNTV(Z)V

    return-void
.end method

.method static synthetic access$75(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1458
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->setFacebookTokenNTV(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$76(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1459
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->setFacebookSignInNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$77(Lcom/waze/mywaze/MyWazeNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1460
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->ImportFacebookNTV()V

    return-void
.end method

.method static synthetic access$78(Lcom/waze/mywaze/MyWazeNativeManager;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1461
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/mywaze/MyWazeNativeManager;->setContactSignInNTV(ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/mywaze/MyWazeNativeManager;)I
    .locals 1
    .parameter

    .prologue
    .line 1418
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsOnlineNTV()I

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/waze/mywaze/MyWazeNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1411
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFirstNameNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native afterConnectToFacebookNTV()V
.end method

.method private native afterConnectToFoursquareNTV()V
.end method

.method private native afterConnectToTwitterNTV()V
.end method

.method private native authorizePublishCallbackNTV(Z)V
.end method

.method private closePendingRegister()V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;

    invoke-virtual {v0}, Lcom/waze/profile/RegisterActivity;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;

    invoke-virtual {v0}, Lcom/waze/profile/RegisterActivity;->finish()V

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;

    .line 710
    :cond_0
    return-void
.end method

.method private native completeSignupNTV()V
.end method

.method private native doLoginNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native doLoginOkNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native facebookDisconnectNTV()V
.end method

.method private native facebookDisconnectNowNTV()V
.end method

.method private native facebookResolveConflictNTV()V
.end method

.method private facebook_settings_dialog_open()V
    .locals 2

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookSettings()Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;

    move-result-object v0

    .line 859
    .local v0, settings:Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;
    new-instance v1, Lcom/waze/mywaze/MyWazeNativeManager$42;

    invoke-direct {v1, p0, v0}, Lcom/waze/mywaze/MyWazeNativeManager$42;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;)V

    invoke-static {v1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 866
    return-void
.end method

.method private native foursquareCheckinNTV()V
.end method

.method private native foursquareDisconnectNTV()V
.end method

.method private native foursquareSetTweetBadgeNTV(Z)V
.end method

.method private native foursquareSetTweetLoginNTV(Z)V
.end method

.method private native getActiveGroupNTV()Lcom/waze/mywaze/Group;
.end method

.method private native getAllowPMNTV()Z
.end method

.method private native getAllowPingsNTV()Z
.end method

.method private native getDisplayNameNTV()Ljava/lang/String;
.end method

.method private native getEmailNTV()Ljava/lang/String;
.end method

.method private native getFaceBookNickNTV()Ljava/lang/String;
.end method

.method private getFacebookSettings()Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;

    invoke-direct {v0}, Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;-><init>()V

    .line 231
    .local v0, settings:Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;
    invoke-virtual {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookLoggedInNTV()Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;->loggedIn:Z

    .line 232
    return-object v0
.end method

.method private native getFirstNameNTV()Ljava/lang/String;
.end method

.method private native getFoursquareEnableTweetBadgeNTV()Z
.end method

.method private native getFoursquareEnableTweetLoginNTV()Z
.end method

.method private native getFoursquareLoggedInNTV()Z
.end method

.method private native getGroupsNTV()[Lcom/waze/mywaze/Group;
.end method

.method public static getInstance()Lcom/waze/mywaze/MyWazeNativeManager;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager;->instance:Lcom/waze/mywaze/MyWazeNativeManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-direct {v0}, Lcom/waze/mywaze/MyWazeNativeManager;-><init>()V

    sput-object v0, Lcom/waze/mywaze/MyWazeNativeManager;->instance:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 60
    :cond_0
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager;->instance:Lcom/waze/mywaze/MyWazeNativeManager;

    return-object v0
.end method

.method private native getJoinedStrNTV()Ljava/lang/String;
.end method

.method private native getLastNameNTV()Ljava/lang/String;
.end method

.method private native getLastShareDriveURLNTV()Ljava/lang/String;
.end method

.method private native getNickNameNTV()Ljava/lang/String;
.end method

.method private native getNumberOfFriendsNTV()I
.end method

.method private native getNumberOfFriendsOnlineNTV()I
.end method

.method private native getNumberOfFriendsPendingNTV()I
.end method

.method private native getPasswordNTV()Ljava/lang/String;
.end method

.method private native getPhoneNumberNTV()Ljava/lang/String;
.end method

.method private native getSocialJoinedStrNTV()Ljava/lang/String;
.end method

.method private native getSocialMoodNTV()Ljava/lang/String;
.end method

.method private native getSocialUserNameNTV()Ljava/lang/String;
.end method

.method private native getTwitterLoggedInNTV()Z
.end method

.method private native getTwitterPasswordNTV()Ljava/lang/String;
.end method

.method private native getTwitterPostDrivingModeNTV()I
.end method

.method private native getTwitterPostMunchingNTV()Z
.end method

.method private native getTwitterPostReportsNTV()Z
.end method

.method private native getTwitterShowMunchingNTV()Z
.end method

.method private native getTwitterShowProfNTV()I
.end method

.method private native getTwitterUsernameNTV()Ljava/lang/String;
.end method

.method private getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V
    .locals 6
    .parameter "selector"
    .parameter "callback"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 562
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$21;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/waze/mywaze/MyWazeNativeManager$21;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;IILcom/waze/mywaze/MyWazeNativeManager$UrlCallback;)V

    .line 578
    .local v0, getUrlEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 579
    return-void
.end method

.method private native getUrlNTV(III)Ljava/lang/String;
.end method

.method private native getUserCarNTV()Ljava/lang/String;
.end method

.method private native getUserNameNTV()Ljava/lang/String;
.end method

.method private native getUserVisibilityNTV()I
.end method

.method private native getWelcomeNameNTV()Ljava/lang/String;
.end method

.method private native initNTV()V
.end method

.method private native myCouponsEnabledNTV()Z
.end method

.method private native registerUserNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native selectFoursquareVenueNTV(I)V
.end method

.method private native sendSocialAddFriendsNTV([ILjava/lang/String;)V
.end method

.method private native sendSocialInviteFriendsNTV([I[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native sendSocialRemoveFriendsNTV([ILjava/lang/String;)V
.end method

.method private native setAllowPMNTV(Z)V
.end method

.method private native setAllowPingsNTV(Z)V
.end method

.method private native setContactSignInNTV(ZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native setFacebookSignInNTV(Ljava/lang/String;)V
.end method

.method private native setFacebookTokenNTV(Ljava/lang/String;J)V
.end method

.method private native setNamesNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setSelectedGroupNTV(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setTwitterShowProfNTV(I)V
.end method

.method private native setUserCarNTV(Ljava/lang/String;)V
.end method

.method private native setUserVisibilityNTV(I)V
.end method

.method private native setVisibilityNTV()V
.end method

.method private native skipSignupNTV()V
.end method

.method private native twitterConnectNTV(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native twitterDisconnectNTV()V
.end method

.method private native twitterSetDrivingModeNTV(I)V
.end method

.method private native twitterSetMunchingModeNTV(Z)V
.end method

.method private native twitterSetPasswordNTV(Ljava/lang/String;)V
.end method

.method private native twitterSetReportModeNTV(Z)V
.end method

.method private native twitterSetUsernameNTV(Ljava/lang/String;)V
.end method

.method private native updateFacebookTokenNTV(Ljava/lang/String;J)V
.end method

.method private updatePermissions([Ljava/lang/String;)V
    .locals 1
    .parameter "readPermissions"

    .prologue
    .line 1211
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$73;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$73;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1217
    return-void
.end method

.method private native updateTwitterNTV(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native validateNicknameNTV(Ljava/lang/String;)Z
.end method

.method private native validatePasswordNTV(Ljava/lang/String;)Z
.end method

.method private native validateUserNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method


# virtual methods
.method public ClearToken()V
    .locals 1

    .prologue
    .line 1280
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$80;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$80;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1288
    return-void
.end method

.method public native FacebookEnabledNTV()Z
.end method

.method public native FoursquareEnabledNTV()Z
.end method

.method public GetAllowPM(Lcom/waze/mywaze/social/SocialActivity;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 181
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$3;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$3;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/social/SocialActivity;)V

    .line 196
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public GetAllowPing(Lcom/waze/mywaze/social/SocialActivity;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 161
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$2;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$2;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/social/SocialActivity;)V

    .line 176
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public GetDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getDisplayNameNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetInvisible()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mIsInvisible:Z

    return v0
.end method

.method public GetLastShareURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getLastShareDriveURLNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native GroupsEnabledNTV()Z
.end method

.method public ImportFacebook()V
    .locals 1

    .prologue
    .line 1260
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$78;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$78;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1266
    return-void
.end method

.method public native MarketEnabledNTV()Z
.end method

.method public OnSettingChange_SetVisibilty()V
    .locals 1

    .prologue
    .line 754
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$33;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$33;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 761
    return-void
.end method

.method public SetallowPM(Z)V
    .locals 1
    .parameter "allow"

    .prologue
    .line 744
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$32;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$32;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 751
    return-void
.end method

.method public ShowUserScreenIfNeeded()V
    .locals 1

    .prologue
    .line 644
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$25;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$25;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 650
    return-void
.end method

.method public native TwitterEnabledNTV()Z
.end method

.method public addFriendsChangedListener(Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mFriendsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    return-void
.end method

.method public allowPings(Z)V
    .locals 1
    .parameter "allow"

    .prologue
    .line 734
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$31;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$31;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 741
    return-void
.end method

.method public authorizePublishCallback(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1222
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$74;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$74;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1228
    return-void
.end method

.method public completeSignup()V
    .locals 1

    .prologue
    .line 978
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$49;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$49;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 984
    return-void
.end method

.method public doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V
    .locals 1
    .parameter "username"
    .parameter "password"
    .parameter "nickname"
    .parameter "onResult"

    .prologue
    .line 547
    iput-object p4, p0, Lcom/waze/mywaze/MyWazeNativeManager;->pendingLogin:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;

    .line 548
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager$20;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 553
    return-void
.end method

.method public doLoginOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/mywaze/MyWazeNativeManager$LoginCallback;)V
    .locals 6
    .parameter "username"
    .parameter "password"
    .parameter "nickname"
    .parameter "allowPings"
    .parameter "onResult"

    .prologue
    .line 511
    iput-object p5, p0, Lcom/waze/mywaze/MyWazeNativeManager;->pendingLogin:Lcom/waze/mywaze/MyWazeNativeManager$LoginCallback;

    .line 512
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$17;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/mywaze/MyWazeNativeManager$17;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 517
    return-void
.end method

.method public facebookDisconnect()V
    .locals 1

    .prologue
    .line 995
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$51;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$51;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1004
    return-void
.end method

.method public facebookDisconnectNow()V
    .locals 1

    .prologue
    .line 1007
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$52;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$52;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1015
    return-void
.end method

.method public facebookPostConnect()V
    .locals 1

    .prologue
    .line 764
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$34;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$34;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 771
    return-void
.end method

.method public facebookResolveConflict()V
    .locals 1

    .prologue
    .line 1143
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$66;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$66;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1149
    return-void
.end method

.method public facebookTokenSet()V
    .locals 1

    .prologue
    .line 1318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mWasFbTokenSet:Z

    .line 1319
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$82;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$82;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1359
    return-void
.end method

.method public facebookUpdateToken()Z
    .locals 4

    .prologue
    .line 1307
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    .line 1308
    .local v0, fb:Lcom/waze/social/facebook/FacebookWrapper;
    invoke-virtual {v0}, Lcom/waze/social/facebook/FacebookWrapper;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1310
    invoke-virtual {v0}, Lcom/waze/social/facebook/FacebookWrapper;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/waze/social/facebook/FacebookWrapper;->getExpirationTime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/waze/mywaze/MyWazeNativeManager;->updateFacebookTokenNTV(Ljava/lang/String;J)V

    .line 1311
    const/4 v1, 0x1

    .line 1314
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public facebook_show_conflicting_users(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "userName"
    .parameter "last_seen"
    .parameter "points"
    .parameter "rank"

    .prologue
    .line 1082
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$60;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/waze/mywaze/MyWazeNativeManager$60;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1097
    return-void
.end method

.method public foursquareCheckin()V
    .locals 1

    .prologue
    .line 1152
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$67;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$67;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1158
    return-void
.end method

.method public foursquareDisconnect()V
    .locals 1

    .prologue
    .line 1116
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$63;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$63;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1122
    return-void
.end method

.method public foursquarePostConnect()V
    .locals 1

    .prologue
    .line 827
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$39;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$39;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 834
    return-void
.end method

.method public foursquareSetTweetBadge(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1134
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$65;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$65;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1140
    return-void
.end method

.method public foursquareSetTweetLogin(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1125
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$64;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$64;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1131
    return-void
.end method

.method public getActiveGroup(Lcom/waze/mywaze/MyWazeNativeManager$ActiveGroupListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 413
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$10;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$10;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$ActiveGroupListener;)V

    .line 425
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method

.method public native getContactLoggedInNTV()Z
.end method

.method public getCouponsUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V
    .locals 1
    .parameter "callback"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 83
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_COUPONS:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 84
    return-void
.end method

.method public getFacebookConnectUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V
    .locals 1
    .parameter "callback"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 87
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FACEBOOKCONNECT:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 88
    return-void
.end method

.method public getFacebookLikeUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V
    .locals 1
    .parameter "callback"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 111
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FACEBOOKLIKE:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 112
    return-void
.end method

.method public native getFacebookLoggedInNTV()Z
.end method

.method public getFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 210
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$4;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$4;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;)V

    .line 225
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public getFacebookShareUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V
    .locals 1
    .parameter "callback"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 107
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FACEBOOKSHARE:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 108
    return-void
.end method

.method public getForgotPasswordUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V
    .locals 1
    .parameter "callback"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 103
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FORGOTPASSWORD:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 104
    return-void
.end method

.method public getFoursquareConnectUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V
    .locals 1
    .parameter "callback"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 91
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_FOURSQUARECONNECT:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 92
    return-void
.end method

.method public getFoursquareSettings(Lcom/waze/mywaze/MyWazeNativeManager$FoursquareCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 370
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$8;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$8;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$FoursquareCallback;)V

    .line 389
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method public getGroups(Lcom/waze/mywaze/MyWazeNativeManager$GetGroupsListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 428
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$11;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$11;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$GetGroupsListener;)V

    .line 440
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 441
    return-void
.end method

.method public getGroupsUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V
    .locals 1
    .parameter "callback"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 75
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_GROUPS:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 76
    return-void
.end method

.method public native getInvisibleNTV()Z
.end method

.method public native getLearnMorePrivacyUrlNTV()Ljava/lang/String;
.end method

.method public getMyConflictingUserData()Lcom/waze/mywaze/MyWazeData;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mConflictingDataUser:Lcom/waze/mywaze/MyWazeData;

    return-object v0
.end method

.method public getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 1
    .parameter "mywaze"

    .prologue
    .line 245
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$5;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$5;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 276
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method public getMyWazeDataForVerification(Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 1
    .parameter "mywaze"

    .prologue
    .line 280
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$6;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$6;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 300
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public native getNameNTV()Ljava/lang/String;
.end method

.method public getNumberOfFriends()I
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsNTV()I

    move-result v0

    return v0
.end method

.method public getNumberOfFriendsOnline()I
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsOnlineNTV()I

    move-result v0

    return v0
.end method

.method public getNumberOfFriendsPending()I
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsPendingNTV()I

    move-result v0

    return v0
.end method

.method public native getPointsNTV()I
.end method

.method public getPrivacySettings(Lcom/waze/mywaze/MyWazeNativeManager$PrivacyCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 591
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$22;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$22;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$PrivacyCallback;)V

    .line 608
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 610
    return-void
.end method

.method public getProfileSettings(Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 136
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$1;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$1;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$ProfileCallback;)V

    .line 156
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public native getRankNTV()I
.end method

.method public getScoreboardUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V
    .locals 1
    .parameter "callback"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 79
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_SCOREBOARD:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 80
    return-void
.end method

.method public native getSocialPointsNTV()I
.end method

.method public native getSocialRankNTV()I
.end method

.method public getTwitterConnectUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;IIZ)V
    .locals 1
    .parameter "callback"
    .parameter "width"
    .parameter "height"
    .parameter "sendInitialTweet"

    .prologue
    .line 95
    if-eqz p4, :cond_0

    .line 96
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_TWITTERCONNECTPLUSINITIAL:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_TWITTERCONNECT:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    goto :goto_0
.end method

.method public getTwitterFollowUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V
    .locals 1
    .parameter "callback"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 115
    sget-object v0, Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;->URL_TWITTERFOLLOW:Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->getUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlSelector;Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 116
    return-void
.end method

.method public getTwitterSettings(Lcom/waze/mywaze/MyWazeNativeManager$TwitterCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 334
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$7;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$7;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$TwitterCallback;)V

    .line 354
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public getUserCar(Lcom/waze/mywaze/MyWazeNativeManager$UserCarCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 448
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$12;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$12;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$UserCarCallback;)V

    .line 461
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method public native getUserImageUrlNTV()Ljava/lang/String;
.end method

.method public native getUserTypeNTV()I
.end method

.method public getWasFbTokenSet()Z
    .locals 1

    .prologue
    .line 1362
    iget-boolean v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mWasFbTokenSet:Z

    return v0
.end method

.method public getWasLoginSuccess()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mWasLoginSuccess:Z

    return v0
.end method

.method public getWelcomeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getWelcomeNameNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native isJustJoinedNTV()Z
.end method

.method public native isRandomUserNTV()Z
.end method

.method public launchMyWaze(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 613
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$23;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$23;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Landroid/content/Context;)V

    .line 630
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 632
    return-void
.end method

.method public mood_dialog_show()V
    .locals 1

    .prologue
    .line 869
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$43;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$43;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method public onLoginFailed()V
    .locals 1

    .prologue
    .line 520
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$18;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$18;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method public onLoginSuccess()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mWasLoginSuccess:Z

    .line 532
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$19;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$19;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method

.method public openFoursquareDialog()V
    .locals 2

    .prologue
    .line 393
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;

    invoke-direct {v0}, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;-><init>()V

    .line 394
    .local v0, settings:Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFoursquareLoggedInNTV()Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;->loggedIn:Z

    .line 395
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFoursquareEnableTweetLoginNTV()Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;->enableTweetLogin:Z

    .line 396
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getFoursquareEnableTweetBadgeNTV()Z

    move-result v1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;->enableTweetBadge:Z

    .line 397
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;->checkInAfterLogin:Z

    .line 398
    new-instance v1, Lcom/waze/mywaze/MyWazeNativeManager$9;

    invoke-direct {v1, p0, v0}, Lcom/waze/mywaze/MyWazeNativeManager$9;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/MyWazeNativeManager$FoursquareSettings;)V

    invoke-static {v1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method public openWelcome()V
    .locals 1

    .prologue
    .line 712
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$29;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$29;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 721
    return-void
.end method

.method public openWelcomeActivityAndCloseCurrentActivity()V
    .locals 1

    .prologue
    .line 920
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$48;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$48;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 975
    return-void
.end method

.method public refreshFacebookConnection(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 987
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$50;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$50;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 992
    return-void
.end method

.method public refreshFoursquareConnection(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 1100
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$61;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$61;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1105
    return-void
.end method

.method public refreshTwitterConnection(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 1108
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$62;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$62;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1113
    return-void
.end method

.method public registerFailed(Z)V
    .locals 1
    .parameter "bIsSuccess"

    .prologue
    .line 686
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$28;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$28;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 701
    return-void
.end method

.method public registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/profile/RegisterActivity;)Z
    .locals 7
    .parameter "username"
    .parameter "password"
    .parameter "confirm"
    .parameter "nickname"
    .parameter "email"
    .parameter "updates"
    .parameter "caller"

    .prologue
    .line 668
    invoke-direct/range {p0 .. p6}, Lcom/waze/mywaze/MyWazeNativeManager;->validateUserNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    const/4 v0, 0x0

    .line 678
    :goto_0
    return v0

    .line 671
    :cond_0
    iput-object p7, p0, Lcom/waze/mywaze/MyWazeNativeManager;->pendingRegister:Lcom/waze/profile/RegisterActivity;

    .line 672
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$27;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/waze/mywaze/MyWazeNativeManager$27;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 678
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeFriendsChangedListener(Lcom/waze/mywaze/MyWazeNativeManager$IFriendsChanged;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mFriendsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 813
    return-void
.end method

.method public selectFoursquareVenue(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1173
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$69;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$69;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1179
    return-void
.end method

.method public sendSocialAddFriends([ILjava/lang/String;)V
    .locals 1
    .parameter "ids"
    .parameter "message"

    .prologue
    .line 774
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$35;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager$35;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;[ILjava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 780
    return-void
.end method

.method public sendSocialInviteFriends([I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ids"
    .parameter "phones"
    .parameter "message"

    .prologue
    .line 792
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$37;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager$37;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;[I[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 798
    return-void
.end method

.method public sendSocialRemoveFriends([ILjava/lang/String;)V
    .locals 1
    .parameter "ids"
    .parameter "message"

    .prologue
    .line 783
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$36;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager$36;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;[ILjava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 789
    return-void
.end method

.method public setContactsSignIn(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "bIsForce"
    .parameter "IsConnectOnly"
    .parameter "firstName"
    .parameter "LastName"

    .prologue
    .line 1270
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$79;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/mywaze/MyWazeNativeManager$79;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1276
    return-void
.end method

.method public setFacebookToken(Ljava/lang/String;J)V
    .locals 1
    .parameter "accessToken"
    .parameter "accessExpires"

    .prologue
    .line 1242
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$76;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager$76;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1248
    return-void
.end method

.method public setInvisible(Z)V
    .locals 1
    .parameter "bIsInvisible"

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/waze/mywaze/MyWazeNativeManager;->mIsInvisible:Z

    .line 483
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$15;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$15;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 488
    return-void
.end method

.method public setNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "first"
    .parameter "last"
    .parameter "user"
    .parameter "password"
    .parameter "email"

    .prologue
    .line 473
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/waze/mywaze/MyWazeNativeManager$14;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 478
    return-void
.end method

.method public setSelectedGroup(Lcom/waze/mywaze/Group;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 495
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$16;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$16;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Lcom/waze/mywaze/Group;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method public setSignIn(Ljava/lang/String;)V
    .locals 1
    .parameter "accessToken"

    .prologue
    .line 1251
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$77;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$77;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1257
    return-void
.end method

.method public setTwitterShowProfile(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 653
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$26;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$26;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 659
    return-void
.end method

.method public setUserCar(Ljava/lang/String;)V
    .locals 1
    .parameter "car"

    .prologue
    .line 465
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$13;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$13;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 635
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$24;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$24;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 641
    return-void
.end method

.method public showFoursquareResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "label"
    .parameter "address"
    .parameter "points"

    .prologue
    .line 1291
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$81;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager$81;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1303
    return-void
.end method

.method public showFoursquareVenues([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "descriptions"
    .parameter "addresses"
    .parameter "distances"

    .prologue
    .line 1161
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$68;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager$68;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1170
    return-void
.end method

.method public showProfile()V
    .locals 1

    .prologue
    .line 878
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$44;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$44;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 883
    return-void
.end method

.method public showRegister()V
    .locals 1

    .prologue
    .line 886
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$45;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$45;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 896
    return-void
.end method

.method public showSignIn()V
    .locals 1

    .prologue
    .line 847
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$41;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$41;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 855
    return-void
.end method

.method public showVideo(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 899
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$46;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$46;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 907
    return-void
.end method

.method public skipSignup()V
    .locals 1

    .prologue
    .line 910
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$47;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$47;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 916
    return-void
.end method

.method public socialContactsGetLastPhoneUsed()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1395
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 1396
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1397
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 1399
    :cond_0
    const-string v2, "socialContactsLastPhoneUsed"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/waze/WazeBackupAgent;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1400
    .local v1, ret:Ljava/lang/String;
    return-object v1
.end method

.method public socialContactsGetRecoveryToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 1386
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 1387
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1388
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 1390
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "socialContactsPhoneRecovery_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/waze/WazeBackupAgent;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1391
    .local v1, ret:Ljava/lang/String;
    return-object v1
.end method

.method public socialContactsSavePhoneRecovery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "phoneNumber"
    .parameter "token"

    .prologue
    .line 1369
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$83;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager$83;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1383
    return-void
.end method

.method public socialFriendsAddedOrRemoved()V
    .locals 1

    .prologue
    .line 816
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$38;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$38;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 823
    return-void
.end method

.method public twitterConnect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1027
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$54;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager$54;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1033
    return-void
.end method

.method public twitterDisconnect()V
    .locals 1

    .prologue
    .line 1018
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$53;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$53;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1024
    return-void
.end method

.method public twitterPostConnect()V
    .locals 1

    .prologue
    .line 837
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$40;

    invoke-direct {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager$40;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 844
    return-void
.end method

.method public twitterSetDrivingMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1063
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$58;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$58;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1069
    return-void
.end method

.method public twitterSetMunchingMode(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1072
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$59;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$59;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1078
    return-void
.end method

.method public twitterSetPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 1045
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$56;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$56;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1051
    return-void
.end method

.method public twitterSetReportMode(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1054
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$57;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$57;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1060
    return-void
.end method

.method public twitterSetUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 1036
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$55;

    invoke-direct {v0, p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager$55;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1042
    return-void
.end method

.method public updateFacebookToken(Ljava/lang/String;J)V
    .locals 1
    .parameter "accessToken"
    .parameter "accessExpires"

    .prologue
    .line 1181
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$70;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager$70;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 1187
    return-void
.end method

.method public updateTwitter(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "username"
    .parameter "password"
    .parameter "update"

    .prologue
    .line 724
    new-instance v0, Lcom/waze/mywaze/MyWazeNativeManager$30;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/mywaze/MyWazeNativeManager$30;-><init>(Lcom/waze/mywaze/MyWazeNativeManager;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 731
    return-void
.end method

.method public validateNickname(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->validateNicknameNTV(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public validatePassword(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->validatePasswordNTV(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
