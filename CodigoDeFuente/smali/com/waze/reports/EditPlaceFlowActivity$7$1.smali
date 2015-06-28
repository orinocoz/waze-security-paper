.class Lcom/waze/reports/EditPlaceFlowActivity$7$1;
.super Ljava/lang/Object;
.source "EditPlaceFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFlowActivity$7;->onImageRetrieved(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/EditPlaceFlowActivity$7;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFlowActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFlowActivity$7$1;->this$1:Lcom/waze/reports/EditPlaceFlowActivity$7;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$7$1;->this$1:Lcom/waze/reports/EditPlaceFlowActivity$7;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity$7;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity$7;->access$0(Lcom/waze/reports/EditPlaceFlowActivity$7;)Lcom/waze/reports/EditPlaceFlowActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/reports/EditPlaceFlowActivity;->mainFragment:Lcom/waze/reports/EditPlaceFragment;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$7$1;->this$1:Lcom/waze/reports/EditPlaceFlowActivity$7;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity$7;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFlowActivity$7;->access$0(Lcom/waze/reports/EditPlaceFlowActivity$7;)Lcom/waze/reports/EditPlaceFlowActivity;

    move-result-object v1

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$2(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/reports/VenueData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditPlaceFragment;->updatePhotos(Lcom/waze/reports/VenueData;)V

    .line 643
    return-void
.end method
