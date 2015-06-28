.class Lcom/waze/inbox/InboxNativeManager$7;
.super Ljava/lang/Object;
.source "InboxNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/inbox/InboxNativeManager;->notifyDataListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/inbox/InboxNativeManager;

.field private final synthetic val$badge:I

.field private final synthetic val$list:[Lcom/waze/inbox/InboxMessage;

.field private final synthetic val$more:Z

.field private final synthetic val$unread:I


# direct methods
.method constructor <init>(Lcom/waze/inbox/InboxNativeManager;[Lcom/waze/inbox/InboxMessage;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/inbox/InboxNativeManager$7;->this$0:Lcom/waze/inbox/InboxNativeManager;

    iput-object p2, p0, Lcom/waze/inbox/InboxNativeManager$7;->val$list:[Lcom/waze/inbox/InboxMessage;

    iput p3, p0, Lcom/waze/inbox/InboxNativeManager$7;->val$badge:I

    iput p4, p0, Lcom/waze/inbox/InboxNativeManager$7;->val$unread:I

    iput-boolean p5, p0, Lcom/waze/inbox/InboxNativeManager$7;->val$more:Z

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/waze/inbox/InboxNativeManager$7;->this$0:Lcom/waze/inbox/InboxNativeManager;

    #getter for: Lcom/waze/inbox/InboxNativeManager;->mInboxDataListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/inbox/InboxNativeManager;->access$9(Lcom/waze/inbox/InboxNativeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 187
    return-void

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/waze/inbox/InboxNativeManager$7;->this$0:Lcom/waze/inbox/InboxNativeManager;

    #getter for: Lcom/waze/inbox/InboxNativeManager;->mInboxDataListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/inbox/InboxNativeManager;->access$9(Lcom/waze/inbox/InboxNativeManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/inbox/InboxNativeManager$InboxDataListener;

    .line 185
    .local v1, listener:Lcom/waze/inbox/InboxNativeManager$InboxDataListener;
    iget-object v2, p0, Lcom/waze/inbox/InboxNativeManager$7;->val$list:[Lcom/waze/inbox/InboxMessage;

    iget v3, p0, Lcom/waze/inbox/InboxNativeManager$7;->val$badge:I

    iget v4, p0, Lcom/waze/inbox/InboxNativeManager$7;->val$unread:I

    iget-boolean v5, p0, Lcom/waze/inbox/InboxNativeManager$7;->val$more:Z

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/waze/inbox/InboxNativeManager$InboxDataListener;->onData([Lcom/waze/inbox/InboxMessage;IIZ)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
