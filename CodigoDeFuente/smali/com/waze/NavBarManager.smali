.class public Lcom/waze/NavBarManager;
.super Ljava/lang/Object;
.source "NavBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/NavBarManager$NavigationListListener;
    }
.end annotation


# static fields
.field private static navBar:Lcom/waze/navbar/NavBar;


# instance fields
.field private bIsAlertNavBar:Z

.field private bottomDist:Ljava/lang/String;

.field private bottomEta:Ljava/lang/String;

.field private bottomTime:Ljava/lang/String;

.field private currExit:I

.field private currFollowers:I

.field private currInst:I

.field private distUnit:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private layoutManager:Lcom/waze/LayoutManager;

.field private mDriveOnLeft:Z

.field private mNightSkin:Z

.field private maxFollowers:I

.field private mode:I

.field private nextDist:Ljava/lang/String;

.field private nextExit:I

.field private nextInst:I

.field private street:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/waze/LayoutManager;)V
    .locals 1
    .parameter "layoutManager"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/NavBarManager;->bIsAlertNavBar:Z

    .line 13
    iput-object p1, p0, Lcom/waze/NavBarManager;->layoutManager:Lcom/waze/LayoutManager;

    .line 14
    invoke-direct {p0}, Lcom/waze/NavBarManager;->InitNavBarManagerNTV()V

    .line 15
    return-void
.end method

.method private native InitNavBarManagerNTV()V
.end method

.method static synthetic access$0(Lcom/waze/NavBarManager;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/waze/NavBarManager;->showNavigationResultNTV()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/NavBarManager;)[Lcom/waze/main/navigate/NavigationItem;
    .locals 1
    .parameter

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/waze/NavBarManager;->getNavigationItemsNTV()[Lcom/waze/main/navigate/NavigationItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/NavBarManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    iput p1, p0, Lcom/waze/NavBarManager;->currFollowers:I

    return-void
.end method

.method static synthetic access$11(Lcom/waze/NavBarManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 368
    iput p1, p0, Lcom/waze/NavBarManager;->maxFollowers:I

    return-void
.end method

.method static synthetic access$12(Lcom/waze/NavBarManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/waze/NavBarManager;->isBottomBarReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2()Lcom/waze/navbar/NavBar;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/NavBarManager;)Lcom/waze/LayoutManager;
    .locals 1
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/waze/NavBarManager;->layoutManager:Lcom/waze/LayoutManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/navbar/NavBar;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    sput-object p0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    return-void
.end method

.method static synthetic access$5(Lcom/waze/NavBarManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/waze/NavBarManager;->mDriveOnLeft:Z

    return v0
.end method

.method static synthetic access$6(Lcom/waze/NavBarManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/waze/NavBarManager;->mNightSkin:Z

    return v0
.end method

.method static synthetic access$7(Lcom/waze/NavBarManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/waze/NavBarManager;->bottomDist:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/waze/NavBarManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/waze/NavBarManager;->bottomTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/waze/NavBarManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/waze/NavBarManager;->bottomEta:Ljava/lang/String;

    return-void
.end method

.method private native getNavigationItemsNTV()[Lcom/waze/main/navigate/NavigationItem;
.end method

.method private isBottomBarReady()Z
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    invoke-virtual {v0}, Lcom/waze/navbar/NavBar;->bottomBar()Lcom/waze/view/navbar/BottomBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showNavBar()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    invoke-virtual {v0}, Lcom/waze/navbar/NavBar;->show()V

    .line 59
    :cond_0
    return-void
.end method

.method private native showNavigationResultNTV()V
.end method


# virtual methods
.method public AlertNavBar()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public getDriveOnLeft()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/waze/NavBarManager;->mDriveOnLeft:Z

    return v0
.end method

.method public getNavBar()Lcom/waze/navbar/NavBar;
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    return-object v0
.end method

.method public getNavigationItems(Lcom/waze/NavBarManager$NavigationListListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 28
    new-instance v0, Lcom/waze/NavBarManager$2;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$2;-><init>(Lcom/waze/NavBarManager;Lcom/waze/NavBarManager$NavigationListListener;)V

    .line 45
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public hideNearingDestination()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/waze/NavBarManager$7;

    invoke-direct {v0, p0}, Lcom/waze/NavBarManager$7;-><init>(Lcom/waze/NavBarManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public initialize(II)V
    .locals 5
    .parameter "driveOnLeft"
    .parameter "skinMode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 62
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/waze/NavBarManager;->mDriveOnLeft:Z

    .line 63
    if-eqz p2, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/waze/NavBarManager;->mNightSkin:Z

    .line 64
    iput-object v3, p0, Lcom/waze/NavBarManager;->bottomTime:Ljava/lang/String;

    .line 65
    iput-object v3, p0, Lcom/waze/NavBarManager;->bottomEta:Ljava/lang/String;

    .line 66
    iput-object v3, p0, Lcom/waze/NavBarManager;->bottomDist:Ljava/lang/String;

    .line 67
    iput-object v3, p0, Lcom/waze/NavBarManager;->street:Ljava/lang/String;

    .line 68
    iput-object v3, p0, Lcom/waze/NavBarManager;->nextDist:Ljava/lang/String;

    .line 69
    iput-object v3, p0, Lcom/waze/NavBarManager;->distance:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/waze/NavBarManager;->distUnit:Ljava/lang/String;

    .line 71
    iput v4, p0, Lcom/waze/NavBarManager;->nextExit:I

    .line 72
    iput v4, p0, Lcom/waze/NavBarManager;->currExit:I

    .line 73
    iput v4, p0, Lcom/waze/NavBarManager;->nextInst:I

    .line 74
    iput v4, p0, Lcom/waze/NavBarManager;->currInst:I

    .line 75
    iput v4, p0, Lcom/waze/NavBarManager;->currFollowers:I

    .line 76
    iput v4, p0, Lcom/waze/NavBarManager;->maxFollowers:I

    .line 77
    return-void

    :cond_0
    move v0, v2

    .line 62
    goto :goto_0

    :cond_1
    move v1, v2

    .line 63
    goto :goto_1
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 375
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    if-eqz v0, :cond_0

    .line 376
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    invoke-virtual {v0}, Lcom/waze/navbar/NavBar;->adjustImages()V

    .line 378
    :cond_0
    return-void
.end method

.method public restore(Lcom/waze/LayoutManager;)V
    .locals 3
    .parameter "layoutManager"

    .prologue
    const/4 v2, -0x1

    .line 293
    iput-object p1, p0, Lcom/waze/NavBarManager;->layoutManager:Lcom/waze/LayoutManager;

    .line 294
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    .line 295
    iget v0, p0, Lcom/waze/NavBarManager;->mode:I

    if-eqz v0, :cond_4

    .line 296
    invoke-virtual {p1}, Lcom/waze/LayoutManager;->createNavBar()Lcom/waze/navbar/NavBar;

    move-result-object v0

    sput-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    .line 297
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget-boolean v1, p0, Lcom/waze/NavBarManager;->mDriveOnLeft:Z

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setDrivingDirection(Z)V

    .line 298
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget-boolean v1, p0, Lcom/waze/NavBarManager;->mNightSkin:Z

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setSkin(Z)V

    .line 299
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    invoke-virtual {v0}, Lcom/waze/navbar/NavBar;->clear()V

    .line 300
    iget v0, p0, Lcom/waze/NavBarManager;->currInst:I

    if-eq v0, v2, :cond_0

    .line 301
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget v1, p0, Lcom/waze/NavBarManager;->currInst:I

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setInstruction(I)V

    .line 302
    :cond_0
    iget v0, p0, Lcom/waze/NavBarManager;->nextInst:I

    if-eq v0, v2, :cond_1

    .line 303
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget v1, p0, Lcom/waze/NavBarManager;->nextInst:I

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setNextInstruction(I)V

    .line 304
    :cond_1
    iget v0, p0, Lcom/waze/NavBarManager;->currExit:I

    if-eq v0, v2, :cond_2

    .line 305
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget v1, p0, Lcom/waze/NavBarManager;->currExit:I

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setExit(I)V

    .line 306
    :cond_2
    iget v0, p0, Lcom/waze/NavBarManager;->nextExit:I

    if-eq v0, v2, :cond_3

    .line 307
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget v1, p0, Lcom/waze/NavBarManager;->nextExit:I

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setNextExit(I)V

    .line 308
    :cond_3
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/NavBarManager;->distance:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NavBarManager;->distUnit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navbar/NavBar;->setDistance(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/NavBarManager;->nextDist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setNextDistance(Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/NavBarManager;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setStreet(Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/NavBarManager;->bottomDist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setDistStr(Ljava/lang/String;)Z

    .line 312
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/NavBarManager;->bottomTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setTimeStr(Ljava/lang/String;)Z

    .line 313
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/NavBarManager;->bottomEta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->setEtaStr(Ljava/lang/String;)Z

    .line 314
    sget-object v0, Lcom/waze/NavBarManager;->navBar:Lcom/waze/navbar/NavBar;

    iget v1, p0, Lcom/waze/NavBarManager;->currFollowers:I

    iget v2, p0, Lcom/waze/NavBarManager;->maxFollowers:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/navbar/NavBar;->setFollowersNum(II)Z

    .line 315
    invoke-virtual {p0}, Lcom/waze/NavBarManager;->show()V

    .line 319
    :cond_4
    return-void
.end method

.method protected setFriendsNum(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 323
    new-instance v0, Lcom/waze/NavBarManager$20;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$20;-><init>(Lcom/waze/NavBarManager;I)V

    .line 333
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public setWaypoint(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 106
    new-instance v0, Lcom/waze/NavBarManager$5;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$5;-><init>(Lcom/waze/NavBarManager;Z)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public set_dist_str(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/waze/NavBarManager;->bottomDist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/waze/NavBarManager$16;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$16;-><init>(Lcom/waze/NavBarManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 249
    :cond_0
    return-void
.end method

.method public set_distance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "dist"
    .parameter "unit"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/waze/NavBarManager;->distance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/NavBarManager;->distUnit:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/waze/NavBarManager;->distance:Ljava/lang/String;

    .line 201
    iput-object p2, p0, Lcom/waze/NavBarManager;->distUnit:Ljava/lang/String;

    .line 202
    new-instance v0, Lcom/waze/NavBarManager$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NavBarManager$13;-><init>(Lcom/waze/NavBarManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 210
    :cond_1
    return-void
.end method

.method public set_eta_str(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/waze/NavBarManager;->bottomTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/waze/NavBarManager$17;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$17;-><init>(Lcom/waze/NavBarManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 262
    :cond_0
    return-void
.end method

.method public set_exit(I)V
    .locals 1
    .parameter "exit"

    .prologue
    .line 173
    iget v0, p0, Lcom/waze/NavBarManager;->currExit:I

    if-eq v0, p1, :cond_0

    .line 174
    iput p1, p0, Lcom/waze/NavBarManager;->currExit:I

    .line 175
    new-instance v0, Lcom/waze/NavBarManager$11;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$11;-><init>(Lcom/waze/NavBarManager;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 183
    :cond_0
    return-void
.end method

.method public set_followers_num(II)V
    .locals 1
    .parameter "num"
    .parameter "maxNum"

    .prologue
    .line 278
    iget v0, p0, Lcom/waze/NavBarManager;->maxFollowers:I

    if-eq v0, p2, :cond_0

    .line 279
    new-instance v0, Lcom/waze/NavBarManager$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NavBarManager$19;-><init>(Lcom/waze/NavBarManager;II)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 290
    :cond_0
    return-void
.end method

.method public set_instruction(I)V
    .locals 1
    .parameter "instruction"

    .prologue
    .line 147
    iget v0, p0, Lcom/waze/NavBarManager;->currInst:I

    if-eq v0, p1, :cond_0

    .line 148
    iput p1, p0, Lcom/waze/NavBarManager;->currInst:I

    .line 149
    new-instance v0, Lcom/waze/NavBarManager$9;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$9;-><init>(Lcom/waze/NavBarManager;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 157
    :cond_0
    return-void
.end method

.method public set_mode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 81
    iput p1, p0, Lcom/waze/NavBarManager;->mode:I

    .line 82
    new-instance v0, Lcom/waze/NavBarManager$4;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$4;-><init>(Lcom/waze/NavBarManager;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public set_next_distance(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/waze/NavBarManager;->nextDist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iput-object p1, p0, Lcom/waze/NavBarManager;->nextDist:Ljava/lang/String;

    .line 215
    new-instance v0, Lcom/waze/NavBarManager$14;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$14;-><init>(Lcom/waze/NavBarManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 223
    :cond_0
    return-void
.end method

.method public set_next_exit(I)V
    .locals 1
    .parameter "exit"

    .prologue
    .line 186
    iget v0, p0, Lcom/waze/NavBarManager;->nextExit:I

    if-eq v0, p1, :cond_0

    .line 187
    iput p1, p0, Lcom/waze/NavBarManager;->nextExit:I

    .line 188
    new-instance v0, Lcom/waze/NavBarManager$12;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$12;-><init>(Lcom/waze/NavBarManager;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 196
    :cond_0
    return-void
.end method

.method public set_next_instruction(I)V
    .locals 1
    .parameter "instruction"

    .prologue
    .line 160
    iget v0, p0, Lcom/waze/NavBarManager;->nextInst:I

    if-eq v0, p1, :cond_0

    .line 161
    iput p1, p0, Lcom/waze/NavBarManager;->nextInst:I

    .line 162
    new-instance v0, Lcom/waze/NavBarManager$10;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$10;-><init>(Lcom/waze/NavBarManager;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 170
    :cond_0
    return-void
.end method

.method public set_skin(I)V
    .locals 1
    .parameter "skinMode"

    .prologue
    .line 136
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/waze/NavBarManager;->mNightSkin:Z

    .line 137
    new-instance v0, Lcom/waze/NavBarManager$8;

    invoke-direct {v0, p0}, Lcom/waze/NavBarManager$8;-><init>(Lcom/waze/NavBarManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 144
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set_street(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/waze/NavBarManager;->street:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iput-object p1, p0, Lcom/waze/NavBarManager;->street:Ljava/lang/String;

    .line 228
    new-instance v0, Lcom/waze/NavBarManager$15;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$15;-><init>(Lcom/waze/NavBarManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 236
    :cond_0
    return-void
.end method

.method public set_time_str(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/waze/NavBarManager;->bottomEta:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/waze/NavBarManager$18;

    invoke-direct {v0, p0, p1}, Lcom/waze/NavBarManager$18;-><init>(Lcom/waze/NavBarManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 275
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/waze/NavBarManager$3;

    invoke-direct {v0, p0}, Lcom/waze/NavBarManager$3;-><init>(Lcom/waze/NavBarManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public showNavigationResult()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/waze/NavBarManager$1;

    invoke-direct {v0, p0}, Lcom/waze/NavBarManager$1;-><init>(Lcom/waze/NavBarManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method public showNearingDestination()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/waze/NavBarManager$6;

    invoke-direct {v0, p0}, Lcom/waze/NavBarManager$6;-><init>(Lcom/waze/NavBarManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method
