.class public Lcom/waze/ActivityRecognitionService;
.super Landroid/app/IntentService;
.source "ActivityRecognitionService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognition"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ActivityRecognitionService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private getNameFromType(I)Ljava/lang/String;
    .locals 1
    .parameter "activityType"

    .prologue
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 58
    :pswitch_0
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 44
    :pswitch_1
    const-string v0, "in_vehicle"

    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "Ride"

    goto :goto_0

    .line 48
    :pswitch_3
    const-string v0, "Running"

    goto :goto_0

    .line 50
    :pswitch_4
    const-string v0, "walking"

    goto :goto_0

    .line 52
    :pswitch_5
    const-string v0, "on_foot"

    goto :goto_0

    .line 54
    :pswitch_6
    const-string v0, "still"

    goto :goto_0

    .line 56
    :pswitch_7
    const-string v0, "tilting"

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 23
    const-string v2, "radius"

    const-string v3, "Activity recognitio Service Get data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->hasResult(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v1

    .line 27
    .local v1, result:Lcom/google/android/gms/location/ActivityRecognitionResult;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.ACTIVITY_RECOGNITION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, i:Landroid/content/Intent;
    const-string v2, "Activity"

    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->getMostProbableActivity()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    const-string v2, "Confidence"

    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->getMostProbableActivity()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->getConfidence()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Lcom/waze/ActivityRecognitionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #result:Lcom/google/android/gms/location/ActivityRecognitionResult;
    :cond_0
    return-void
.end method
