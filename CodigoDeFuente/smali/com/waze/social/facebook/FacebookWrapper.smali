.class public final Lcom/waze/social/facebook/FacebookWrapper;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;,
        Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;
    }
.end annotation


# static fields
.field private static final FB_PREFS_ACCESS_PERMISSIONS:Ljava/lang/String; = "facebookAccessPermissions"

.field private static final FB_PREFS_DELIM:Ljava/lang/String; = ","

.field private static final FB_REQUEST_CODE:I = 0x123456

.field public static final FB_STATE_AUTH_CANCEL:I = 0x3

.field public static final FB_STATE_AUTH_ERROR:I = 0x1

.field public static final FB_STATE_AUTH_NOT_NEEDED:I = 0x4

.field public static final FB_STATE_AUTH_SUCCESS:I = 0x0

.field protected static final LOG_TAG:Ljava/lang/String; = "FBWrapper"

.field public static final ON_AUTHORIZE_ACTION_NONE:I = 0x0

.field public static final ON_AUTHORIZE_ACTION_PUBLISH:I = 0x4

.field public static final ON_AUTHORIZE_ACTION_PUBLISH_STREAM:I = 0x8

.field public static final ON_AUTHORIZE_ACTION_SET_TOKEN:I = 0x1

.field public static final ON_AUTHORIZE_ACTION_SIGN_IN:I = 0x2

.field private static mInstance:Lcom/waze/social/facebook/FacebookWrapper;


# instance fields
.field public final mActivityResult:Lcom/waze/ifs/ui/ActivityResultCallback;

.field private volatile mContext:Lcom/waze/ifs/ui/ActivityBase;

.field private mFbPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFbPermissionsStream:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFbPublishPermission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/social/facebook/FacebookWrapper;->mInstance:Lcom/waze/social/facebook/FacebookWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/waze/social/facebook/FacebookWrapper$1;

    invoke-direct {v0, p0}, Lcom/waze/social/facebook/FacebookWrapper$1;-><init>(Lcom/waze/social/facebook/FacebookWrapper;)V

    iput-object v0, p0, Lcom/waze/social/facebook/FacebookWrapper;->mActivityResult:Lcom/waze/ifs/ui/ActivityResultCallback;

    .line 604
    iput-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissions:Ljava/util/List;

    .line 605
    iput-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissionsStream:Ljava/util/List;

    .line 606
    iput-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPublishPermission:Ljava/util/List;

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/waze/social/facebook/FacebookWrapper;Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/AuthStateListner;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/social/facebook/FacebookWrapper;->open(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/AuthStateListner;ZZ)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/social/facebook/FacebookWrapper;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissions:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lcom/waze/social/facebook/FacebookWrapper;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissionsStream:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lcom/waze/social/facebook/FacebookWrapper;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPublishPermission:Ljava/util/List;

    return-void
.end method

.method private create()Lcom/facebook/Session;
    .locals 4

    .prologue
    .line 132
    new-instance v0, Lcom/facebook/Session;

    iget-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, session:Lcom/facebook/Session;
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 134
    const-string v1, "FBWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New session created. Current state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-object v0
.end method

.method private getFbPermissions(Ljava/lang/Runnable;ZZ)V
    .locals 3
    .parameter "callback"
    .parameter "bIsReadPermissions"
    .parameter "bIsStreamPermission"

    .prologue
    .line 433
    new-instance v0, Lcom/waze/social/facebook/FacebookWrapper$5;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/waze/social/facebook/FacebookWrapper$5;-><init>(Lcom/waze/social/facebook/FacebookWrapper;ZZLjava/lang/Runnable;)V

    .line 467
    .local v0, fbPermRequest:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 480
    :goto_0
    return-void

    .line 473
    :cond_0
    new-instance v1, Lcom/waze/social/facebook/FacebookWrapper$6;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/waze/social/facebook/FacebookWrapper$6;-><init>(Lcom/waze/social/facebook/FacebookWrapper;Ljava/util/concurrent/Executor;Lcom/waze/ifs/async/RunnableUICallback;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/waze/social/facebook/FacebookWrapper;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/waze/social/facebook/FacebookWrapper;->mInstance:Lcom/waze/social/facebook/FacebookWrapper;

    if-nez v0, :cond_0

    .line 78
    const-string v0, "FBWrapper"

    const-string v1, "initialize method should be called first"

    invoke-static {v0, v1}, Lcom/waze/Logger;->e_(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    sget-object v0, Lcom/waze/social/facebook/FacebookWrapper;->mInstance:Lcom/waze/social/facebook/FacebookWrapper;

    return-object v0
.end method

.method private getOldToken(Landroid/app/Activity;Ljava/util/List;)Lcom/facebook/AccessToken;
    .locals 5
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .local p2, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 529
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 530
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "facebookAccessToken"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, token:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 535
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 536
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "facebookAccessToken"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 537
    const-string v4, "facebookAccessExpires"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 538
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 540
    invoke-static {v3, v0, v0, v0, p2}, Lcom/facebook/AccessToken;->createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 543
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-object v0
.end method

.method private init(Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 49
    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v1}, Lcom/facebook/Settings;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 50
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v0

    .line 51
    .local v0, session:Lcom/facebook/Session;
    iput-object p1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    .line 53
    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/waze/social/facebook/FacebookWrapper;->loadPermissions()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissions:Ljava/util/List;

    .line 56
    invoke-direct {p0}, Lcom/waze/social/facebook/FacebookWrapper;->create()Lcom/facebook/Session;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    if-ne v1, v2, :cond_0

    .line 58
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v3, v3}, Lcom/waze/social/facebook/FacebookWrapper;->open(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/AuthStateListner;ZZ)V

    .line 60
    :cond_0
    return-void
.end method

.method public static initialize(Lcom/waze/ifs/ui/ActivityBase;)Lcom/waze/social/facebook/FacebookWrapper;
    .locals 1
    .parameter "activity"

    .prologue
    .line 36
    sget-object v0, Lcom/waze/social/facebook/FacebookWrapper;->mInstance:Lcom/waze/social/facebook/FacebookWrapper;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/waze/social/facebook/FacebookWrapper;

    invoke-direct {v0}, Lcom/waze/social/facebook/FacebookWrapper;-><init>()V

    sput-object v0, Lcom/waze/social/facebook/FacebookWrapper;->mInstance:Lcom/waze/social/facebook/FacebookWrapper;

    .line 39
    sget-object v0, Lcom/waze/social/facebook/FacebookWrapper;->mInstance:Lcom/waze/social/facebook/FacebookWrapper;

    invoke-direct {v0, p0}, Lcom/waze/social/facebook/FacebookWrapper;->init(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 41
    :cond_0
    sget-object v0, Lcom/waze/social/facebook/FacebookWrapper;->mInstance:Lcom/waze/social/facebook/FacebookWrapper;

    return-object v0
.end method

.method private isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, subset:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, superset:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 260
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 255
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    .local v0, string:Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadPermissions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v4, p0, Lcom/waze/social/facebook/FacebookWrapper;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/waze/ifs/ui/ActivityBase;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 553
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v4, "facebookAccessPermissions"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, permissions:Ljava/lang/String;
    const/4 v1, 0x0

    .line 556
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 558
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, array:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 562
    .end local v0           #array:[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private open(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/AuthStateListner;ZZ)V
    .locals 7
    .parameter "activity"
    .parameter "authCb"
    .parameter "publish"
    .parameter "publishStream"

    .prologue
    const/4 v6, 0x1

    .line 143
    invoke-direct {p0, v6}, Lcom/waze/social/facebook/FacebookWrapper;->session(Z)Lcom/facebook/Session;

    move-result-object v3

    .line 145
    .local v3, s:Lcom/facebook/Session;
    if-eqz p3, :cond_1

    .line 147
    iget-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPublishPermission:Ljava/util/List;

    .line 158
    .local v1, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 160
    invoke-virtual {v3}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/waze/social/facebook/FacebookWrapper;->isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 162
    invoke-virtual {p2}, Lcom/waze/social/facebook/AuthStateListner;->getListener()Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 163
    invoke-virtual {p2}, Lcom/waze/social/facebook/AuthStateListner;->getListener()Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v4, v6, v5}, Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;->onAuthorizeCompleted(ZI)V

    .line 209
    :cond_0
    :goto_1
    return-void

    .line 149
    .end local v1           #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz p4, :cond_2

    .line 151
    iget-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissionsStream:Ljava/util/List;

    .line 152
    .restart local v1       #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 155
    .end local v1           #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissions:Ljava/util/List;

    .restart local v1       #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 167
    :cond_3
    const-string v4, "FBWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Permissions for request. Publish: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1, p2, v1}, Lcom/waze/social/facebook/FacebookWrapper;->preparePermissionsRequest(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/AuthStateListner;Ljava/util/List;)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v2

    .line 169
    .local v2, request:Lcom/facebook/Session$NewPermissionsRequest;
    if-eqz p3, :cond_4

    .line 170
    invoke-virtual {v3, v2}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_1

    .line 171
    :cond_4
    if-eqz p4, :cond_5

    .line 173
    invoke-virtual {v3, v2}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_1

    .line 176
    :cond_5
    invoke-virtual {v3, v2}, Lcom/facebook/Session;->requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_1

    .line 179
    .end local v2           #request:Lcom/facebook/Session$NewPermissionsRequest;
    :cond_6
    invoke-virtual {v3}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v4

    sget-object v5, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    if-ne v4, v5, :cond_7

    .line 181
    invoke-virtual {v3, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 182
    iget-object v4, p0, Lcom/waze/social/facebook/FacebookWrapper;->mActivityResult:Lcom/waze/ifs/ui/ActivityResultCallback;

    invoke-virtual {p1, v4}, Lcom/waze/ifs/ui/ActivityBase;->addActivityResultCallback(Lcom/waze/ifs/ui/ActivityResultCallback;)V

    goto :goto_1

    .line 184
    :cond_7
    invoke-virtual {v3}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v4

    sget-object v5, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    if-eq v4, v5, :cond_8

    invoke-virtual {v3}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v4

    sget-object v5, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    if-ne v4, v5, :cond_0

    .line 186
    :cond_8
    iget-object v4, p0, Lcom/waze/social/facebook/FacebookWrapper;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {p0, v4, v1}, Lcom/waze/social/facebook/FacebookWrapper;->getOldToken(Landroid/app/Activity;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 188
    .local v0, oldToken:Lcom/facebook/AccessToken;
    if-eqz v0, :cond_9

    .line 190
    const-string v4, "FBWrapper"

    const-string v5, "open request from the old token."

    invoke-static {v4, v5}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v3, v0, p2}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    goto :goto_1

    .line 195
    :cond_9
    const-string v4, "FBWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "open request. Publish: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1, p2, v1}, Lcom/waze/social/facebook/FacebookWrapper;->prepareOpenRequest(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/AuthStateListner;Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v2

    .line 197
    .local v2, request:Lcom/facebook/Session$OpenRequest;
    if-eqz p3, :cond_a

    .line 199
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_1

    .line 201
    :cond_a
    if-eqz p4, :cond_b

    .line 203
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_1

    .line 206
    :cond_b
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_1
.end method

.method private prepareOpenRequest(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/AuthStateListner;Ljava/util/List;)Lcom/facebook/Session$OpenRequest;
    .locals 3
    .parameter "activity"
    .parameter "authCb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/waze/ifs/ui/ActivityBase;",
            "Lcom/waze/social/facebook/AuthStateListner;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/Session$OpenRequest;"
        }
    .end annotation

    .prologue
    .line 217
    .local p3, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 218
    .local v0, request:Lcom/facebook/Session$OpenRequest;
    const v2, 0x123456

    invoke-virtual {v0, v2}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    .line 220
    iget-object v2, p0, Lcom/waze/social/facebook/FacebookWrapper;->mActivityResult:Lcom/waze/ifs/ui/ActivityResultCallback;

    invoke-virtual {p1, v2}, Lcom/waze/ifs/ui/ActivityBase;->addActivityResultCallback(Lcom/waze/ifs/ui/ActivityResultCallback;)V

    .line 222
    if-eqz p3, :cond_0

    .line 223
    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 225
    :cond_0
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v1

    .line 226
    .local v1, session:Lcom/facebook/Session;
    if-nez v1, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/waze/social/facebook/FacebookWrapper;->create()Lcom/facebook/Session;

    move-result-object v1

    .line 230
    :cond_1
    if-eqz p2, :cond_2

    .line 231
    invoke-virtual {v1, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 233
    :cond_2
    return-object v0
.end method

.method private preparePermissionsRequest(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/AuthStateListner;Ljava/util/List;)Lcom/facebook/Session$NewPermissionsRequest;
    .locals 2
    .parameter "activity"
    .parameter "authCb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/waze/ifs/ui/ActivityBase;",
            "Lcom/waze/social/facebook/AuthStateListner;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/Session$NewPermissionsRequest;"
        }
    .end annotation

    .prologue
    .line 241
    .local p3, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-direct {v0, p1, p3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 242
    .local v0, request:Lcom/facebook/Session$NewPermissionsRequest;
    const v1, 0x123456

    invoke-virtual {v0, v1}, Lcom/facebook/Session$NewPermissionsRequest;->setRequestCode(I)Lcom/facebook/Session$NewPermissionsRequest;

    .line 244
    iget-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mActivityResult:Lcom/waze/ifs/ui/ActivityResultCallback;

    invoke-virtual {p1, v1}, Lcom/waze/ifs/ui/ActivityBase;->addActivityResultCallback(Lcom/waze/ifs/ui/ActivityResultCallback;)V

    .line 246
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 248
    return-object v0
.end method

.method private reauthorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)V
    .locals 4
    .parameter "activity"
    .parameter "listener"
    .parameter "onAuthAction"

    .prologue
    .line 419
    new-instance v0, Lcom/waze/social/facebook/FacebookWrapper$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/social/facebook/FacebookWrapper$4;-><init>(Lcom/waze/social/facebook/FacebookWrapper;Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)V

    .line 425
    .local v0, onLogout:Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;
    const-string v1, "FBWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reathorizing the facebook session. Action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Requesting activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0, p1, v0}, Lcom/waze/social/facebook/FacebookWrapper;->logout(Landroid/app/Activity;Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;)V

    .line 427
    return-void
.end method

.method private savePermissions()V
    .locals 6

    .prologue
    .line 571
    iget-object v4, p0, Lcom/waze/social/facebook/FacebookWrapper;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/waze/ifs/ui/ActivityBase;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 572
    .local v2, prefs:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissions:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 580
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 581
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "facebookAccessPermissions"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 582
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 577
    .restart local v1       #i:I
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v4, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static session()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method private session(Z)Lcom/facebook/Session;
    .locals 1
    .parameter "create"

    .prologue
    .line 119
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v0

    .line 120
    .local v0, s:Lcom/facebook/Session;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/waze/social/facebook/FacebookWrapper;->create()Lcom/facebook/Session;

    move-result-object v0

    .line 123
    .end local v0           #s:Lcom/facebook/Session;
    :cond_0
    return-object v0
.end method

.method private updateTokenNeeded(Lcom/facebook/Session;Ljava/util/List;)Z
    .locals 2
    .parameter "s"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 516
    .local p2, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v0

    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v0, v1}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/waze/social/facebook/FacebookWrapper;->isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x0

    .line 521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public SignIn(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V
    .locals 5
    .parameter "activity"
    .parameter "listener"
    .parameter "bIsForce"

    .prologue
    const/4 v4, 0x2

    .line 407
    const-string v1, "FBWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SignIn request. Activity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Force: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v0

    .line 409
    .local v0, s:Lcom/facebook/Session;
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    invoke-direct {p0, p1, p2, v4}, Lcom/waze/social/facebook/FacebookWrapper;->reauthorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)V

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-virtual {p0, p1, p2, v4}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)V

    goto :goto_0
.end method

.method protected applyAuthAction(Lcom/facebook/Session;IZI)V
    .locals 4
    .parameter "session"
    .parameter "authAction"
    .parameter "authResult"
    .parameter "state"

    .prologue
    .line 267
    if-nez p4, :cond_1

    .line 269
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_0

    .line 271
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/mywaze/MyWazeNativeManager;->setFacebookToken(Ljava/lang/String;J)V

    .line 273
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-lez v0, :cond_1

    .line 275
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->setSignIn(Ljava/lang/String;)V

    .line 280
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-lez v0, :cond_2

    .line 282
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->authorizePublishCallback(Z)V

    .line 285
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_3

    .line 287
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/waze/mywaze/MyWazeNativeManager;->authorizePublishCallback(Z)V

    .line 291
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/Session;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->facebookDisconnectNow()V

    .line 295
    :cond_4
    return-void
.end method

.method public authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)V
    .locals 2
    .parameter "activity"
    .parameter "listener"
    .parameter "onAuthAction"

    .prologue
    const/4 v1, 0x0

    .line 347
    invoke-static {p2, p3}, Lcom/waze/social/facebook/AuthStateListner;->create(Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)Lcom/waze/social/facebook/AuthStateListner;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/waze/social/facebook/FacebookWrapper;->open(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/AuthStateListner;ZZ)V

    .line 348
    return-void
.end method

.method public authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V
    .locals 5
    .parameter "activity"
    .parameter "listener"
    .parameter "bIsForce"

    .prologue
    const/4 v4, 0x1

    .line 390
    const-string v1, "FBWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authorize request. Activity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Force: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v0

    .line 392
    .local v0, s:Lcom/facebook/Session;
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    invoke-direct {p0, p1, p2, v4}, Lcom/waze/social/facebook/FacebookWrapper;->reauthorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-virtual {p0, p1, p2, v4}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)V

    goto :goto_0
.end method

.method public authorize_publish(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 356
    new-instance v0, Lcom/waze/social/facebook/FacebookWrapper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/social/facebook/FacebookWrapper$2;-><init>(Lcom/waze/social/facebook/FacebookWrapper;Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;)V

    .line 363
    .local v0, authEvent:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPublishPermission:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 364
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-direct {p0, v0, v2, v2}, Lcom/waze/social/facebook/FacebookWrapper;->getFbPermissions(Ljava/lang/Runnable;ZZ)V

    goto :goto_0
.end method

.method public authorize_publish_stream(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 373
    new-instance v0, Lcom/waze/social/facebook/FacebookWrapper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/social/facebook/FacebookWrapper$3;-><init>(Lcom/waze/social/facebook/FacebookWrapper;Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;)V

    .line 380
    .local v0, authEvent:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissionsStream:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 381
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/waze/social/facebook/FacebookWrapper;->getFbPermissions(Ljava/lang/Runnable;ZZ)V

    goto :goto_0
.end method

.method public getExpirationTime()J
    .locals 3

    .prologue
    .line 497
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v0

    .line 498
    .local v0, s:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 501
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 486
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v0

    .line 487
    .local v0, s:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 490
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSessionValid()Z
    .locals 1

    .prologue
    .line 508
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout(Landroid/app/Activity;Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;)V
    .locals 2
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 301
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v0

    .line 302
    .local v0, s:Lcom/facebook/Session;
    if-eqz v0, :cond_1

    .line 304
    invoke-static {p2}, Lcom/waze/social/facebook/LogoutStateListener;->create(Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;)Lcom/waze/social/facebook/LogoutStateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 305
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    if-eqz p2, :cond_0

    .line 309
    invoke-interface {p2}, Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;->onLogoutCompleted()V

    goto :goto_0
.end method

.method public runFqlQuery(Ljava/lang/String;Lcom/facebook/Request$Callback;)V
    .locals 6
    .parameter "query"
    .parameter "callback"

    .prologue
    .line 318
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->session()Lcom/facebook/Session;

    move-result-object v1

    .line 319
    .local v1, s:Lcom/facebook/Session;
    if-eqz v1, :cond_0

    .line 321
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 322
    .local v3, params:Landroid/os/Bundle;
    const-string v2, "q"

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "/fql"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .local v0, request:Lcom/facebook/Request;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v4, 0x0

    .line 324
    aput-object v0, v2, v4

    invoke-static {v2}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 326
    .end local v0           #request:Lcom/facebook/Request;
    .end local v3           #params:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public updatePermissions([Ljava/lang/String;)V
    .locals 1
    .parameter "permissions"

    .prologue
    .line 67
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/social/facebook/FacebookWrapper;->mFbPermissions:Ljava/util/List;

    .line 68
    invoke-direct {p0}, Lcom/waze/social/facebook/FacebookWrapper;->savePermissions()V

    .line 69
    return-void
.end method
