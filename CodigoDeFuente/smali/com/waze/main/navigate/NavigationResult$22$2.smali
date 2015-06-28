.class Lcom/waze/main/navigate/NavigationResult$22$2;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$22$2;->this$1:Lcom/waze/main/navigate/NavigationResult$22;

    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$22$2;->this$1:Lcom/waze/main/navigate/NavigationResult$22;

    #getter for: Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult$22;->access$0(Lcom/waze/main/navigate/NavigationResult$22;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v0

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0904ad

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1582
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1583
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$22$2;->this$1:Lcom/waze/main/navigate/NavigationResult$22;

    #getter for: Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult$22;->access$0(Lcom/waze/main/navigate/NavigationResult$22;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v0

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mContext:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$23(Lcom/waze/main/navigate/NavigationResult;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$22$2;->this$1:Lcom/waze/main/navigate/NavigationResult$22;

    #getter for: Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult$22;->access$0(Lcom/waze/main/navigate/NavigationResult$22;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v1

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mFreqFriendsLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$26(Lcom/waze/main/navigate/NavigationResult;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1584
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$22$2;->this$1:Lcom/waze/main/navigate/NavigationResult$22;

    #getter for: Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult$22;->access$0(Lcom/waze/main/navigate/NavigationResult$22;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v2

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mAlreadyShared:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$29(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/main/navigate/NavigationResult$22$2;->this$1:Lcom/waze/main/navigate/NavigationResult$22;

    #getter for: Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v3}, Lcom/waze/main/navigate/NavigationResult$22;->access$0(Lcom/waze/main/navigate/NavigationResult$22;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v3

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mSelected:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/waze/main/navigate/NavigationResult;->access$6(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1583
    invoke-static/range {v0 .. v6}, Lcom/waze/share/ShareUtility;->shareComponentPopulate(Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/waze/share/ShareUtility$IFriendSelected;)V

    .line 1585
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$22$2;->this$1:Lcom/waze/main/navigate/NavigationResult$22;

    #getter for: Lcom/waze/main/navigate/NavigationResult$22;->this$0:Lcom/waze/main/navigate/NavigationResult;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult$22;->access$0(Lcom/waze/main/navigate/NavigationResult$22;)Lcom/waze/main/navigate/NavigationResult;

    move-result-object v0

    #calls: Lcom/waze/main/navigate/NavigationResult;->friendsListInsertAddMore()V
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$30(Lcom/waze/main/navigate/NavigationResult;)V

    .line 1586
    return-void
.end method
