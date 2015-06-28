.class public Lcom/waze/push/HandlerService;
.super Landroid/app/IntentService;
.source "HandlerService.java"


# static fields
.field private static final LOCK:Ljava/lang/Object; = null

.field private static final NAME:Ljava/lang/String; = "Push Handler Service"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "Hanlder service wakelock"

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const-class v0, Lcom/waze/push/HandlerService;

    sput-object v0, Lcom/waze/push/HandlerService;->LOCK:Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "Push Handler Service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method static handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    sget-object v2, Lcom/waze/push/HandlerService;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_0
    sget-object v1, Lcom/waze/push/HandlerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 100
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 101
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "Hanlder service wakelock"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/waze/push/HandlerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 96
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    sget-object v1, Lcom/waze/push/HandlerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 105
    const-class v1, Lcom/waze/push/HandlerService;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    return-void

    .line 96
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "alert"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, alert:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "badge"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, badgeStr:Ljava/lang/String;
    if-nez v5, :cond_3

    move v4, v6

    .line 167
    .local v4, badge:I
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "constructionInstructions"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, alertConstruction:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 171
    invoke-static {p1, v2}, Lcom/waze/PushCommands;->ParseConstructionInstructionCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    :cond_0
    const-string v7, "Push Service"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Badge: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "WazeUrl"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, alertActionUrl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, alertType:Ljava/lang/String;
    invoke-static {p1, v0, v1, v3}, Lcom/waze/push/Alerter;->onAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v1           #alertActionUrl:Ljava/lang/String;
    .end local v3           #alertType:Ljava/lang/String;
    :cond_1
    if-eq v4, v6, :cond_2

    .line 186
    invoke-static {p1, v4}, Lcom/waze/push/Alerter;->onBadge(Landroid/content/Context;I)V

    .line 188
    :cond_2
    return-void

    .line 165
    .end local v2           #alertConstruction:Ljava/lang/String;
    .end local v4           #badge:I
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 118
    const-string v3, "registration_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, registrationId:Ljava/lang/String;
    const-string v3, "error"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, error:Ljava/lang/String;
    const-string v3, "unregistered"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, unregistered:Ljava/lang/String;
    const-string v3, "Push Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleRegistration: registrationId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", unregistered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-eqz v1, :cond_1

    .line 126
    invoke-static {p1, v1}, Lcom/waze/push/Registrar;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    if-eqz v2, :cond_0

    .line 133
    invoke-static {p1, v1}, Lcom/waze/push/Registrar;->onUnRegistered(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/waze/push/HandlerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 55
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string v2, "Push Service"

    const-string v3, "GCM Registration message"

    invoke-static {v2, v3}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, v1, p1}, Lcom/waze/push/HandlerService;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    :goto_0
    sget-object v3, Lcom/waze/push/HandlerService;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    :try_start_1
    sget-object v2, Lcom/waze/push/HandlerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_4

    .line 78
    sget-object v2, Lcom/waze/push/HandlerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 75
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 86
    return-void

    .line 61
    :cond_1
    :try_start_2
    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    const-string v2, "Push Service"

    const-string v3, "Got GCM push message !!!"

    invoke-static {v2, v3}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, v1, p1}, Lcom/waze/push/HandlerService;->handleMessage(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 73
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    :catchall_0
    move-exception v2

    .line 75
    sget-object v3, Lcom/waze/push/HandlerService;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    :try_start_3
    sget-object v4, Lcom/waze/push/HandlerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_3

    .line 78
    sget-object v4, Lcom/waze/push/HandlerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 75
    :goto_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    throw v2

    .line 67
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #context:Landroid/content/Context;
    :cond_2
    :try_start_4
    const-string v2, "com.google.android.gcm.intent.RETRY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "Push Service"

    const-string v3, "GCM Retry message"

    invoke-static {v2, v3}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 82
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    :cond_3
    :try_start_5
    const-string v4, "Push Service"

    const-string v5, "Wakelock reference is null"

    invoke-static {v4, v5}, Lcom/waze/Logger;->e_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 75
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 82
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #context:Landroid/content/Context;
    :cond_4
    :try_start_6
    const-string v2, "Push Service"

    const-string v4, "Wakelock reference is null"

    invoke-static {v2, v4}, Lcom/waze/Logger;->e_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
.end method
