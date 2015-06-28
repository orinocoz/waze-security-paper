.class final Lcom/waze/NativeManager$NativeThread;
.super Landroid/os/HandlerThread;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NativeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "aThreadName"

    .prologue
    .line 3544
    iput-object p1, p0, Lcom/waze/NativeManager$NativeThread;->this$0:Lcom/waze/NativeManager;

    .line 3545
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3546
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 3550
    const-string v0, "WAZE"

    const-string v1, "Native thread is running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    iget-object v0, p0, Lcom/waze/NativeManager$NativeThread;->this$0:Lcom/waze/NativeManager;

    new-instance v1, Lcom/waze/NativeManager$UIMsgDispatcher;

    invoke-direct {v1}, Lcom/waze/NativeManager$UIMsgDispatcher;-><init>()V

    #setter for: Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$11(Lcom/waze/NativeManager;Lcom/waze/NativeManager$UIMsgDispatcher;)V

    .line 3556
    iget-object v0, p0, Lcom/waze/NativeManager$NativeThread;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->notifyCreate()V
    invoke-static {v0}, Lcom/waze/NativeManager;->access$12(Lcom/waze/NativeManager;)V

    .line 3562
    invoke-static {}, Lcom/waze/NativeManager;->access$13()Lcom/waze/NativeManager;

    move-result-object v0

    #calls: Lcom/waze/NativeManager;->prepareAppStart()V
    invoke-static {v0}, Lcom/waze/NativeManager;->access$14(Lcom/waze/NativeManager;)V

    .line 3563
    invoke-static {}, Lcom/waze/NativeManager;->access$13()Lcom/waze/NativeManager;

    move-result-object v0

    #getter for: Lcom/waze/NativeManager;->mStartAppEvent:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->access$15(Lcom/waze/NativeManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3564
    return-void
.end method
