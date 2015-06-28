.class Lcom/waze/social/facebook/LogoutStateListener;
.super Ljava/lang/Object;
.source "LogoutStateListener.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field private mFb:Lcom/waze/social/facebook/FacebookWrapper;

.field private mListener:Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/social/facebook/LogoutStateListener;->mListener:Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;

    .line 45
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/social/facebook/LogoutStateListener;->mFb:Lcom/waze/social/facebook/FacebookWrapper;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/social/facebook/LogoutStateListener;->mListener:Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;

    .line 45
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/social/facebook/LogoutStateListener;->mFb:Lcom/waze/social/facebook/FacebookWrapper;

    .line 16
    iput-object p1, p0, Lcom/waze/social/facebook/LogoutStateListener;->mListener:Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;

    .line 17
    return-void
.end method

.method public static create()Lcom/waze/social/facebook/LogoutStateListener;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/waze/social/facebook/LogoutStateListener;

    invoke-direct {v0}, Lcom/waze/social/facebook/LogoutStateListener;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;)Lcom/waze/social/facebook/LogoutStateListener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 26
    new-instance v0, Lcom/waze/social/facebook/LogoutStateListener;

    invoke-direct {v0, p0}, Lcom/waze/social/facebook/LogoutStateListener;-><init>(Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;)V

    return-object v0
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 3
    .parameter "session"
    .parameter "state"
    .parameter "exception"

    .prologue
    .line 32
    const-string v0, "FBWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Logout callback called with state: "

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

    .line 34
    invoke-virtual {p1}, Lcom/facebook/Session;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1, p0}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 38
    iget-object v0, p0, Lcom/waze/social/facebook/LogoutStateListener;->mListener:Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/waze/social/facebook/LogoutStateListener;->mListener:Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;

    invoke-interface {v0}, Lcom/waze/social/facebook/FacebookWrapper$OnLogoutCompletedListener;->onLogoutCompleted()V

    .line 41
    :cond_0
    return-void
.end method
