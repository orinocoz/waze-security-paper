.class Lcom/waze/ifs/async/UpdateHandlers$TestThis$1;
.super Landroid/os/Handler;
.source "UpdateHandlers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/async/UpdateHandlers$TestThis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/ifs/async/UpdateHandlers$TestThis;


# direct methods
.method constructor <init>(Lcom/waze/ifs/async/UpdateHandlers$TestThis;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis$1;->this$1:Lcom/waze/ifs/async/UpdateHandlers$TestThis;

    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2
    .parameter "msg"
    .parameter "uptimeMillis"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis$1;->this$1:Lcom/waze/ifs/async/UpdateHandlers$TestThis;

    iget v1, v0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_numMessages1:I

    .line 103
    const/4 v0, 0x1

    return v0
.end method
