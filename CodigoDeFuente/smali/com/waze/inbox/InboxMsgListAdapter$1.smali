.class Lcom/waze/inbox/InboxMsgListAdapter$1;
.super Ljava/lang/Object;
.source "InboxMsgListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/inbox/InboxMsgListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/inbox/InboxMsgListAdapter;


# direct methods
.method constructor <init>(Lcom/waze/inbox/InboxMsgListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/inbox/InboxMsgListAdapter$1;->this$0:Lcom/waze/inbox/InboxMsgListAdapter;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 205
    .local v1, pos:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter$1;->this$0:Lcom/waze/inbox/InboxMsgListAdapter;

    #getter for: Lcom/waze/inbox/InboxMsgListAdapter;->mItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/inbox/InboxMsgListAdapter;->access$0(Lcom/waze/inbox/InboxMsgListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/inbox/InboxMessage;

    iget-object v0, v2, Lcom/waze/inbox/InboxMessage;->id:Ljava/lang/String;

    .line 206
    .local v0, id:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 208
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter$1;->this$0:Lcom/waze/inbox/InboxMsgListAdapter;

    #getter for: Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/inbox/InboxMsgListAdapter;->access$1(Lcom/waze/inbox/InboxMsgListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter$1;->this$0:Lcom/waze/inbox/InboxMsgListAdapter;

    #getter for: Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/inbox/InboxMsgListAdapter;->access$1(Lcom/waze/inbox/InboxMsgListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter$1;->this$0:Lcom/waze/inbox/InboxMsgListAdapter;

    #getter for: Lcom/waze/inbox/InboxMsgListAdapter;->mUserCheckedListener:Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;
    invoke-static {v2}, Lcom/waze/inbox/InboxMsgListAdapter;->access$2(Lcom/waze/inbox/InboxMsgListAdapter;)Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter$1;->this$0:Lcom/waze/inbox/InboxMsgListAdapter;

    #getter for: Lcom/waze/inbox/InboxMsgListAdapter;->mUserCheckedListener:Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;
    invoke-static {v2}, Lcom/waze/inbox/InboxMsgListAdapter;->access$2(Lcom/waze/inbox/InboxMsgListAdapter;)Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lcom/waze/inbox/InboxMsgListAdapter$IOnCheckedListener;->onCheckClicked(IZ)V

    .line 218
    :cond_1
    return-void

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter$1;->this$0:Lcom/waze/inbox/InboxMsgListAdapter;

    #getter for: Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/inbox/InboxMsgListAdapter;->access$1(Lcom/waze/inbox/InboxMsgListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/waze/inbox/InboxMsgListAdapter$1;->this$0:Lcom/waze/inbox/InboxMsgListAdapter;

    #getter for: Lcom/waze/inbox/InboxMsgListAdapter;->mCheckedIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/inbox/InboxMsgListAdapter;->access$1(Lcom/waze/inbox/InboxMsgListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
