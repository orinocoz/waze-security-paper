.class Lcom/waze/main/navigate/NavigationResult$22$1;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult$22;->onComplete(Lcom/waze/navigate/social/FriendsListData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/main/navigate/NavigationResult$22;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult$22;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$22$1;->this$1:Lcom/waze/main/navigate/NavigationResult$22;

    .line 1546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1550
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$22$1;->this$1:Lcom/waze/main/navigate/NavigationResult$22;

    #getter for: Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult$22;->access$0(Lcom/waze/main/navigate/NavigationResult$22;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/main/navigate/NavigationResult;->dismissNavigationResultDialogNoAnimation()V

    .line 1552
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$22$1;->this$1:Lcom/waze/main/navigate/NavigationResult$22;

    #getter for: Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult$22;->access$0(Lcom/waze/main/navigate/NavigationResult$22;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v1

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$23(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    const-class v2, Lcom/waze/navigate/social/MyShareDriveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1553
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "meeting"

    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$22$1;->this$1:Lcom/waze/main/navigate/NavigationResult$22;

    #getter for: Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult$22;->access$0(Lcom/waze/main/navigate/NavigationResult$22;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v2

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mMeetingId:Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$27(Lcom/waze/main/navigate/NavigationResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1554
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$22$1;->this$1:Lcom/waze/main/navigate/NavigationResult$22;

    #getter for: Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult$22;->access$0(Lcom/waze/main/navigate/NavigationResult$22;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v1

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$23(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 1555
    return-void
.end method
