.class public Lcom/waze/main/navigate/GeoFencingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GeoFencingReceiver.java"


# static fields
.field public static IsEntered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/main/navigate/GeoFencingReceiver;->IsEntered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    const-string v2, "entering"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 19
    .local v1, getting_closer:Ljava/lang/Boolean;
    const/4 v0, 0x0

    .line 20
    .local v0, Text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    sget-boolean v2, Lcom/waze/main/navigate/GeoFencingReceiver;->IsEntered:Z

    if-nez v2, :cond_0

    .line 24
    const/4 v2, 0x1

    sput-boolean v2, Lcom/waze/main/navigate/GeoFencingReceiver;->IsEntered:Z

    .line 25
    const-string v0, "just entered your radius!"

    .line 34
    const-string v2, "ADS_ENTERED_RADIUS"

    invoke-static {p1, v2}, Lcom/waze/utils/OfflineStats;->SendAdsStats(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lcom/waze/GeoFencingService;->start(Landroid/content/Context;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v2, "ADS_EXITED_RADIUS"

    invoke-static {p1, v2}, Lcom/waze/utils/OfflineStats;->SendAdsStats(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
