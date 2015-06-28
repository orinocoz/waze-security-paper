.class Lcom/waze/NativeManager$142;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->AddGeofencing(DDIILcom/waze/messages/QuestionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$expirationTime:I

.field private final synthetic val$lat:D

.field private final synthetic val$lon:D

.field private final synthetic val$question:Lcom/waze/messages/QuestionData;

.field private final synthetic val$radius:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/messages/QuestionData;DDII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$142;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$142;->val$question:Lcom/waze/messages/QuestionData;

    iput-wide p3, p0, Lcom/waze/NativeManager$142;->val$lon:D

    iput-wide p5, p0, Lcom/waze/NativeManager$142;->val$lat:D

    iput p7, p0, Lcom/waze/NativeManager$142;->val$radius:I

    iput p8, p0, Lcom/waze/NativeManager$142;->val$expirationTime:I

    .line 2869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 2875
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v10

    .line 2877
    .local v10, resultCode:I
    if-nez v10, :cond_1

    .line 2878
    invoke-static {}, Lcom/waze/GeoFencingService;->IsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2880
    invoke-static {v2}, Lcom/waze/GeoFencingService;->stop(Z)V

    .line 2882
    :cond_0
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.android.GEO_FENCING"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2883
    .local v9, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2884
    .local v1, proxIntent:Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/waze/NativeManager$142;->val$question:Lcom/waze/messages/QuestionData;

    invoke-static {v0}, Lcom/waze/messages/QuestionData;->SaveQuestionData(Lcom/waze/messages/QuestionData;)V

    .line 2885
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/waze/NativeLocListener;->RemoveProximityAlert(Landroid/app/PendingIntent;)V

    .line 2886
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v0

    iget-wide v2, p0, Lcom/waze/NativeManager$142;->val$lon:D

    iget-wide v4, p0, Lcom/waze/NativeManager$142;->val$lat:D

    iget v6, p0, Lcom/waze/NativeManager$142;->val$radius:I

    int-to-float v6, v6

    iget v7, p0, Lcom/waze/NativeManager$142;->val$expirationTime:I

    int-to-long v7, v7

    invoke-virtual/range {v0 .. v8}, Lcom/waze/NativeLocListener;->SetApproximityAlert(Landroid/app/PendingIntent;DDFJ)V

    .line 2888
    .end local v1           #proxIntent:Landroid/app/PendingIntent;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method
