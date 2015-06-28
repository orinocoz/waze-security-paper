.class public Lcom/waze/now/GoogleNowAuthenticator;
.super Ljava/lang/Object;
.source "GoogleNowAuthenticator.java"


# static fields
.field private static TIME_TO_REFRESH:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide/32 v0, 0x15180

    sput-wide v0, Lcom/waze/now/GoogleNowAuthenticator;->TIME_TO_REFRESH:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetLastRefreshTokenTime()J
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    const-string v2, "com.waze.Now"

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "refresh_token"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static SaveLastRefreshTokenTime()V
    .locals 7

    .prologue
    .line 73
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    const-string v2, "com.waze.Now"

    const/4 v3, 0x0

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    return-void
.end method

.method static synthetic access$0()J
    .locals 2

    .prologue
    .line 17
    sget-wide v0, Lcom/waze/now/GoogleNowAuthenticator;->TIME_TO_REFRESH:J

    return-wide v0
.end method

.method public static refreshAuthCode()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/waze/now/GoogleNowAuthenticator$1;

    invoke-direct {v0}, Lcom/waze/now/GoogleNowAuthenticator$1;-><init>()V

    .line 59
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-void
.end method
