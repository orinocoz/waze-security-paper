.class Lcom/waze/AdsTracking$1;
.super Landroid/os/AsyncTask;
.source "AdsTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/AdsTracking;->getAdsTrackingData()V
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
        "Lcom/waze/AdsTracking$AdsData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/waze/AdsTracking$AdsData;
    .locals 5
    .parameter "params"

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, adInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    const/4 v1, 0x0

    .line 31
    .local v1, data:Lcom/waze/AdsTracking$AdsData;
    :try_start_0
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, id:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 46
    .local v3, isAdsTrackingEnabled:Z
    :goto_1
    new-instance v1, Lcom/waze/AdsTracking$AdsData;

    .end local v1           #data:Lcom/waze/AdsTracking$AdsData;
    invoke-direct {v1, v2, v3}, Lcom/waze/AdsTracking$AdsData;-><init>(Ljava/lang/String;Z)V

    .line 48
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #isAdsTrackingEnabled:Z
    .restart local v1       #data:Lcom/waze/AdsTracking$AdsData;
    :cond_0
    return-object v1

    .line 45
    .restart local v2       #id:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 40
    .end local v2           #id:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 39
    :catch_1
    move-exception v4

    goto :goto_0

    .line 37
    :catch_2
    move-exception v4

    goto :goto_0

    .line 33
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/waze/AdsTracking$1;->doInBackground([Ljava/lang/Void;)Lcom/waze/AdsTracking$AdsData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/waze/AdsTracking$AdsData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 55
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object p1, v0, Lcom/waze/NativeManager;->mAdsData:Lcom/waze/AdsTracking$AdsData;

    .line 57
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/waze/AdsTracking$AdsData;

    invoke-virtual {p0, p1}, Lcom/waze/AdsTracking$1;->onPostExecute(Lcom/waze/AdsTracking$AdsData;)V

    return-void
.end method
