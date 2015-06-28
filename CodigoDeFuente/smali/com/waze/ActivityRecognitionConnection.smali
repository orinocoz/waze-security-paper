.class public Lcom/waze/ActivityRecognitionConnection;
.super Ljava/lang/Object;
.source "ActivityRecognitionConnection.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognition"

.field private static callbackIntent:Landroid/app/PendingIntent;

.field private static mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/ActivityRecognitionConnection;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 5
    .parameter "connectionHint"

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/ActivityRecognitionConnection;->context:Landroid/content/Context;

    const-class v2, Lcom/waze/ActivityRecognitionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/ActivityRecognitionConnection;->context:Landroid/content/Context;

    const/4 v2, 0x0

    .line 58
    const/high16 v3, 0x800

    .line 57
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/waze/ActivityRecognitionConnection;->callbackIntent:Landroid/app/PendingIntent;

    .line 59
    const-string v1, "radius"

    const-string v2, " Activity recognitio request updates"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v1, Lcom/waze/ActivityRecognitionConnection;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    const-wide/16 v2, 0x0

    sget-object v4, Lcom/waze/ActivityRecognitionConnection;->callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/location/ActivityRecognitionClient;->requestActivityUpdates(JLandroid/app/PendingIntent;)V

    .line 61
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 48
    const-string v0, "radius"

    const-string v1, "Activity recognitio request failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public startActivityRecognitionConnection(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/waze/ActivityRecognitionConnection;->context:Landroid/content/Context;

    .line 28
    sget-object v0, Lcom/waze/ActivityRecognitionConnection;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionClient;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/location/ActivityRecognitionClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    sput-object v0, Lcom/waze/ActivityRecognitionConnection;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    .line 31
    sget-object v0, Lcom/waze/ActivityRecognitionConnection;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionClient;->connect()V

    .line 32
    const-string v0, "radius"

    const-string v1, " Activity recognitio start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method

.method public stopActivityRecognitionConnection()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    const-string v1, "Radius"

    const-string v2, "Stop updates activity recognition"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v1, Lcom/waze/ActivityRecognitionConnection;->mActivityRecognitionClient:Lcom/google/android/gms/location/ActivityRecognitionClient;

    sget-object v2, Lcom/waze/ActivityRecognitionConnection;->callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/ActivityRecognitionClient;->removeActivityUpdates(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Radius"

    const-string v2, " Exception Stop updates activity recognition"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
