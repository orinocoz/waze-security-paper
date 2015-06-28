.class Lcom/waze/reports/EditPlacePointsHolder$1;
.super Ljava/lang/Object;
.source "EditPlacePointsHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlacePointsHolder;->getAllPoints()Lcom/waze/NativeManager$VenueFieldPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 20
    .local v0, instance:Lcom/waze/NativeManager;
    invoke-virtual {v0}, Lcom/waze/NativeManager;->venueProviderGetFieldPoints()Lcom/waze/NativeManager$VenueFieldPoints;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/reports/EditPlacePointsHolder;->access$0(Lcom/waze/NativeManager$VenueFieldPoints;)V

    .line 21
    return-void
.end method
