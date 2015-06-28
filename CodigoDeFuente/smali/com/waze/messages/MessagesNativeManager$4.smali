.class Lcom/waze/messages/MessagesNativeManager$4;
.super Ljava/lang/Object;
.source "MessagesNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/messages/MessagesNativeManager;->showPrivateMessageEditor(Lcom/waze/user/UserData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/messages/MessagesNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/messages/MessagesNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/messages/MessagesNativeManager$4;->this$0:Lcom/waze/messages/MessagesNativeManager;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/messages/MessagesNativeManager$4;->this$0:Lcom/waze/messages/MessagesNativeManager;

    #getter for: Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;
    invoke-static {v1}, Lcom/waze/messages/MessagesNativeManager;->access$4(Lcom/waze/messages/MessagesNativeManager;)Lcom/waze/messages/MessagesNativeManager$EditorContext;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/messages/MessagesNativeManager$EditorContext;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    const-class v2, Lcom/waze/messages/UserMessageEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, i:Landroid/content/Intent;
    const-string v1, "Is private message"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const-string v1, "User data"

    iget-object v2, p0, Lcom/waze/messages/MessagesNativeManager$4;->this$0:Lcom/waze/messages/MessagesNativeManager;

    #getter for: Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;
    invoke-static {v2}, Lcom/waze/messages/MessagesNativeManager;->access$4(Lcom/waze/messages/MessagesNativeManager;)Lcom/waze/messages/MessagesNativeManager$EditorContext;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/messages/MessagesNativeManager$EditorContext;->mUser:Lcom/waze/user/UserData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    const-string v1, "On Send Handler"

    iget-object v2, p0, Lcom/waze/messages/MessagesNativeManager$4;->this$0:Lcom/waze/messages/MessagesNativeManager;

    #getter for: Lcom/waze/messages/MessagesNativeManager;->mOnSendHandler:Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;
    invoke-static {v2}, Lcom/waze/messages/MessagesNativeManager;->access$5(Lcom/waze/messages/MessagesNativeManager;)Lcom/waze/messages/MessagesNativeManager$_OnSendHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/waze/messages/MessagesNativeManager$4;->this$0:Lcom/waze/messages/MessagesNativeManager;

    #getter for: Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;
    invoke-static {v1}, Lcom/waze/messages/MessagesNativeManager;->access$4(Lcom/waze/messages/MessagesNativeManager;)Lcom/waze/messages/MessagesNativeManager$EditorContext;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/messages/MessagesNativeManager$EditorContext;->mContext:Lcom/waze/ifs/ui/ActivityBase;

    iget-object v2, p0, Lcom/waze/messages/MessagesNativeManager$4;->this$0:Lcom/waze/messages/MessagesNativeManager;

    #getter for: Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;
    invoke-static {v2}, Lcom/waze/messages/MessagesNativeManager;->access$4(Lcom/waze/messages/MessagesNativeManager;)Lcom/waze/messages/MessagesNativeManager$EditorContext;

    move-result-object v2

    iget v2, v2, Lcom/waze/messages/MessagesNativeManager$EditorContext;->mRqCode:I

    invoke-virtual {v1, v0, v2}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    iget-object v1, p0, Lcom/waze/messages/MessagesNativeManager$4;->this$0:Lcom/waze/messages/MessagesNativeManager;

    const/4 v2, 0x0

    #setter for: Lcom/waze/messages/MessagesNativeManager;->mPendingEditor:Lcom/waze/messages/MessagesNativeManager$EditorContext;
    invoke-static {v1, v2}, Lcom/waze/messages/MessagesNativeManager;->access$6(Lcom/waze/messages/MessagesNativeManager;Lcom/waze/messages/MessagesNativeManager$EditorContext;)V

    .line 114
    return-void
.end method
