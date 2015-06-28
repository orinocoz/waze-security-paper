.class Lcom/waze/inbox/InboxActivity$5;
.super Ljava/lang/Object;
.source "InboxActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/inbox/InboxActivity$5;->this$0:Lcom/waze/inbox/InboxActivity;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity$5;->this$0:Lcom/waze/inbox/InboxActivity;

    #getter for: Lcom/waze/inbox/InboxActivity;->mBtnAllIsAll:Z
    invoke-static {v0}, Lcom/waze/inbox/InboxActivity;->access$8(Lcom/waze/inbox/InboxActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity$5;->this$0:Lcom/waze/inbox/InboxActivity;

    #getter for: Lcom/waze/inbox/InboxActivity;->mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;
    invoke-static {v0}, Lcom/waze/inbox/InboxActivity;->access$3(Lcom/waze/inbox/InboxActivity;)Lcom/waze/inbox/InboxMsgListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/inbox/InboxMsgListAdapter;->checkAll()V

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/waze/inbox/InboxActivity$5;->this$0:Lcom/waze/inbox/InboxActivity;

    #getter for: Lcom/waze/inbox/InboxActivity;->mListAdpater:Lcom/waze/inbox/InboxMsgListAdapter;
    invoke-static {v0}, Lcom/waze/inbox/InboxActivity;->access$3(Lcom/waze/inbox/InboxActivity;)Lcom/waze/inbox/InboxMsgListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/inbox/InboxMsgListAdapter;->clearChecked()V

    goto :goto_0
.end method
