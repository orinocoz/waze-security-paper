.class Lcom/waze/navigate/social/AddFromActivity$3;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFromActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFromActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFromActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$3;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 216
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 209
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$3;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mFriendsListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/waze/navigate/social/AddFromActivity;->access$5(Lcom/waze/navigate/social/AddFromActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 212
    :cond_0
    return-void
.end method
