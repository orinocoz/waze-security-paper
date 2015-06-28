.class public final Lcom/waze/ConnEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnEventReceiver.java"


# static fields
.field static bIsFirstTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/ConnEventReceiver;->bIsFirstTime:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "aContext"
    .parameter "aIntent"

    .prologue
    const/4 v9, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    const-string v3, "noConnectivity"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 43
    .local v0, connectivity:Ljava/lang/Boolean;
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 46
    .local v2, netInfo:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 94
    :goto_1
    return-void

    .end local v0           #connectivity:Ljava/lang/Boolean;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    move v3, v5

    .line 42
    goto :goto_0

    .line 51
    .restart local v0       #connectivity:Ljava/lang/Boolean;
    .restart local v2       #netInfo:Landroid/net/NetworkInfo;
    :cond_1
    const-string v3, "ConnEventReceiver"

    invoke-static {v3}, Lcom/waze/Logger;->TAG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Received event: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Connectivity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 52
    const-string v7, ". Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 53
    const-string v7, ". State: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 54
    const-string v7, ". Connected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/waze/AppService;->IsAppRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/waze/NativeManager;->SetNetInfo(Landroid/net/NetworkInfo;)V

    .line 60
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 62
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_4

    .line 64
    const-string v3, "NETWORK_STATE"

    const-string v6, "MODE|MCC|MNC"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CELL|"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 65
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-static {v3, v6, v7}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_2
    :goto_2
    invoke-static {}, Lcom/waze/AppService;->IsAppRunning()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/waze/ConnEventReceiver;->bIsFirstTime:Z

    if-nez v3, :cond_7

    .line 82
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 84
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v9, :cond_7

    .line 87
    :cond_3
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 88
    .local v1, mgr:Lcom/waze/NativeManager;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/waze/NativeManager;->ConnectivityChanged(ZILjava/lang/String;)V

    goto/16 :goto_1

    .line 67
    .end local v1           #mgr:Lcom/waze/NativeManager;
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 69
    const-string v3, "NETWORK_STATE"

    const-string v6, "MODE|MCC|MNC"

    const-string v7, "WIFI||"

    invoke-static {v3, v6, v7}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 71
    :cond_5
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v9, :cond_2

    .line 73
    const-string v3, "NETWORK_STATE"

    const-string v6, "MODE|MCC|MNC"

    const-string v7, "WIMAX||"

    invoke-static {v3, v6, v7}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 78
    :cond_6
    const-string v3, "NETWORK_STATE"

    const-string v6, "MODE|MCC|MNC"

    const-string v7, "NA||"

    invoke-static {v3, v6, v7}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 92
    :cond_7
    sput-boolean v4, Lcom/waze/ConnEventReceiver;->bIsFirstTime:Z

    goto/16 :goto_1
.end method
