.class Lcom/waze/inbox/InboxActivity$1;
.super Ljava/lang/Object;
.source "InboxActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/inbox/InboxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/inbox/InboxActivity;


# direct methods
.method constructor <init>(Lcom/waze/inbox/InboxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/inbox/InboxActivity$1;->this$0:Lcom/waze/inbox/InboxActivity;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 203
    invoke-static {}, Lcom/waze/inbox/InboxNativeManager;->getInstance()Lcom/waze/inbox/InboxNativeManager;

    move-result-object v2

    .line 204
    .local v2, nm:Lcom/waze/inbox/InboxNativeManager;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/waze/inbox/InboxMsgListAdapter;

    .line 205
    .local v0, adapter:Lcom/waze/inbox/InboxMsgListAdapter;
    iget-object v4, p0, Lcom/waze/inbox/InboxActivity$1;->this$0:Lcom/waze/inbox/InboxActivity;

    invoke-virtual {v0, p3}, Lcom/waze/inbox/InboxMsgListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/inbox/InboxMessage;

    #setter for: Lcom/waze/inbox/InboxActivity;->mSelectedItem:Lcom/waze/inbox/InboxMessage;
    invoke-static {v4, v3}, Lcom/waze/inbox/InboxActivity;->access$0(Lcom/waze/inbox/InboxActivity;Lcom/waze/inbox/InboxMessage;)V

    .line 206
    const-string v3, "INBOX_TITLE_CLICKED"

    .line 207
    const-string v4, "MESSAGE_ID"

    iget-object v5, p0, Lcom/waze/inbox/InboxActivity$1;->this$0:Lcom/waze/inbox/InboxActivity;

    #getter for: Lcom/waze/inbox/InboxActivity;->mSelectedItem:Lcom/waze/inbox/InboxMessage;
    invoke-static {v5}, Lcom/waze/inbox/InboxActivity;->access$1(Lcom/waze/inbox/InboxActivity;)Lcom/waze/inbox/InboxMessage;

    move-result-object v5

    iget-object v5, v5, Lcom/waze/inbox/InboxMessage;->id:Ljava/lang/String;

    .line 206
    invoke-static {v3, v4, v5}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lcom/waze/inbox/InboxActivity$1;->this$0:Lcom/waze/inbox/InboxActivity;

    #getter for: Lcom/waze/inbox/InboxActivity;->mSelectedItem:Lcom/waze/inbox/InboxMessage;
    invoke-static {v3}, Lcom/waze/inbox/InboxActivity;->access$1(Lcom/waze/inbox/InboxActivity;)Lcom/waze/inbox/InboxMessage;

    move-result-object v3

    iget-boolean v3, v3, Lcom/waze/inbox/InboxMessage;->unread:Z

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/waze/inbox/InboxActivity$1;->this$0:Lcom/waze/inbox/InboxActivity;

    #getter for: Lcom/waze/inbox/InboxActivity;->mSelectedItem:Lcom/waze/inbox/InboxMessage;
    invoke-static {v3}, Lcom/waze/inbox/InboxActivity;->access$1(Lcom/waze/inbox/InboxActivity;)Lcom/waze/inbox/InboxMessage;

    move-result-object v3

    iput-boolean v6, v3, Lcom/waze/inbox/InboxMessage;->unread:Z

    .line 213
    new-array v1, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/inbox/InboxActivity$1;->this$0:Lcom/waze/inbox/InboxActivity;

    #getter for: Lcom/waze/inbox/InboxActivity;->mSelectedItem:Lcom/waze/inbox/InboxMessage;
    invoke-static {v3}, Lcom/waze/inbox/InboxActivity;->access$1(Lcom/waze/inbox/InboxActivity;)Lcom/waze/inbox/InboxMessage;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/inbox/InboxMessage;->id:Ljava/lang/String;

    aput-object v3, v1, v6

    .line 214
    .local v1, ids:[Ljava/lang/String;
    invoke-virtual {v2, v1, v7}, Lcom/waze/inbox/InboxNativeManager;->setRead([Ljava/lang/String;Z)V

    .line 215
    invoke-virtual {v0}, Lcom/waze/inbox/InboxMsgListAdapter;->notifyDataSetChanged()V

    .line 217
    .end local v1           #ids:[Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/waze/inbox/InboxActivity$1;->this$0:Lcom/waze/inbox/InboxActivity;

    iget-object v4, p0, Lcom/waze/inbox/InboxActivity$1;->this$0:Lcom/waze/inbox/InboxActivity;

    #getter for: Lcom/waze/inbox/InboxActivity;->mSelectedItem:Lcom/waze/inbox/InboxMessage;
    invoke-static {v4}, Lcom/waze/inbox/InboxActivity;->access$1(Lcom/waze/inbox/InboxActivity;)Lcom/waze/inbox/InboxMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/waze/inbox/InboxPreviewActivity;->Start(Landroid/app/Activity;Lcom/waze/inbox/InboxMessage;Ljava/lang/Boolean;)V

    .line 218
    return-void
.end method
