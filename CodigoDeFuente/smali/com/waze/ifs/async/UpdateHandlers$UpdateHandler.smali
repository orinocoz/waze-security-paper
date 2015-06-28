.class Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;
.super Ljava/lang/Object;
.source "UpdateHandlers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/async/UpdateHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateHandler"
.end annotation


# instance fields
.field final _handler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field next:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->next:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->_handler:Ljava/lang/ref/WeakReference;

    .line 24
    return-void
.end method


# virtual methods
.method public sendMessage(III)V
    .locals 3
    .parameter "id"
    .parameter "res1"
    .parameter "res2"

    .prologue
    .line 38
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->_handler:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->_handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 40
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 42
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    .end local v0           #h:Landroid/os/Handler;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method sendMessage(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "id"
    .parameter "b"

    .prologue
    .line 27
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->_handler:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 28
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->_handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 29
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 31
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    .end local v0           #h:Landroid/os/Handler;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method shouldRemove(Landroid/os/Handler;)Z
    .locals 3
    .parameter "toRemove"

    .prologue
    const/4 v1, 0x1

    .line 48
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->_handler:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->_handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 50
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 51
    if-eq v0, p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method
