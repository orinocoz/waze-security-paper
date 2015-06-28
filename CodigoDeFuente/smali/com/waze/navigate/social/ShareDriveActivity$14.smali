.class Lcom/waze/navigate/social/ShareDriveActivity$14;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$14;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 459
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$14;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$10(Lcom/waze/navigate/social/ShareDriveActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 460
    .local v0, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 462
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$14;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity$14;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    const v3, 0x7f090685

    invoke-virtual {v2, v3}, Lcom/waze/navigate/social/ShareDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    #setter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocContHeight:I
    invoke-static {v1, v2}, Lcom/waze/navigate/social/ShareDriveActivity;->access$19(Lcom/waze/navigate/social/ShareDriveActivity;I)V

    .line 463
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$14;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mListHeaderMapDetailsView:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$20(Lcom/waze/navigate/social/ShareDriveActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDriveActivity$14;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mLocContHeight:I
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDriveActivity;->access$21(Lcom/waze/navigate/social/ShareDriveActivity;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 465
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$14;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #calls: Lcom/waze/navigate/social/ShareDriveActivity;->onScrollChanged()V
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$16(Lcom/waze/navigate/social/ShareDriveActivity;)V

    .line 466
    return-void
.end method
