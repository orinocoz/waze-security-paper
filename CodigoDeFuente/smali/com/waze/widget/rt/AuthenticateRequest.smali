.class public Lcom/waze/widget/rt/AuthenticateRequest;
.super Ljava/lang/Object;
.source "AuthenticateRequest.java"


# instance fields
.field private mPassword:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "userName"
    .parameter "passWord"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/waze/widget/rt/AuthenticateRequest;->mUserName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/waze/widget/rt/AuthenticateRequest;->mPassword:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method buildCmd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authenticate,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/waze/widget/rt/RealTimeManager;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/widget/rt/AuthenticateRequest;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/widget/rt/AuthenticateRequest;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, cmd:Ljava/lang/String;
    return-object v0
.end method
