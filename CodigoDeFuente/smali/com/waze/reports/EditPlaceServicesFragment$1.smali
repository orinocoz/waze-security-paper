.class Lcom/waze/reports/EditPlaceServicesFragment$1;
.super Ljava/lang/Object;
.source "EditPlaceServicesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceServicesFragment;->getServices()Lcom/waze/NativeManager$VenueServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 45
    .local v0, instance:Lcom/waze/NativeManager;
    invoke-virtual {v0}, Lcom/waze/NativeManager;->venueProviderGetServices()Lcom/waze/NativeManager$VenueServices;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/reports/EditPlaceServicesFragment;->access$0(Lcom/waze/NativeManager$VenueServices;)V

    .line 46
    return-void
.end method
