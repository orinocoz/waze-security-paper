.class Lcom/waze/NativeLocListener$GpsStatusListener;
.super Ljava/lang/Object;
.source "NativeLocListener.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeLocListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeLocListener;


# direct methods
.method private constructor <init>(Lcom/waze/NativeLocListener;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/waze/NativeLocListener$GpsStatusListener;->this$0:Lcom/waze/NativeLocListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/NativeLocListener$GpsStatusListener;)Lcom/waze/NativeLocListener;
    .locals 1
    .parameter

    .prologue
    .line 641
    iget-object v0, p0, Lcom/waze/NativeLocListener$GpsStatusListener;->this$0:Lcom/waze/NativeLocListener;

    return-object v0
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 8
    .parameter "aEvent"

    .prologue
    .line 645
    const/4 v3, 0x0

    .line 646
    .local v3, satelliteNumber:I
    packed-switch p1, :pswitch_data_0

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 650
    :pswitch_0
    iget-object v6, p0, Lcom/waze/NativeLocListener$GpsStatusListener;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/waze/NativeLocListener;->access$4(Lcom/waze/NativeLocListener;)Landroid/location/LocationManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v5

    .line 651
    .local v5, status:Landroid/location/GpsStatus;
    invoke-virtual {v5}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 653
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 659
    move v4, v3

    .line 660
    .local v4, satelliteNumberFinal:I
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 661
    .local v1, mgr:Lcom/waze/NativeManager;
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 663
    invoke-virtual {v1}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 665
    iget-object v6, p0, Lcom/waze/NativeLocListener$GpsStatusListener;->this$0:Lcom/waze/NativeLocListener;

    #calls: Lcom/waze/NativeLocListener;->SatteliteListenerCallbackNTV(I)V
    invoke-static {v6, v4}, Lcom/waze/NativeLocListener;->access$5(Lcom/waze/NativeLocListener;I)V

    goto :goto_0

    .line 655
    .end local v1           #mgr:Lcom/waze/NativeManager;
    .end local v4           #satelliteNumberFinal:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 656
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 669
    .restart local v1       #mgr:Lcom/waze/NativeManager;
    .restart local v4       #satelliteNumberFinal:I
    :cond_2
    new-instance v2, Lcom/waze/NativeLocListener$GpsStatusListener$1;

    invoke-direct {v2, p0, v4}, Lcom/waze/NativeLocListener$GpsStatusListener$1;-><init>(Lcom/waze/NativeLocListener$GpsStatusListener;I)V

    .line 674
    .local v2, msg:Ljava/lang/Runnable;
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
