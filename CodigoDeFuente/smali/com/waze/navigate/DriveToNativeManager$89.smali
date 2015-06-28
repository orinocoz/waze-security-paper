.class Lcom/waze/navigate/DriveToNativeManager$89;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->searchNearbyStations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$89;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    .line 1881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$89;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->searchNearbyStationsNTV()V
    invoke-static {v0}, Lcom/waze/navigate/DriveToNativeManager;->access$83(Lcom/waze/navigate/DriveToNativeManager;)V

    .line 1885
    return-void
.end method
