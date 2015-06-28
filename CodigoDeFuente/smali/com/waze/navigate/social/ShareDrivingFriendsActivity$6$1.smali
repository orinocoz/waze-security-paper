.class Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6$1;
.super Ljava/lang/Object;
.source "ShareDrivingFriendsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->onComplete(Lcom/waze/navigate/social/EndDriveData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6$1;->this$1:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6$1;->this$1:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->access$0(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;)Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6$1;->this$1:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->access$0(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;)Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$5(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    #calls: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->setMapLayoutListener(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$11(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;Landroid/view/View;)V

    .line 290
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6$1;->this$1:Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->this$0:Lcom/waze/navigate/social/ShareDrivingFriendsActivity;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;->access$0(Lcom/waze/navigate/social/ShareDrivingFriendsActivity$6;)Lcom/waze/navigate/social/ShareDrivingFriendsActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/waze/navigate/social/ShareDrivingFriendsActivity;->access$5(Lcom/waze/navigate/social/ShareDrivingFriendsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 291
    .local v0, obs:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 292
    return-void
.end method
