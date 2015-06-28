.class public final Lcom/waze/push/Registrar;
.super Ljava/lang/Object;
.source "Registrar.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# static fields
.field private static mInstance:Lcom/waze/push/Registrar;


# instance fields
.field private mContext:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/push/Registrar;->mInstance:Lcom/waze/push/Registrar;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/push/Registrar;->mContext:Landroid/app/Activity;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/waze/push/Registrar;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/waze/push/Registrar;->mContext:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$1(Lcom/waze/push/Registrar;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/waze/push/Registrar;->getConfig()V

    return-void
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 200
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 201
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Coult not get package name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getConfig()V
    .locals 5

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Display"

    const-string v3, "SettingsNotificationOnOff"

    const-string v4, "yes"

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v1

    invoke-static {}, Lcom/waze/push/Registrar;->instance()Lcom/waze/push/Registrar;

    move-result-object v2

    const-string v3, "SettingsNotification"

    invoke-virtual {v1, v2, v0, v3}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 191
    const-string v0, "com.waze.push"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static instance()Lcom/waze/push/Registrar;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/waze/push/Registrar;->mInstance:Lcom/waze/push/Registrar;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/waze/push/Registrar;

    invoke-direct {v0}, Lcom/waze/push/Registrar;-><init>()V

    sput-object v0, Lcom/waze/push/Registrar;->mInstance:Lcom/waze/push/Registrar;

    .line 47
    :cond_0
    sget-object v0, Lcom/waze/push/Registrar;->mInstance:Lcom/waze/push/Registrar;

    return-object v0
.end method

.method protected static onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "regId"

    .prologue
    .line 142
    invoke-static {}, Lcom/waze/push/Registrar;->instance()Lcom/waze/push/Registrar;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/waze/push/Registrar;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/waze/NativeManager;->setPushToken(Z)V

    .line 144
    return-void
.end method

.method protected static onUnRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "regId"

    .prologue
    .line 148
    invoke-static {}, Lcom/waze/push/Registrar;->instance()Lcom/waze/push/Registrar;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v1, p0, v2}, Lcom/waze/push/Registrar;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, oldRegId:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/waze/NativeManager;->unsetPushToken(Z)V

    .line 150
    const-string v1, "Push Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reg id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is unregistered!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private declared-synchronized setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "regId"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/waze/push/Registrar;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 177
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v4, "regId"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, oldRegistrationId:Ljava/lang/String;
    invoke-static {p1}, Lcom/waze/push/Registrar;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 179
    .local v0, appVersion:I
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 180
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "regId"

    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string v4, "appVersion"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-object v2

    .line 176
    .end local v0           #appVersion:I
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #oldRegistrationId:Ljava/lang/String;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public static start(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    new-instance v0, Lcom/waze/push/Registrar$1;

    invoke-direct {v0, p0, p0}, Lcom/waze/push/Registrar$1;-><init>(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 69
    .local v0, re:Lcom/waze/ifs/async/RunnableExecutor;
    invoke-static {v0}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 70
    return-void
.end method


# virtual methods
.method public declared-synchronized getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v6, -0x8000

    .line 155
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/waze/push/Registrar;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 156
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "regId"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, registrationId:Ljava/lang/String;
    const-string v4, "appVersion"

    const/high16 v5, -0x8000

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 158
    .local v1, oldVersion:I
    invoke-static {p1}, Lcom/waze/push/Registrar;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 160
    .local v0, newVersion:I
    if-eq v1, v6, :cond_0

    if-eq v1, v0, :cond_0

    .line 162
    const-string v4, "Push Service"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "App version changed from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; resetting registration id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v4, ""

    invoke-direct {p0, p1, v4}, Lcom/waze/push/Registrar;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    monitor-exit p0

    return-object v3

    .line 155
    .end local v0           #newVersion:I
    .end local v1           #oldVersion:I
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .end local v3           #registrationId:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public register()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-static {}, Lcom/waze/push/Registrar;->instance()Lcom/waze/push/Registrar;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/push/Registrar;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/waze/push/Registrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, regId:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, regIntent:Landroid/content/Intent;
    const-string v2, "app"

    iget-object v3, p0, Lcom/waze/push/Registrar;->mContext:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v3, v5, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    const-string v2, "sender"

    const-string v3, "1005457359603"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v2, p0, Lcom/waze/push/Registrar;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    .end local v1           #regIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v2, "Push Service"

    const-string v3, "Already registered - skiping the registration process"

    invoke-static {v2, v3}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {v5}, Lcom/waze/NativeManager;->setPushToken(Z)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 119
    invoke-static {}, Lcom/waze/push/Registrar;->instance()Lcom/waze/push/Registrar;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/push/Registrar;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/waze/push/Registrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, regId:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "Push Service"

    const-string v3, "Already unregistered - skiping the unregistration process"

    invoke-static {v2, v3}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {v5}, Lcom/waze/NativeManager;->unsetPushToken(Z)V

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v2, "Push Service"

    const-string v3, "Posting the unregistration process"

    invoke-static {v2, v3}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, regIntent:Landroid/content/Intent;
    const-string v2, "app"

    iget-object v3, p0, Lcom/waze/push/Registrar;->mContext:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v3, v5, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    iget-object v2, p0, Lcom/waze/push/Registrar;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public updateConfigItems(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ConfigItem;

    invoke-virtual {v0}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/waze/push/Registrar;->register()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/waze/push/Registrar;->unregister()V

    goto :goto_0
.end method
