.class Lcom/waze/reports/AddPlaceNewFragment$2$1;
.super Ljava/lang/Object;
.source "AddPlaceNewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/AddPlaceNewFragment$2;->event()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/AddPlaceNewFragment$2;


# direct methods
.method constructor <init>(Lcom/waze/reports/AddPlaceNewFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/AddPlaceNewFragment$2$1;->this$1:Lcom/waze/reports/AddPlaceNewFragment$2;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$2$1;->this$1:Lcom/waze/reports/AddPlaceNewFragment$2;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment$2;->this$0:Lcom/waze/reports/AddPlaceNewFragment;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceNewFragment$2;->access$0(Lcom/waze/reports/AddPlaceNewFragment$2;)Lcom/waze/reports/AddPlaceNewFragment;

    move-result-object v0

    #calls: Lcom/waze/reports/AddPlaceNewFragment;->setAddressOptionsView()V
    invoke-static {v0}, Lcom/waze/reports/AddPlaceNewFragment;->access$0(Lcom/waze/reports/AddPlaceNewFragment;)V

    .line 142
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$2$1;->this$1:Lcom/waze/reports/AddPlaceNewFragment$2;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment$2;->this$0:Lcom/waze/reports/AddPlaceNewFragment;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceNewFragment$2;->access$0(Lcom/waze/reports/AddPlaceNewFragment$2;)Lcom/waze/reports/AddPlaceNewFragment;

    move-result-object v0

    #getter for: Lcom/waze/reports/AddPlaceNewFragment;->mDtNm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceNewFragment;->access$1(Lcom/waze/reports/AddPlaceNewFragment;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment$2$1;->this$1:Lcom/waze/reports/AddPlaceNewFragment$2;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment$2;->this$0:Lcom/waze/reports/AddPlaceNewFragment;
    invoke-static {v1}, Lcom/waze/reports/AddPlaceNewFragment$2;->access$0(Lcom/waze/reports/AddPlaceNewFragment$2;)Lcom/waze/reports/AddPlaceNewFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v1, v1, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment$2$1;->this$1:Lcom/waze/reports/AddPlaceNewFragment$2;

    #getter for: Lcom/waze/reports/AddPlaceNewFragment$2;->this$0:Lcom/waze/reports/AddPlaceNewFragment;
    invoke-static {v2}, Lcom/waze/reports/AddPlaceNewFragment$2;->access$0(Lcom/waze/reports/AddPlaceNewFragment$2;)Lcom/waze/reports/AddPlaceNewFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->latitude:I

    const/16 v3, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    .line 143
    return-void
.end method
