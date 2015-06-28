.class public Lcom/waze/AppUUID;
.super Ljava/lang/Object;
.source "AppUUID.java"


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "com.waze.appuid"

.field private static final PREFS_PROPERTY_UUID:Ljava/lang/String; = "UUID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstallationUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 23
    const-class v4, Lcom/waze/AppUUID;

    monitor-enter v4

    :try_start_0
    const-string v3, "com.waze.appuid"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 24
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "UUID"

    const-string v5, ""

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, uuid:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    const-string v3, "AGA DEBUG"

    const-string v5, "Generating UUID"

    invoke-static {v3, v5}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "UUID"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    monitor-exit v4

    return-object v2

    .line 23
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #uuid:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
