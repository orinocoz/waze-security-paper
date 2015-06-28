.class Lcom/waze/navigate/DriveToNativeManager$80;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->unsetAddressOptionsView()V
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
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$80;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    .line 1794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$80;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->isStopPointSearchNTV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$80;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->unsetStopPointPreviewNTV()V
    invoke-static {v0}, Lcom/waze/navigate/DriveToNativeManager;->access$73(Lcom/waze/navigate/DriveToNativeManager;)V

    .line 1801
    :goto_0
    return-void

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$80;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->unsetAddressOptionsViewNTV()V
    invoke-static {v0}, Lcom/waze/navigate/DriveToNativeManager;->access$74(Lcom/waze/navigate/DriveToNativeManager;)V

    goto :goto_0
.end method
