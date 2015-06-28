.class public Lcom/waze/ActionIntent;
.super Landroid/content/BroadcastReceiver;
.source "ActionIntent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "ctx"
    .parameter "pushIntent"

    .prologue
    .line 16
    :try_start_0
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 17
    .local v3, manager:Landroid/app/NotificationManager;
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 18
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .local v2, it:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 23
    const-string v7, "QuestionID"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, questionId:Ljava/lang/String;
    const-string v7, "QuestionType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 25
    .local v5, questionType:Ljava/lang/String;
    const-string v7, "Action"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, action:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 29
    const-string v8, "PUSH_TYPE|ID|ACTION"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 33
    .local v6, statValue:[Ljava/lang/String;
    const-string v7, "INTERNAL_PUSH_CLICKED"

    invoke-static {p1, v7, v6}, Lcom/waze/utils/OfflineStats;->SendStats(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/waze/FreeMapAppActivity;

    invoke-direct {v1, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 40
    const-string v7, "QuestionID"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    :cond_0
    const/high16 v7, 0x1000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #it:Landroid/content/Intent;
    .end local v3           #manager:Landroid/app/NotificationManager;
    .end local v4           #questionId:Ljava/lang/String;
    .end local v5           #questionType:Ljava/lang/String;
    .end local v6           #statValue:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v7

    goto :goto_0
.end method
