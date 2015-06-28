.class Lcom/waze/navigate/social/MyShareDriveActivity$7;
.super Ljava/lang/Object;
.source "MyShareDriveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyShareDriveActivity;->addAddMoreFriends()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyShareDriveActivity$7;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 330
    const-string v1, "SHARE_ADD_FRIENDS_CLICK"

    invoke-static {v1, v2, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity$7;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    const-class v2, Lcom/waze/navigate/social/AddFromActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_WHERE:Ljava/lang/String;

    sget v2, Lcom/waze/navigate/social/AddFromActivity;->INTENT_FROM_SHARE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lcom/waze/navigate/social/MyShareDriveActivity$7;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v0, v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 335
    return-void
.end method
