.class public Lcom/waze/SessionTrafficStats;
.super Ljava/lang/Object;
.source "SessionTrafficStats.java"


# static fields
.field private static final LAST_SESSION_RX:Ljava/lang/String; = "LAST_SESSION_RX"

.field private static final LAST_SESSION_TX:Ljava/lang/String; = "LAST_SESSION_TX"

.field private static final LAST_SYSTEM_BOOT_TIME:Ljava/lang/String; = "LAST_SYSTEM_BOOT_TIME"

.field private static final PREF_NAME:Ljava/lang/String; = "SessionTrafficStats"


# instance fields
.field private mLastSessionRx:J

.field private mLastSessionTx:J

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mThisBootTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "ctx"

    .prologue
    const-wide/16 v6, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide v6, p0, Lcom/waze/SessionTrafficStats;->mLastSessionTx:J

    .line 18
    iput-wide v6, p0, Lcom/waze/SessionTrafficStats;->mLastSessionRx:J

    .line 23
    const-string v2, "SessionTrafficStats"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/SessionTrafficStats;->mPrefs:Landroid/content/SharedPreferences;

    .line 24
    iget-object v2, p0, Lcom/waze/SessionTrafficStats;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "LAST_SYSTEM_BOOT_TIME"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 25
    .local v0, lastBootTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/waze/SessionTrafficStats;->mThisBootTime:J

    .line 27
    iget-wide v2, p0, Lcom/waze/SessionTrafficStats;->mThisBootTime:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/waze/SessionTrafficStats;->sortOfEquals(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    iget-object v2, p0, Lcom/waze/SessionTrafficStats;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "LAST_SESSION_TX"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/waze/SessionTrafficStats;->mLastSessionTx:J

    .line 29
    iget-object v2, p0, Lcom/waze/SessionTrafficStats;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "LAST_SESSION_RX"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/waze/SessionTrafficStats;->mLastSessionRx:J

    .line 31
    :cond_0
    return-void
.end method

.method private sortOfEquals(JJ)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    sub-long v0, p1, p3

    .line 35
    .local v0, diff:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 36
    const-wide/16 v4, 0x64

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    const-wide/16 v4, -0x64

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public endSession()V
    .locals 10

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 43
    .local v2, recived:J
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 45
    .local v4, send:J
    iget-object v6, p0, Lcom/waze/SessionTrafficStats;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "LAST_SYSTEM_BOOT_TIME"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    add-long v6, v2, v4

    iget-wide v8, p0, Lcom/waze/SessionTrafficStats;->mLastSessionRx:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/waze/SessionTrafficStats;->mLastSessionTx:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    long-to-int v0, v6

    .line 47
    .local v0, consumed:I
    const-string v6, "DATA_CONSUMPTION"

    const-string v7, "KB"

    invoke-static {v6, v7, v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    .end local v0           #consumed:I
    :cond_0
    iget-object v6, p0, Lcom/waze/SessionTrafficStats;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 51
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v6, "LAST_SYSTEM_BOOT_TIME"

    iget-wide v7, p0, Lcom/waze/SessionTrafficStats;->mThisBootTime:J

    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 52
    const-string v6, "LAST_SESSION_TX"

    invoke-interface {v1, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v6, "LAST_SESSION_RX"

    invoke-interface {v1, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method
