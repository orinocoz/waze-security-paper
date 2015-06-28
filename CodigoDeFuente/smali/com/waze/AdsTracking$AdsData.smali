.class public Lcom/waze/AdsTracking$AdsData;
.super Ljava/lang/Object;
.source "AdsTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/AdsTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdsData"
.end annotation


# instance fields
.field public bIsTrackingAllowed:Z

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "sToken"
    .parameter "bIsAllowed"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/waze/AdsTracking$AdsData;->token:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/waze/AdsTracking$AdsData;->bIsTrackingAllowed:Z

    .line 19
    return-void
.end method
