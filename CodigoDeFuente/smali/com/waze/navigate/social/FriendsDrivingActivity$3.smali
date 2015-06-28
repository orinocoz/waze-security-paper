.class Lcom/waze/navigate/social/FriendsDrivingActivity$3;
.super Ljava/lang/Object;
.source "FriendsDrivingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/FriendsDrivingActivity;->AddFriend(Lcom/waze/user/FriendUserData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;

.field private final synthetic val$fud:Lcom/waze/user/FriendUserData;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/FriendsDrivingActivity;Lcom/waze/user/FriendUserData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$3;->this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;

    iput-object p2, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$3;->val$fud:Lcom/waze/user/FriendUserData;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$3;->this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;

    const-class v2, Lcom/waze/share/UserDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FriendUserData"

    iget-object v2, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$3;->val$fud:Lcom/waze/user/FriendUserData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/waze/navigate/social/FriendsDrivingActivity$3;->this$0:Lcom/waze/navigate/social/FriendsDrivingActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/waze/navigate/social/FriendsDrivingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 168
    return-void
.end method
