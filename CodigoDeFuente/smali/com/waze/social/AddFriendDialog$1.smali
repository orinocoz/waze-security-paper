.class Lcom/waze/social/AddFriendDialog$1;
.super Ljava/lang/Object;
.source "AddFriendDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/social/AddFriendDialog;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/social/AddFriendDialog;


# direct methods
.method constructor <init>(Lcom/waze/social/AddFriendDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/social/AddFriendDialog$1;->this$0:Lcom/waze/social/AddFriendDialog;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/waze/social/AddFriendDialog$1;->this$0:Lcom/waze/social/AddFriendDialog;

    #getter for: Lcom/waze/social/AddFriendDialog;->mIAddFriendDialog:Lcom/waze/social/AddFriendDialog$IAddFriendDialog;
    invoke-static {v0}, Lcom/waze/social/AddFriendDialog;->access$0(Lcom/waze/social/AddFriendDialog;)Lcom/waze/social/AddFriendDialog$IAddFriendDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/waze/social/AddFriendDialog$1;->this$0:Lcom/waze/social/AddFriendDialog;

    #getter for: Lcom/waze/social/AddFriendDialog;->mIAddFriendDialog:Lcom/waze/social/AddFriendDialog$IAddFriendDialog;
    invoke-static {v0}, Lcom/waze/social/AddFriendDialog;->access$0(Lcom/waze/social/AddFriendDialog;)Lcom/waze/social/AddFriendDialog$IAddFriendDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/waze/social/AddFriendDialog$IAddFriendDialog;->onSendRequestClicked()V

    .line 107
    :cond_0
    return-void
.end method
