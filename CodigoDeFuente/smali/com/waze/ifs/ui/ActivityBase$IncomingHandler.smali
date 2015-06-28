.class Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;
.super Landroid/os/Handler;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/ActivityBase;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;->this$0:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;->this$0:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/waze/ifs/ui/ActivityBase;->myHandleMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
