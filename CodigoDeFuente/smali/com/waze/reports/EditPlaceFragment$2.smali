.class Lcom/waze/reports/EditPlaceFragment$2;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "EditPlaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/EditPlaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$2;->this$0:Lcom/waze/reports/EditPlaceFragment;

    .line 176
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 6

    .prologue
    .line 180
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$2;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget v2, v2, Lcom/waze/reports/VenueData;->longitude:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$2;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget v2, v2, Lcom/waze/reports/VenueData;->latitude:I

    if-nez v2, :cond_1

    .line 182
    :cond_0
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeLocListener;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 183
    .local v0, loc:Landroid/location/Location;
    invoke-static {v0}, Lcom/waze/NativeLocListener;->GetNativeLocation(Landroid/location/Location;)Lcom/waze/NativeLocListener$NativeLocation;

    move-result-object v1

    .line 184
    .local v1, nLoc:Lcom/waze/NativeLocListener$NativeLocation;
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$2;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget v3, v1, Lcom/waze/NativeLocListener$NativeLocation;->mLongtitude:I

    iput v3, v2, Lcom/waze/reports/VenueData;->longitude:I

    .line 185
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$2;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget v3, v1, Lcom/waze/NativeLocListener$NativeLocation;->mLatitude:I

    iput v3, v2, Lcom/waze/reports/VenueData;->latitude:I

    .line 187
    .end local v0           #loc:Landroid/location/Location;
    .end local v1           #nLoc:Lcom/waze/NativeLocListener$NativeLocation;
    :cond_1
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$2;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #calls: Lcom/waze/reports/EditPlaceFragment;->setAddressOptionsView()V
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$1(Lcom/waze/reports/EditPlaceFragment;)V

    .line 188
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$2;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$2(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment$2;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v3}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v3

    iget v3, v3, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment$2;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v4}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v4

    iget v4, v4, Lcom/waze/reports/VenueData;->latitude:I

    const/16 v5, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    .line 189
    return-void
.end method
