.class public Lcom/waze/utils/OfflineStats;
.super Ljava/lang/Object;
.source "OfflineStats.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendAdsStats(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "mContext"
    .parameter "sEventName"

    .prologue
    .line 17
    invoke-static {}, Lcom/waze/widget/rt/RealTimeManager;->getInstance()Lcom/waze/widget/rt/RealTimeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/waze/widget/rt/RealTimeManager;->SendAdsStat(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static SendStats(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "mContext"
    .parameter "sEventName"
    .parameter "sValue"

    .prologue
    .line 12
    invoke-static {}, Lcom/waze/widget/rt/RealTimeManager;->getInstance()Lcom/waze/widget/rt/RealTimeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/widget/rt/RealTimeManager;->SendStat(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 13
    return-void
.end method
