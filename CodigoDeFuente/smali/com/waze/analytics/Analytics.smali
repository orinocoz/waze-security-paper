.class public final Lcom/waze/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adsContextClear()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 104
    .local v0, nm:Lcom/waze/NativeManager;
    new-instance v1, Lcom/waze/analytics/Analytics$2;

    invoke-direct {v1, v0}, Lcom/waze/analytics/Analytics$2;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public static adsContextNavigationInit()V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 117
    .local v0, nm:Lcom/waze/NativeManager;
    new-instance v1, Lcom/waze/analytics/Analytics$3;

    invoke-direct {v1, v0}, Lcom/waze/analytics/Analytics$3;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public static flush()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 39
    .local v0, nm:Lcom/waze/NativeManager;
    invoke-virtual {v0}, Lcom/waze/NativeManager;->logAnalyticsFlush()V

    .line 40
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 77
    .local v0, nm:Lcom/waze/NativeManager;
    invoke-virtual {v0, p0, v1, v1}, Lcom/waze/NativeManager;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "event"
    .parameter "infoName"
    .parameter "infoVal"

    .prologue
    .line 51
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 52
    .local v0, nm:Lcom/waze/NativeManager;
    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/NativeManager;->logAnalytics(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "event"
    .parameter "infoName"
    .parameter "infoVal"

    .prologue
    .line 64
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 65
    .local v0, nm:Lcom/waze/NativeManager;
    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/NativeManager;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static log(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "event"
    .parameter "beforeLogin"
    .parameter "flush"

    .prologue
    .line 27
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 28
    .local v0, nm:Lcom/waze/NativeManager;
    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/NativeManager;->logAnalytics(Ljava/lang/String;ZZ)V

    .line 29
    return-void
.end method

.method public static logAdsContext(Ljava/lang/String;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 88
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 89
    .local v0, nm:Lcom/waze/NativeManager;
    new-instance v1, Lcom/waze/analytics/Analytics$1;

    invoke-direct {v1, v0, p0}, Lcom/waze/analytics/Analytics$1;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public static logAdsContextNav(Ljava/lang/String;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 132
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 133
    .local v0, nm:Lcom/waze/NativeManager;
    new-instance v1, Lcom/waze/analytics/Analytics$4;

    invoke-direct {v1, v0, p0}, Lcom/waze/analytics/Analytics$4;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method
