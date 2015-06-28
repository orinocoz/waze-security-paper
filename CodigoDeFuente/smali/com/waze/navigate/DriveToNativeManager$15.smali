.class Lcom/waze/navigate/DriveToNativeManager$15;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getNearbyStations(Lcom/waze/navigate/DriveToNativeManager$NearbyStationsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private nearbyStations:[Lcom/waze/navigate/NearbyStation;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$listener:Lcom/waze/navigate/DriveToNativeManager$NearbyStationsListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$NearbyStationsListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$15;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$15;->val$listener:Lcom/waze/navigate/DriveToNativeManager$NearbyStationsListener;

    .line 614
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$15;->val$listener:Lcom/waze/navigate/DriveToNativeManager$NearbyStationsListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$15;->nearbyStations:[Lcom/waze/navigate/NearbyStation;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$NearbyStationsListener;->onComplete([Lcom/waze/navigate/NearbyStation;)V

    .line 629
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$15;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getNearbyStationsNTV()[Lcom/waze/navigate/NearbyStation;
    invoke-static {v1}, Lcom/waze/navigate/DriveToNativeManager;->access$14(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/navigate/NearbyStation;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$15;->nearbyStations:[Lcom/waze/navigate/NearbyStation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$15;->nearbyStations:[Lcom/waze/navigate/NearbyStation;

    goto :goto_0
.end method
