.class public Lcom/waze/StandbyManager;
.super Landroid/content/BroadcastReceiver;
.source "StandbyManager.java"


# static fields
.field private static mInstance:Lcom/waze/StandbyManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/StandbyManager;->mInstance:Lcom/waze/StandbyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)Lcom/waze/StandbyManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    sget-object v1, Lcom/waze/StandbyManager;->mInstance:Lcom/waze/StandbyManager;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/waze/StandbyManager;

    invoke-direct {v1}, Lcom/waze/StandbyManager;-><init>()V

    sput-object v1, Lcom/waze/StandbyManager;->mInstance:Lcom/waze/StandbyManager;

    .line 55
    sget-object v1, Lcom/waze/StandbyManager;->mInstance:Lcom/waze/StandbyManager;

    iput-object p0, v1, Lcom/waze/StandbyManager;->mContext:Landroid/content/Context;

    .line 58
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/waze/StandbyManager;->mInstance:Lcom/waze/StandbyManager;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    sget-object v1, Lcom/waze/StandbyManager;->mInstance:Lcom/waze/StandbyManager;

    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "aContext"
    .parameter "aIntent"

    .prologue
    const/4 v2, 0x1

    .line 20
    invoke-static {}, Lcom/waze/AppService;->IsAppRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, action:Ljava/lang/String;
    const/4 v3, -0x1

    .line 24
    .local v3, screenState:I
    const-string v4, "WAZE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Screen broadcast receiver got action: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    const/4 v3, 0x1

    .line 29
    :cond_0
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 31
    const/4 v3, 0x0

    .line 35
    :cond_1
    if-ltz v3, :cond_2

    .line 37
    if-ne v3, v2, :cond_3

    .line 38
    .local v2, screenOn:Z
    :goto_0
    new-instance v1, Lcom/waze/StandbyManager$1;

    invoke-direct {v1, p0, v2}, Lcom/waze/StandbyManager$1;-><init>(Lcom/waze/StandbyManager;Z)V

    .line 44
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 47
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #r:Ljava/lang/Runnable;
    .end local v2           #screenOn:Z
    .end local v3           #screenState:I
    :cond_2
    return-void

    .line 37
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #screenState:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/waze/StandbyManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/waze/StandbyManager;->mInstance:Lcom/waze/StandbyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    return-void
.end method
