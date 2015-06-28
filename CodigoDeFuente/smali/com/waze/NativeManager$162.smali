.class Lcom/waze/NativeManager$162;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ShutDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$162;->this$0:Lcom/waze/NativeManager;

    .line 4006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4009
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/waze/NativeManager;->access$94(Z)V

    .line 4011
    const-string v0, "WAZE"

    const-string v1, "Finalizing the application ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    iget-object v0, p0, Lcom/waze/NativeManager$162;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->mTimerManager:Lcom/waze/NativeTimerManager;
    invoke-static {v0}, Lcom/waze/NativeManager;->access$95(Lcom/waze/NativeManager;)Lcom/waze/NativeTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeTimerManager;->ShutDown()V

    .line 4014
    iget-object v0, p0, Lcom/waze/NativeManager$162;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->appLayerShutDown()V
    invoke-static {v0}, Lcom/waze/NativeManager;->access$16(Lcom/waze/NativeManager;)V

    .line 4015
    return-void
.end method
