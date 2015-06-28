.class Lcom/waze/navigate/social/ShareDriveActivity$6;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$6;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$6;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$10(Lcom/waze/navigate/social/ShareDriveActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 285
    .local v0, index:I
    if-nez v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$6;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mFriendsListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$10(Lcom/waze/navigate/social/ShareDriveActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x4280

    iget-object v4, p0, Lcom/waze/navigate/social/ShareDriveActivity$6;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mDensity:F
    invoke-static {v4}, Lcom/waze/navigate/social/ShareDriveActivity;->access$11(Lcom/waze/navigate/social/ShareDriveActivity;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$6;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #calls: Lcom/waze/navigate/social/ShareDriveActivity;->openKeyboard()V
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$12(Lcom/waze/navigate/social/ShareDriveActivity;)V

    .line 289
    return-void
.end method
