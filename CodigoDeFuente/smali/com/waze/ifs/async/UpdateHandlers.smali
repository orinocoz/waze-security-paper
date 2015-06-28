.class public Lcom/waze/ifs/async/UpdateHandlers;
.super Ljava/lang/Object;
.source "UpdateHandlers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ifs/async/UpdateHandlers$TestThis;,
        Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;
    }
.end annotation


# instance fields
.field private updateHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/waze/ifs/async/UpdateHandlers;->updateHandlers:Landroid/util/SparseArray;

    .line 17
    return-void
.end method


# virtual methods
.method public sendUpdateMessage(III)V
    .locals 2
    .parameter "id"
    .parameter "res1"
    .parameter "res2"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/waze/ifs/async/UpdateHandlers;->updateHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    .line 74
    .local v0, handler:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;
    :goto_0
    if-nez v0, :cond_0

    .line 78
    return-void

    .line 75
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->sendMessage(III)V

    .line 76
    iget-object v0, v0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->next:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    goto :goto_0
.end method

.method public sendUpdateMessage(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "id"
    .parameter "b"

    .prologue
    .line 65
    iget-object v1, p0, Lcom/waze/ifs/async/UpdateHandlers;->updateHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    .line 66
    .local v0, handler:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;
    :goto_0
    if-nez v0, :cond_0

    .line 70
    return-void

    .line 67
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->sendMessage(ILandroid/os/Bundle;)V

    .line 68
    iget-object v0, v0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->next:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    goto :goto_0
.end method

.method public setUpdateHandler(ILandroid/os/Handler;)V
    .locals 3
    .parameter "id"
    .parameter "h"

    .prologue
    .line 58
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers;->updateHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    .line 59
    .local v0, existing:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;
    new-instance v1, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    invoke-direct {v1, p2}, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;-><init>(Landroid/os/Handler;)V

    .line 60
    .local v1, insert:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;
    iput-object v0, v1, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->next:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    .line 61
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers;->updateHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    return-void
.end method

.method public unsetUpdateHandler(ILandroid/os/Handler;)V
    .locals 4
    .parameter "id"
    .parameter "h"

    .prologue
    .line 81
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers;->updateHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    .line 82
    .local v0, handler:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;
    const/4 v1, 0x0

    .line 83
    .local v1, last:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;
    :goto_0
    if-nez v0, :cond_0

    .line 95
    return-void

    .line 84
    :cond_0
    invoke-virtual {v0, p2}, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->shouldRemove(Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    if-nez v1, :cond_1

    .line 86
    iget-object v2, p0, Lcom/waze/ifs/async/UpdateHandlers;->updateHandlers:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->next:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    :goto_1
    iget-object v0, v0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->next:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    goto :goto_0

    .line 88
    :cond_1
    iget-object v2, v0, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->next:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    iput-object v2, v1, Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;->next:Lcom/waze/ifs/async/UpdateHandlers$UpdateHandler;

    goto :goto_1

    .line 91
    :cond_2
    move-object v1, v0

    goto :goto_1
.end method
