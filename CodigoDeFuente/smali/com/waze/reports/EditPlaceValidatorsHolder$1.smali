.class Lcom/waze/reports/EditPlaceValidatorsHolder$1;
.super Ljava/lang/Object;
.source "EditPlaceValidatorsHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceValidatorsHolder;->getAllValidators()Lcom/waze/NativeManager$VenueFieldValidators;
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
    invoke-virtual {v0}, Lcom/waze/NativeManager;->venueProviderGetFieldValidators()Lcom/waze/NativeManager$VenueFieldValidators;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/reports/EditPlaceValidatorsHolder;->access$0(Lcom/waze/NativeManager$VenueFieldValidators;)V

    .line 21
    return-void
.end method
