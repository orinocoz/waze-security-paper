.class Lcom/waze/ToastThread$1;
.super Ljava/lang/Object;
.source "ToastThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ToastThread;->stopToast()V
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
    iput-object p1, p0, Lcom/waze/ToastThread$1;->this$0:Lcom/waze/ToastThread;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/waze/ToastThread$1;->this$0:Lcom/waze/ToastThread;

    iget-object v0, v0, Lcom/waze/ToastThread;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/waze/ToastThread$1;->this$0:Lcom/waze/ToastThread;

    invoke-virtual {v0}, Lcom/waze/ToastThread;->cancel()V

    .line 53
    iget-object v0, p0, Lcom/waze/ToastThread$1;->this$0:Lcom/waze/ToastThread;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/waze/ToastThread;->mToast:Landroid/widget/Toast;

    .line 55
    :cond_0
    return-void
.end method
