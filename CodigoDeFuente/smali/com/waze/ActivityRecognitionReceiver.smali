.class public Lcom/waze/ActivityRecognitionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityRecognitionReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 14
    .local v2, extras:Landroid/os/Bundle;
    const-string v3, "Confidence"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 15
    .local v1, confidence:I
    const-string v3, "Activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 18
    .local v0, activity:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 20
    invoke-static {}, Lcom/waze/GeoFencingService;->IsRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    invoke-static {}, Lcom/waze/GeoFencingService;->CreatePushMessage()V

    .line 25
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/waze/GeoFencingService;->stop(Z)V

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-static {p1}, Lcom/waze/GeoFencingService;->start(Landroid/content/Context;)V

    goto :goto_0
.end method
