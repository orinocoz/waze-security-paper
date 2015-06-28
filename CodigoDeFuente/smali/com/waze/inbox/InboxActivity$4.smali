.class Lcom/waze/inbox/InboxActivity$4;
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
    iput-object p1, p0, Lcom/waze/inbox/InboxActivity$4;->this$0:Lcom/waze/inbox/InboxActivity;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 251
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity$4;->this$0:Lcom/waze/inbox/InboxActivity;

    #calls: Lcom/waze/inbox/InboxActivity;->getSelectedIds()[Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/inbox/InboxActivity;->access$5(Lcom/waze/inbox/InboxActivity;)[Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, ids:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity$4;->this$0:Lcom/waze/inbox/InboxActivity;

    #getter for: Lcom/waze/inbox/InboxActivity;->mInboxNativeManager:Lcom/waze/inbox/InboxNativeManager;
    invoke-static {v1}, Lcom/waze/inbox/InboxActivity;->access$6(Lcom/waze/inbox/InboxActivity;)Lcom/waze/inbox/InboxNativeManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/waze/inbox/InboxNativeManager;->setRead([Ljava/lang/String;Z)V

    .line 255
    iget-object v1, p0, Lcom/waze/inbox/InboxActivity$4;->this$0:Lcom/waze/inbox/InboxActivity;

    #setter for: Lcom/waze/inbox/InboxActivity;->mClearChecked:Z
    invoke-static {v1, v2}, Lcom/waze/inbox/InboxActivity;->access$7(Lcom/waze/inbox/InboxActivity;Z)V

    .line 257
    :cond_0
    return-void
.end method
