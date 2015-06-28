.class Lcom/waze/inbox/InboxNativeManager$5;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "InboxNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/inbox/InboxNativeManager;->getInboxCounters(Lcom/waze/inbox/InboxNativeManager$InboxCountersHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mBadge:I

.field mTotal:I

.field mUnread:I

.field final synthetic this$0:Lcom/waze/inbox/InboxNativeManager;

.field private final synthetic val$dataHandler:Lcom/waze/inbox/InboxNativeManager$InboxCountersHandler;


# direct methods
.method constructor <init>(Lcom/waze/inbox/InboxNativeManager;Lcom/waze/inbox/InboxNativeManager$InboxCountersHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/inbox/InboxNativeManager$5;->this$0:Lcom/waze/inbox/InboxNativeManager;

    iput-object p2, p0, Lcom/waze/inbox/InboxNativeManager$5;->val$dataHandler:Lcom/waze/inbox/InboxNativeManager$InboxCountersHandler;

    .line 104
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager$5;->val$dataHandler:Lcom/waze/inbox/InboxNativeManager$InboxCountersHandler;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager$5;->val$dataHandler:Lcom/waze/inbox/InboxNativeManager$InboxCountersHandler;

    iget v1, p0, Lcom/waze/inbox/InboxNativeManager$5;->mBadge:I

    iget v2, p0, Lcom/waze/inbox/InboxNativeManager$5;->mUnread:I

    iget v3, p0, Lcom/waze/inbox/InboxNativeManager$5;->mTotal:I

    invoke-interface {v0, v1, v2, v3}, Lcom/waze/inbox/InboxNativeManager$InboxCountersHandler;->onCounters(III)V

    .line 120
    :cond_0
    return-void
.end method

.method public event()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager$5;->this$0:Lcom/waze/inbox/InboxNativeManager;

    #calls: Lcom/waze/inbox/InboxNativeManager;->getInboxUnreadNTV()I
    invoke-static {v0}, Lcom/waze/inbox/InboxNativeManager;->access$5(Lcom/waze/inbox/InboxNativeManager;)I

    move-result v0

    iput v0, p0, Lcom/waze/inbox/InboxNativeManager$5;->mUnread:I

    .line 112
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager$5;->this$0:Lcom/waze/inbox/InboxNativeManager;

    #calls: Lcom/waze/inbox/InboxNativeManager;->getInboxSizeNTV()I
    invoke-static {v0}, Lcom/waze/inbox/InboxNativeManager;->access$6(Lcom/waze/inbox/InboxNativeManager;)I

    move-result v0

    iput v0, p0, Lcom/waze/inbox/InboxNativeManager$5;->mTotal:I

    .line 113
    iget-object v0, p0, Lcom/waze/inbox/InboxNativeManager$5;->this$0:Lcom/waze/inbox/InboxNativeManager;

    #calls: Lcom/waze/inbox/InboxNativeManager;->getInboxBadgeNTV()I
    invoke-static {v0}, Lcom/waze/inbox/InboxNativeManager;->access$7(Lcom/waze/inbox/InboxNativeManager;)I

    move-result v0

    iput v0, p0, Lcom/waze/inbox/InboxNativeManager$5;->mBadge:I

    .line 114
    return-void
.end method
