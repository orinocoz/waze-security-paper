.class Lcom/waze/social/facebook/AuthStateListner;
.super Ljava/lang/Object;
.source "AuthStateListner.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field private mAuthAction:I

.field private final mFb:Lcom/waze/social/facebook/FacebookWrapper;

.field private mListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mAuthAction:I

    .line 98
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mFb:Lcom/waze/social/facebook/FacebookWrapper;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mAuthAction:I

    .line 98
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mFb:Lcom/waze/social/facebook/FacebookWrapper;

    .line 23
    iput-object p1, p0, Lcom/waze/social/facebook/AuthStateListner;->mListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "onAuthAction"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mAuthAction:I

    .line 98
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mFb:Lcom/waze/social/facebook/FacebookWrapper;

    .line 17
    iput-object p1, p0, Lcom/waze/social/facebook/AuthStateListner;->mListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    .line 18
    iput p2, p0, Lcom/waze/social/facebook/AuthStateListner;->mAuthAction:I

    .line 19
    return-void
.end method

.method private callback(Lcom/facebook/Session;ZI)V
    .locals 2
    .parameter "session"
    .parameter "result"
    .parameter "state"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mFb:Lcom/waze/social/facebook/FacebookWrapper;

    iget v1, p0, Lcom/waze/social/facebook/AuthStateListner;->mAuthAction:I

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/waze/social/facebook/FacebookWrapper;->applyAuthAction(Lcom/facebook/Session;IZI)V

    .line 91
    iget-object v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    invoke-interface {v0, p2, p3}, Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;->onAuthorizeCompleted(ZI)V

    .line 93
    :cond_0
    return-void
.end method

.method public static create()Lcom/waze/social/facebook/AuthStateListner;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/waze/social/facebook/AuthStateListner;

    invoke-direct {v0}, Lcom/waze/social/facebook/AuthStateListner;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;)Lcom/waze/social/facebook/AuthStateListner;
    .locals 1
    .parameter "listener"

    .prologue
    .line 38
    new-instance v0, Lcom/waze/social/facebook/AuthStateListner;

    invoke-direct {v0, p0}, Lcom/waze/social/facebook/AuthStateListner;-><init>(Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;)V

    return-object v0
.end method

.method public static create(Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)Lcom/waze/social/facebook/AuthStateListner;
    .locals 1
    .parameter "listener"
    .parameter "onAuthAction"

    .prologue
    .line 33
    new-instance v0, Lcom/waze/social/facebook/AuthStateListner;

    invoke-direct {v0, p0, p1}, Lcom/waze/social/facebook/AuthStateListner;-><init>(Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;I)V

    return-object v0
.end method


# virtual methods
.method public addAction(I)V
    .locals 1
    .parameter "action"

    .prologue
    .line 85
    iget v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mAuthAction:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mAuthAction:I

    .line 86
    return-void
.end method

.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 5
    .parameter "session"
    .parameter "state"
    .parameter "exception"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const-string v0, "FBWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AuthState callback called with state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-nez p3, :cond_4

    .line 48
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0, p1, v4, v3}, Lcom/waze/social/facebook/AuthStateListner;->callback(Lcom/facebook/Session;ZI)V

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 74
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    :cond_2
    invoke-virtual {p1, p0}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 76
    :cond_3
    return-void

    .line 57
    :cond_4
    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_5

    .line 59
    const/4 v0, 0x3

    invoke-direct {p0, p1, v3, v0}, Lcom/waze/social/facebook/AuthStateListner;->callback(Lcom/facebook/Session;ZI)V

    goto :goto_0

    .line 63
    :cond_5
    invoke-direct {p0, p1, v3, v4}, Lcom/waze/social/facebook/AuthStateListner;->callback(Lcom/facebook/Session;ZI)V

    goto :goto_0
.end method

.method public getListener()Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/waze/social/facebook/AuthStateListner;->mListener:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;

    return-object v0
.end method
