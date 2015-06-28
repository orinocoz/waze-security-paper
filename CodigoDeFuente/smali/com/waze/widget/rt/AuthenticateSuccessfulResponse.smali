.class public Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;
.super Ljava/lang/Object;
.source "AuthenticateSuccessfulResponse.java"


# instance fields
.field private mCookie:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .parameter "responseStr"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, lines:[Ljava/lang/String;
    aget-object v4, v0, v7

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, params:[Ljava/lang/String;
    aget-object v3, v1, v6

    .line 34
    .local v3, status:Ljava/lang/String;
    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got AuthenticateSuccessful response ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 36
    aget-object v4, v0, v6

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, responseParams:[Ljava/lang/String;
    aget-object v4, v2, v7

    const-string v5, "LoginError"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authenticate failed status ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    .line 48
    .end local v2           #responseParams:[Ljava/lang/String;
    :goto_0
    return-void

    .line 42
    .restart local v2       #responseParams:[Ljava/lang/String;
    :cond_0
    aget-object v4, v2, v6

    iput-object v4, p0, Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;->mSessionId:Ljava/lang/String;

    .line 43
    aget-object v4, v2, v8

    iput-object v4, p0, Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;->mCookie:Ljava/lang/String;

    goto :goto_0

    .line 46
    .end local v2           #responseParams:[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authenticate failed status ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " details="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/widget/WazeAppWidgetLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/waze/widget/rt/AuthenticateSuccessfulResponse;->mSessionId:Ljava/lang/String;

    return-object v0
.end method
