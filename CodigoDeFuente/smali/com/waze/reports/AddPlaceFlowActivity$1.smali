.class Lcom/waze/reports/AddPlaceFlowActivity$1;
.super Ljava/lang/Object;
.source "AddPlaceFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/AddPlaceFlowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/AddPlaceFlowActivity;


# direct methods
.method constructor <init>(Lcom/waze/reports/AddPlaceFlowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/AddPlaceFlowActivity$1;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity$1;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity$1;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    #getter for: Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/reports/AddPlaceFlowActivity;->access$0(Lcom/waze/reports/AddPlaceFlowActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/reports/AddPlaceFlowActivity$1;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    #getter for: Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/AddPlaceFlowActivity;->access$1(Lcom/waze/reports/AddPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget v2, v2, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v3, p0, Lcom/waze/reports/AddPlaceFlowActivity$1;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    #getter for: Lcom/waze/reports/AddPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v3}, Lcom/waze/reports/AddPlaceFlowActivity;->access$1(Lcom/waze/reports/AddPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v3

    iget v3, v3, Lcom/waze/reports/VenueData;->latitude:I

    invoke-virtual {v1, v2, v3}, Lcom/waze/NativeManager;->getAddressByLocationNTV(II)Lcom/waze/NativeManager$AddressStrings;

    move-result-object v1

    #setter for: Lcom/waze/reports/AddPlaceFlowActivity;->mAddressStrings:Lcom/waze/NativeManager$AddressStrings;
    invoke-static {v0, v1}, Lcom/waze/reports/AddPlaceFlowActivity;->access$2(Lcom/waze/reports/AddPlaceFlowActivity;Lcom/waze/NativeManager$AddressStrings;)V

    .line 127
    return-void
.end method
