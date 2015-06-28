.class Lcom/waze/view/bottom/BottomNotification$12;
.super Ljava/lang/Object;
.source "BottomNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/bottom/BottomNotification;->closeBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/bottom/BottomNotification;


# direct methods
.method constructor <init>(Lcom/waze/view/bottom/BottomNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/bottom/BottomNotification$12;->this$0:Lcom/waze/view/bottom/BottomNotification;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 353
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timeout for bottom notification. ref count is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/waze/view/bottom/BottomNotification$12;->this$0:Lcom/waze/view/bottom/BottomNotification;

    #getter for: Lcom/waze/view/bottom/BottomNotification;->refCount:I
    invoke-static {v2}, Lcom/waze/view/bottom/BottomNotification;->access$4(Lcom/waze/view/bottom/BottomNotification;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification$12;->this$0:Lcom/waze/view/bottom/BottomNotification;

    #getter for: Lcom/waze/view/bottom/BottomNotification;->refCount:I
    invoke-static {v0}, Lcom/waze/view/bottom/BottomNotification;->access$4(Lcom/waze/view/bottom/BottomNotification;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/waze/view/bottom/BottomNotification;->refCount:I
    invoke-static {v0, v1}, Lcom/waze/view/bottom/BottomNotification;->access$5(Lcom/waze/view/bottom/BottomNotification;I)V

    if-nez v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification$12;->this$0:Lcom/waze/view/bottom/BottomNotification;

    #calls: Lcom/waze/view/bottom/BottomNotification;->close()V
    invoke-static {v0}, Lcom/waze/view/bottom/BottomNotification;->access$1(Lcom/waze/view/bottom/BottomNotification;)V

    .line 358
    :cond_0
    return-void
.end method
