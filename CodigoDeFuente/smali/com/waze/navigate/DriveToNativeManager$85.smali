.class Lcom/waze/navigate/DriveToNativeManager$85;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->cancelStopPointAndRemoveDeparturePoi()V
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
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$85;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    .line 1842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$85;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    const/4 v1, 0x0

    #calls: Lcom/waze/navigate/DriveToNativeManager;->setStopPointNTV(Z)V
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$79(Lcom/waze/navigate/DriveToNativeManager;Z)V

    .line 1846
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$85;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->removeDeparturePoiNTV()V
    invoke-static {v0}, Lcom/waze/navigate/DriveToNativeManager;->access$80(Lcom/waze/navigate/DriveToNativeManager;)V

    .line 1847
    return-void
.end method
