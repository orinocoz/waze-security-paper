.class public Lcom/waze/referrer/ReferrerTracker;
.super Landroid/content/BroadcastReceiver;
.source "ReferrerTracker.java"


# static fields
.field private static final LOCK:Ljava/lang/Object; = null

.field public static final LOG_TAG:Ljava/lang/String; = "WAZE_REFERRER"

.field private static final REFERRER_COMMAND:Ljava/lang/String; = "Stats,%s,-1,ANALYTICS_EVENT_REFERRER_RECEIVED,2,REFERRER,%s"

.field private static final REFERRER_FIELD:Ljava/lang/String; = "referrer"

.field private static final REFERRER_FILE:Ljava/lang/String; = "referrer"

.field private static final REFERRER_FILE_OLD:Ljava/lang/String; = "referrer.old"

.field private static final REFERRER_NAME_MAX_SIZE:I = 0x1000

.field public static final REFERRER_UNKNOWN:Ljava/lang/String; = "Unknown"

.field private static final SERVICE_NAME:Ljava/lang/String; = "distrib/static"

.field private static final SERVICE_URL_DEFAULT:Ljava/lang/String; = "http://rt.waze.com/rtserver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    const-class v0, Lcom/waze/referrer/ReferrerTracker;

    sput-object v0, Lcom/waze/referrer/ReferrerTracker;->LOCK:Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static __unit_test(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "referrer"

    const-string v2, "AGA_UNIT_TEST_REFERRER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method static synthetic access$0(Lcom/waze/referrer/ReferrerTracker;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/waze/referrer/ReferrerTracker;->send(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-static {p0, p1}, Lcom/waze/referrer/ReferrerTracker;->saveToPrefs(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private extractReferrer(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 124
    .local v1, referrer:Ljava/lang/String;
    :try_start_0
    const-string v2, "referrer"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-direct {p0, v1}, Lcom/waze/referrer/ReferrerTracker;->parseReferrer(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    :cond_0
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "WAZE_REFERRER"

    const-string v3, "Referrer extraction error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCmd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "referrer"

    .prologue
    .line 115
    const-string v1, "Stats,%s,-1,ANALYTICS_EVENT_REFERRER_RECEIVED,2,REFERRER,%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/waze/AppUUID;->getInstallationUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, cmd:Ljava/lang/String;
    return-object v0
.end method

.method private static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 183
    const-string v0, "referrer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getReferrer(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, referrer:Ljava/lang/String;
    sget-object v3, Lcom/waze/referrer/ReferrerTracker;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 143
    :try_start_0
    invoke-static {p0}, Lcom/waze/referrer/ReferrerTracker;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "referrer"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    const-string v2, "WAZE_REFERRER"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading prefs. Referrer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 148
    const/4 v1, 0x0

    .line 139
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    if-nez v1, :cond_1

    .line 157
    const-string v2, "WAZE_REFERRER"

    const-string v3, "Referrer is empty"

    invoke-static {v2, v3}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "WAZE_REFERRER"

    const-string v4, "Failed to read referrer file"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 139
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private getWebService()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GeoConfig.Web-Service Address"

    const-string v3, "http://rt.waze.com/rtserver"

    invoke-static {v2, v3}, Lcom/waze/config/WazePreferences;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "distrib/static"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, service:Ljava/lang/String;
    return-object v0
.end method

.method public static invalidateReferrer(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 59
    :try_start_0
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/waze/referrer/ReferrerTracker;->saveToPrefs(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "WAZE_REFERRER"

    const-string v2, "Failed to invalidate referrer file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private parseReferrer(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "referrer"

    .prologue
    .line 69
    const-string v1, "&"

    const-string v2, "|"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, parsed_referrer:Ljava/lang/String;
    return-object v0
.end method

.method private static saveToPrefs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "referrer"

    .prologue
    .line 164
    sget-object v4, Lcom/waze/referrer/ReferrerTracker;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 168
    :try_start_0
    const-string v3, "WAZE_REFERRER"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Saving to prefs. Referrer: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {p0}, Lcom/waze/referrer/ReferrerTracker;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 170
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "referrer"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 179
    return-void

    .line 174
    :catch_0
    move-exception v1

    .line 176
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "WAZE_REFERRER"

    const-string v5, "Failed to update referrer prefs"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private send(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "referrer"

    .prologue
    const/4 v6, 0x0

    .line 78
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 79
    .local v2, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0}, Lcom/waze/referrer/ReferrerTracker;->getWebService()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 81
    .local v3, httppost:Lorg/apache/http/client/methods/HttpPost;
    const-string v7, "Content-Type"

    const-string v8, "binary/octet-stream"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/waze/referrer/ReferrerTracker;->getCmd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, cmd:Ljava/lang/String;
    new-instance v7, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v7, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 86
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 88
    .local v4, rp:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 89
    .local v5, statusCode:I
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_0

    .line 91
    const-string v7, "WAZE_REFERRER"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Successfully posted refferer stats. Status: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Referrer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v6, 0x1

    .line 104
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #rp:Lorg/apache/http/HttpResponse;
    .end local v5           #statusCode:I
    :goto_0
    return v6

    .line 96
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #rp:Lorg/apache/http/HttpResponse;
    .restart local v5       #statusCode:I
    :cond_0
    const-string v7, "WAZE_REFERRER"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed sending referrer statistics. Status: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #rp:Lorg/apache/http/HttpResponse;
    .end local v5           #statusCode:I
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/io/IOException;
    const-string v7, "WAZE_REFERRER"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "routing request Http post error "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 29
    invoke-direct {p0, p2}, Lcom/waze/referrer/ReferrerTracker;->extractReferrer(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, referrer:Ljava/lang/String;
    const-string v3, "WAZE_REFERRER"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received referrer broadcast for referrer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v3, "invite_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, sInviteId:Ljava/lang/String;
    sput-object v2, Lcom/waze/NativeManager;->mInviteId:Ljava/lang/String;

    .line 53
    .end local v2           #sInviteId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    if-eqz v1, :cond_0

    .line 42
    new-instance v0, Lcom/waze/referrer/ReferrerTracker$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/waze/referrer/ReferrerTracker$1;-><init>(Lcom/waze/referrer/ReferrerTracker;Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .local v0, r:Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
