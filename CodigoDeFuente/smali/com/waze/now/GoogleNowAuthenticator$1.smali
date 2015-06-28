.class Lcom/waze/now/GoogleNowAuthenticator$1;
.super Landroid/os/AsyncTask;
.source "GoogleNowAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/now/GoogleNowAuthenticator;->refreshAuthCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/waze/now/GoogleNowAuthenticator$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8
    .parameter "params"

    .prologue
    .line 23
    const-string v1, ""

    .line 26
    .local v1, refresh_token:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/waze/now/GoogleNowAuthenticator;->GetLastRefreshTokenTime()J

    move-result-wide v2

    invoke-static {}, Lcom/waze/now/GoogleNowAuthenticator;->access$0()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 28
    invoke-static {}, Lcom/waze/now/GoogleNowAuthenticator;->SaveLastRefreshTokenTime()V

    .line 29
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "1005457359603-qagqlbukkg3f292jhjglersblhodeuud.apps.googleusercontent.com"

    invoke-static {v2, v3}, Lcom/google/android/now/NowAuthService;->getAuthCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/now/NowAuthService$TooManyRequestsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/now/NowAuthService$DisabledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/now/NowAuthService$UnauthorizedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 45
    :cond_0
    :goto_0
    const-string v2, "NowAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Token recevied "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 35
    .local v0, e:Lcom/google/android/now/NowAuthService$TooManyRequestsException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    .end local v0           #e:Lcom/google/android/now/NowAuthService$TooManyRequestsException;
    :catch_2
    move-exception v0

    .line 37
    .local v0, e:Lcom/google/android/now/NowAuthService$DisabledException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v0           #e:Lcom/google/android/now/NowAuthService$DisabledException;
    :catch_3
    move-exception v0

    .line 39
    .local v0, e:Lcom/google/android/now/NowAuthService$UnauthorizedException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    .end local v0           #e:Lcom/google/android/now/NowAuthService$UnauthorizedException;
    :catch_4
    move-exception v0

    .line 41
    .local v0, e:Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/waze/now/GoogleNowAuthenticator$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/waze/NativeManager;->SendGoogleNowToken(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method
