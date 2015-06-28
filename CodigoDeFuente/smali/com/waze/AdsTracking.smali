.class public Lcom/waze/AdsTracking;
.super Ljava/lang/Object;
.source "AdsTracking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/AdsTracking$AdsData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdsTrackingData()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/waze/AdsTracking$1;

    invoke-direct {v0}, Lcom/waze/AdsTracking$1;-><init>()V

    .line 60
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/waze/AdsTracking$AdsData;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method
