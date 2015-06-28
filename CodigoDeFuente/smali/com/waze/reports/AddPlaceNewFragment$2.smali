.class Lcom/waze/reports/AddPlaceNewFragment$2;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "AddPlaceNewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/AddPlaceNewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/AddPlaceNewFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/AddPlaceNewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/AddPlaceNewFragment$2;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    .line 127
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/AddPlaceNewFragment$2;)Lcom/waze/reports/AddPlaceNewFragment;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment$2;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    return-object v0
.end method


# virtual methods
.method public event()V
    .locals 4

    .prologue
    .line 131
    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment$2;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    iget-object v2, v2, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->longitude:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment$2;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    iget-object v2, v2, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->latitude:I

    if-nez v2, :cond_1

    .line 132
    :cond_0
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeLocListener;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 133
    .local v0, loc:Landroid/location/Location;
    invoke-static {v0}, Lcom/waze/NativeLocListener;->GetNativeLocation(Landroid/location/Location;)Lcom/waze/NativeLocListener$NativeLocation;

    move-result-object v1

    .line 134
    .local v1, nLoc:Lcom/waze/NativeLocListener$NativeLocation;
    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment$2;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    iget-object v2, v2, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v3, v1, Lcom/waze/NativeLocListener$NativeLocation;->mLongtitude:I

    iput v3, v2, Lcom/waze/reports/VenueData;->longitude:I

    .line 135
    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment$2;->this$0:Lcom/waze/reports/AddPlaceNewFragment;

    iget-object v2, v2, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v3, v1, Lcom/waze/NativeLocListener$NativeLocation;->mLatitude:I

    iput v3, v2, Lcom/waze/reports/VenueData;->latitude:I

    .line 137
    .end local v0           #loc:Landroid/location/Location;
    .end local v1           #nLoc:Lcom/waze/NativeLocListener$NativeLocation;
    :cond_1
    new-instance v2, Lcom/waze/reports/AddPlaceNewFragment$2$1;

    invoke-direct {v2, p0}, Lcom/waze/reports/AddPlaceNewFragment$2$1;-><init>(Lcom/waze/reports/AddPlaceNewFragment$2;)V

    invoke-static {v2}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method
