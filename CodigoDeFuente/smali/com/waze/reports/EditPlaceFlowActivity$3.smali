.class Lcom/waze/reports/EditPlaceFlowActivity$3;
.super Ljava/lang/Object;
.source "EditPlaceFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFlowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFlowActivity;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFlowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFlowActivity$3;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$3;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$3;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$0(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFlowActivity$3;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFlowActivity;->access$2(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget v2, v2, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFlowActivity$3;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v3}, Lcom/waze/reports/EditPlaceFlowActivity;->access$2(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v3

    iget v3, v3, Lcom/waze/reports/VenueData;->latitude:I

    invoke-virtual {v1, v2, v3}, Lcom/waze/NativeManager;->getAddressByLocationNTV(II)Lcom/waze/NativeManager$AddressStrings;

    move-result-object v1

    #setter for: Lcom/waze/reports/EditPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;
    invoke-static {v0, v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$3(Lcom/waze/reports/EditPlaceFlowActivity;Lcom/waze/NativeManager$AddressStrings;)V

    .line 329
    return-void
.end method
