.class Lcom/waze/inbox/InboxNativeManager$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "InboxNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/inbox/InboxNativeManager;->create()Lcom/waze/inbox/InboxNativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public event()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/waze/inbox/InboxNativeManager;->access$0()Lcom/waze/inbox/InboxNativeManager;

    move-result-object v0

    #calls: Lcom/waze/inbox/InboxNativeManager;->registerDataListenerNTV()V
    invoke-static {v0}, Lcom/waze/inbox/InboxNativeManager;->access$1(Lcom/waze/inbox/InboxNativeManager;)V

    .line 40
    return-void
.end method
