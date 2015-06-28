.class Lcom/waze/navigate/social/ShareDrivingFriendsActivity$2;
.super Ljava/lang/Object;
.source "ShareDrivingFriendsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$2;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$2;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$5(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$2;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$5(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    .line 105
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 107
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$2;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$5(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 108
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$2;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;
    invoke-static {v3}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$6(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Lcom/waze/view/title/TitleBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/view/title/TitleBar;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 109
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$2;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$5(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 110
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$2;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$7(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$2;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$5(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 112
    .local v1, obs:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 113
    return-void
.end method
