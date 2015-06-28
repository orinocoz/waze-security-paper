.class Lcom/waze/ifs/async/UpdateHandlers$TestThis$3;
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
    iput-object p1, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis$3;->this$1:Lcom/waze/ifs/async/UpdateHandlers$TestThis;

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 3
    .parameter "msg"
    .parameter "uptimeMillis"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/waze/ifs/async/UpdateHandlers$TestThis$3;->this$1:Lcom/waze/ifs/async/UpdateHandlers$TestThis;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/ifs/async/UpdateHandlers$TestThis;->test_messagesString:Ljava/lang/String;

    .line 121
    const/4 v0, 0x1

    return v0
.end method
