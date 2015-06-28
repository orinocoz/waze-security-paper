.class Lcom/waze/navigate/social/MyShareDriveActivity$6;
.super Ljava/lang/Object;
.source "MyShareDriveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyShareDriveActivity;->addFriend(Lcom/waze/user/PersonBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

.field private final synthetic val$p:Lcom/waze/user/PersonBase;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyShareDriveActivity;Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyShareDriveActivity$6;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    iput-object p2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$6;->val$p:Lcom/waze/user/PersonBase;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity$6;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    const-class v2, Lcom/waze/share/UserDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FriendUserData"

    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$6;->val$p:Lcom/waze/user/PersonBase;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity$6;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 289
    return-void
.end method
