.class Lcom/waze/inbox/InboxActivity$2;
.super Ljava/lang/Object;
.source "InboxActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/inbox/InboxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/inbox/InboxActivity;


# direct methods
.method constructor <init>(Lcom/waze/inbox/InboxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/inbox/InboxActivity$2;->this$0:Lcom/waze/inbox/InboxActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 227
    add-int v0, p2, p3

    .line 228
    .local v0, lastInScreen:I
    if-ne v0, p4, :cond_0

    iget-object v1, p0, Lcom/waze/inbox/InboxActivity$2;->this$0:Lcom/waze/inbox/InboxActivity;

    #getter for: Lcom/waze/inbox/InboxActivity;->mMoreMessages:Z
    invoke-static {v1}, Lcom/waze/inbox/InboxActivity;->access$2(Lcom/waze/inbox/InboxActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity$2;->this$0:Lcom/waze/inbox/InboxActivity;

    #getter for: Lcom/waze/inbox/InboxActivity;->mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;
    invoke-static {v1}, Lcom/waze/inbox/InboxActivity;->access$3(Lcom/waze/inbox/InboxActivity;)Lcom/waze/inbox/InboxMsgListAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/waze/inbox/InboxMsgListAdapter;->setLoading(Z)V

    .line 231
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity$2;->this$0:Lcom/waze/inbox/InboxActivity;

    #calls: Lcom/waze/inbox/InboxActivity;->loadMoreMessages()V
    invoke-static {v1}, Lcom/waze/inbox/InboxActivity;->access$4(Lcom/waze/inbox/InboxActivity;)V

    .line 233
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 223
    return-void
.end method
