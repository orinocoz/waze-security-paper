.class Lcom/waze/AppService$EndCallListener;
.super Landroid/telephony/PhoneStateListener;
.source "AppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/AppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/AppService;


# direct methods
.method private constructor <init>(Lcom/waze/AppService;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/waze/AppService$EndCallListener;->this$0:Lcom/waze/AppService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/AppService;Lcom/waze/AppService$EndCallListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/waze/AppService$EndCallListener;-><init>(Lcom/waze/AppService;)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/AppService$EndCallListener;)Lcom/waze/AppService;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/waze/AppService$EndCallListener;->this$0:Lcom/waze/AppService;

    return-object v0
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 188
    const/4 v2, 0x2

    if-ne v2, p1, :cond_0

    .line 189
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 190
    .local v0, nm:Lcom/waze/NativeManager;
    invoke-virtual {v0}, Lcom/waze/NativeManager;->getInitializedStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/waze/NativeManager;->getReturnToWazeFromPhoneTimeoutNTV()I

    move-result v1

    .line 192
    .local v1, timeout:I
    if-ltz v1, :cond_0

    .line 193
    invoke-static {}, Lcom/waze/AppService;->access$2()Lcom/waze/AppService$ServiceMsgDispatcher;

    move-result-object v2

    new-instance v3, Lcom/waze/AppService$EndCallListener$1;

    invoke-direct {v3, p0}, Lcom/waze/AppService$EndCallListener$1;-><init>(Lcom/waze/AppService$EndCallListener;)V

    .line 203
    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    .line 193
    invoke-virtual {v2, v3, v4, v5}, Lcom/waze/AppService$ServiceMsgDispatcher;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    .end local v0           #nm:Lcom/waze/NativeManager;
    .end local v1           #timeout:I
    :cond_0
    return-void
.end method
