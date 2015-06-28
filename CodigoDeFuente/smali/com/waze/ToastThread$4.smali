.class Lcom/waze/ToastThread$4;
.super Ljava/lang/Object;
.source "ToastThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ToastThread;->stopToastImmediately()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ToastThread;


# direct methods
.method constructor <init>(Lcom/waze/ToastThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ToastThread$4;->this$0:Lcom/waze/ToastThread;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/waze/ToastThread$4;->this$0:Lcom/waze/ToastThread;

    invoke-virtual {v0}, Lcom/waze/ToastThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 101
    return-void
.end method
